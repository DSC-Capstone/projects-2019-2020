import pandas as pd
import plotly.graph_objects as go
import os
import re


class Article:
    def __init__(self, title, level, parent=None):
        self.title = title
        self.parent = parent
        self.children = {}
        self.level = level

    def add_child(self, node):
        self.children[node.title] = node

    def get_title(self):
        return self.title

    def get_parent(self):
        return self.parent

    def get_children(self):
        return self.children

    def get_level(self):
        return self.level


def assign_node(row, root, node_map):
    """

    :param row:
    :param root:
    :param node_map:
    :return:
    """
    if not row['Level']:
        node = Article(title=row['Title'], level=row['Level'])
        root.add_child(node)
    else:
        prev_node = node_map[row['Previous_Article']]
        node = Article(title=row['Title'], level=row['Level'],
                       parent=prev_node)
        prev_node.add_child(node)
    node_map[row['Title']] = node
    return


def build_graph(covid_df):
    root = Article(title='root', level=-1)
    node_map = {}
    covid_df.apply(assign_node, axis=1, args=(root, node_map))
    rev_index_map = covid_df['Title'].to_dict()
    index_map = {v: k for k, v in rev_index_map.items()}

    return root, node_map, index_map, rev_index_map


def sum_pageviews(root, pageviews_map, prev_list):
    if root.get_title() not in pageviews_map:
        pageviews_map[root.get_title()] = 0
    if not root.get_children():
        for node in prev_list:
            if node.get_title() not in pageviews_map:
                pageviews_map[node.get_title()] = 0
            pageviews_map[node.get_title()] += pageviews_map[root.get_title()]
    for _, child in root.get_children().items():
        sum_pageviews(child, pageviews_map, prev_list + [root])


def sankey(root, node_map, index_map, rev_index_map, pageview_df, date,
           max_lvl):
    """
    Adapted from https://medium.com/kenlok/e221c1b4d6b0

    :param root:
    :param node_map:
    :param index_map:
    :param pageview_df:
    :param color_palette:
    :return:
    """
    pageviews_map = pageview_df['Count_Pageviews'].to_dict()
    prev_list = []
    for _, child in root.get_children().items():
        sum_pageviews(child, pageviews_map, prev_list)

    label_list = [rev_index_map[i] for i in range(len(rev_index_map))]
    source_list = [index_map[node_map[title].get_parent().get_title()]
                   if node_map[title].get_parent() and pageviews_map[title]
                   else index_map[node_map[title].get_title()]
                   for title in label_list]
    target_list = [index_map[list(node_map[title].get_children()
                                  .values())[-1].get_title()]
                   if node_map[title].get_children()
                   else index_map[node_map[title].get_title()]
                   for title in label_list]
    value_list = [pageviews_map[title]
                  if node_map[title].get_level() <= max_lvl
                  else 0
                  for title in label_list]

    year, month, day = date[:4], date[4:6], date[6:]


    # creating the sankey diagram
    data = dict(
        type='sankey',
        node=dict(
          pad=15,
          thickness=20,
          line=dict(
            width=0.5
          ),
          label=label_list,
        ),
        link = dict(
          source=source_list,
          target=target_list,
          value=value_list,
          label=label_list
        )
      )

    layout =  dict(
        title='Pageview-{}-{}-{}'.format(year, month, day)
    )

    fig = dict(data=[data], layout=layout)
    return fig


def create_sankey_figure(data_dir, covid_fp, max_lvl=1, pageview_date=None,
                         pageview_fp=None):
    if pageview_date and\
            not re.compile('\d{4}-\d{2}-\d{2}').match(pageview_date):
        print('Pageview date should be in the format YYYY-MM-DD')
        return
    covid_df = pd.read_csv(data_dir + 'out/' + covid_fp)
    covid_df = covid_df[~covid_df['Title'].str.contains('emplate')]
    covid_df = covid_df[~covid_df['Previous_Article'].fillna('')
                        .str.contains('emplate')].reset_index()
    if pageview_date:
        date = pageview_date.replace('-', '')
        pageview_df = pd.DataFrame()
        for pageview_fp in os.listdir(data_dir + 'out/pageview/'):
            if date in pageview_fp:
                curr_pageview_df = pd.read_csv(data_dir + 'out/pageview/' +
                                               pageview_fp,
                                               index_col='Title')\
                    .groupby('Title').sum()
                pageview_df = (curr_pageview_df + pageview_df)\
                    .fillna(curr_pageview_df).fillna(pageview_df)
    else:
        pageview_df = pd.read_csv(data_dir + 'out/pageview/' + pageview_fp,
                                  index_col='Title').groupby('Title').sum()
        pageview_df = pageview_df[pageview_df.index.isin(set(covid_df.Title))]
        date = pageview_fp.split('-')[1]
    root, node_map, index_map, rev_index_map = build_graph(covid_df)
    fig = sankey(root, node_map, index_map, rev_index_map, pageview_df,
                 date, max_lvl=max_lvl)
    fig = go.Figure(**fig)
    return fig
