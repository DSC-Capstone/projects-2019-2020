import preprocess as pp
import similarity as sim
a = pp.process('def a():\n\treturn b()')
b = pp.process('def a():\n\treturn b(1)')
print(sim.process(a, b))
