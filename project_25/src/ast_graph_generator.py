from tokenize import tokenize, NAME, OP, INDENT, DEDENT, NEWLINE
from io import BytesIO
from collections import defaultdict
import ast

def generate_list_first_method(program):
    with open(program, 'r') as file:
        tokens = list(tokenize(BytesIO(file.read().encode('utf-8')).readline))

        recording = False
        method_name = None
        reached_arg_start = False
        reached_arg_end = False
        seen_method_colon = False
        seen_method_indent = False
        prevent_new_last_line = False
        seen_indents = 0
        last_line = 0
        current_line = 0

        args = defaultdict(set)
        commands = []
        for type, str, _, _, line in tokens:
            current_line = _[0]
            if type == NEWLINE:
                continue

            if not recording:
                if type == NAME and str == 'def':
                    recording = True
            else:
                if method_name is None:
                    if type == NAME:
                        method_name = str
                    else:
                        raise Exception('Malformed code')
                else:
                    # start reading arguments until OP str=':'
                    if not reached_arg_start and type == OP and str == '(':
                        reached_arg_start = True
                    elif reached_arg_start and not reached_arg_end and type == NAME:
                        args[method_name].add(str)
                    elif type == OP and str == ')':
                        reached_arg_end = True
                    else:
                        # in method body, seek until indent
                        if seen_method_colon:
                            if not seen_method_indent:
                                if type == INDENT:
                                    seen_method_indent = True
                                    seen_indents += 1
                                    prevent_new_last_line = True
                                else:
                                    raise Exception('Malformed code')
                            else:
                                if seen_indents == 0:
                                    break
                                else:
                                    if type == DEDENT:
                                        seen_indents -= 1
                                    else:
                                        if current_line != last_line:
                                            commands.append((line, seen_indents))
                        else:
                            if type == OP and str == ':':
                                seen_method_colon = True
                            else:
                                raise Exception('Malformed code')

            if not prevent_new_last_line:
                last_line = current_line
            else:
                prevent_new_last_line = False

        return method_name, args, commands

class AstGraphGenerator(object):
    """
    Can override a visit function by defining the corresponding visit class name as an attribute (e.g. generator.visit_Call)

    >>> test = AstGraphGenerator('plus.py')
    >>> test.generate_graph()
    >>> test.graph
    # outputs dictionary here with AST
    """
    def __init__(self, source):
        self.graph = defaultdict(list)
        with open(source) as f:
            self.source = f.read().split('\n')

    def __str__(self):
        return str(self.graph)

    def _getid(self, node):
        try:
            lineno = node.lineno - 1
            return (type(node).__name__, self.source[lineno].strip())

        except AttributeError:
            return type(node).__name__

    def generate_graph(self):
        tree = ast.parse('\n'.join(self.source))
        method = 'visit_' + tree.__class__.__name__
        visitor = getattr(self, method, self.generic_visit)
        return visitor(tree)

    def visit(self, node):
        """Visit a node."""
        method = 'visit_' + node.__class__.__name__
        visitor = getattr(self, method, self.generic_visit)
        return visitor(node)

    def generic_visit(self, node):
        for _, value in ast.iter_fields(node):
            if isinstance(value, list):
                for item in value:
                    if isinstance(item, ast.AST):
                        self.visit(item)

            elif isinstance(value, ast.AST):
                node_source = self._getid(node)
                value_source = self._getid(value)
                self.graph[node_source].append(value_source)
                # self.graph[type(node)].append(type(value))
                self.visit(value)

def generate_ast_graph(f):
    """
    use python ast module to parse ast
    """
    contents = f.read()
    tree = ast.parse(contents)
    return ast_to_dict(tree)

def ast_to_dict(node):
    """
    convert ast result to dict
    """
    fields = {}
    for k in node._fields:
        v = getattr(node, k)
        if isinstance(v, ast.AST):
            if v._fields:
                fields[k] = ast_to_dict(v)
            else:
                fields[k] = v.__class__.__name__
        elif isinstance(v, list):
            fields[k] = []
            for e in v:
                fields[k].append(ast_to_dict(e))
        elif isinstance(v, str) or isinstance(v, int) or isinstance(v, float):
            fields[k] = v
        else:
            fields[k] = None

    return { node.__class__.__name__: fields }

def process_import_statements(graph):
  """
  extract import statements
  """
    # bfs through graph
    queue = graph['Module']['body'][:]
    imports = {}
    while len(queue):
        polled = queue.pop(0)

        if 'Import' in polled.keys():
            for name in polled['Import']['names']:
                imports[name['alias']['asname']] = name['alias']['name']

        queue.extend([polled[key] for key in polled.keys() if isinstance(polled[key], dict)])
        for key in polled.keys():
            if isinstance(polled[key], list):
                queue.extend(polled[key])

    queue = graph['Module']['body'][:]
    while len(queue):
        polled = queue.pop(0)

        for key in polled.keys():
            if isinstance(polled[key], str) and polled[key] in imports.keys():
                polled[key] = imports[polled[key]]

        queue.extend([polled[key] for key in polled.keys() if isinstance(polled[key], dict)])
        for key in polled.keys():
            if isinstance(polled[key], list):
                queue.extend(polled[key])

    return imports, graph

def process_functions(graph):
  """
  unchain API
  """
    queue = graph['Module']['body'][:]
    functions = {}
    # use a stack to separate API from bottom
    while len(queue):
        polled = queue.pop(0)

        if 'FunctionDef' in polled.keys():
            functions[polled['FunctionDef']['name']] = {
                'args': [x['arg']['arg'] for x in polled['FunctionDef']['args']['arguments']['args']],
                # 'statements': polled['FunctionDef']['body'],
                'function_calls': set()
            }

            inner_queue = polled['FunctionDef']['body'][:]

            while len(inner_queue):
                inner_polled = inner_queue.pop(0)
                # separate "Call"
                if 'Call' in inner_polled.keys():
                    if 'Name' in inner_polled['Call']['func']:
                        functions[polled['FunctionDef']['name']]['function_calls'].add((inner_polled['Call']['func']['Name']['id'],))
                    elif 'Attribute' in inner_polled['Call']['func']:
                        full_call = [inner_polled['Call']['func']['Attribute']['attr']]
                        current_node = inner_polled['Call']['func']['Attribute']['value']

                        while 'Attribute' in current_node:
                            full_call = [current_node['Attribute']['attr']] + full_call
                            current_node = current_node['Attribute']['value']

                        if 'Name' in current_node:
                            full_call = [current_node['Name']['id']] + full_call

                        functions[polled['FunctionDef']['name']]['function_calls'].add(tuple(full_call))

                inner_queue.extend([inner_polled[key] for key in inner_polled.keys() if isinstance(inner_polled[key], dict)])
                for key in inner_polled.keys():
                    if isinstance(inner_polled[key], list):
                        inner_queue.extend(inner_polled[key])

        queue.extend([polled[key] for key in polled.keys() if isinstance(polled[key], dict)])
        for key in polled.keys():
            if isinstance(polled[key], list):
                queue.extend(polled[key])

    return functions
