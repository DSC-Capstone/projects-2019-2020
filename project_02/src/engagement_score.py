import sqlite3
import pandas as pd
from datetime import datetime
from mwviews.api import PageviewsClient
import seaborn as sns
import matplotlib.pyplot as plt
import sys
import os
import numpy as np

def create_wiki_graph(lightdump_file, article_title, outdir):
    """Create a graph from lightdump of Bytes over time

    Keyword arguments:
    lightdump_file -- location of lightdump.txt file
    article_title -- title of the article
    outdir -- directory to save figure
    """
    timestamps = []
    byte_size = []
    revision_count = 0
    num_reverts = 0
    unique_authors = set()
    start = False

    with open(lightdump_file) as lightdump:
        for line in lightdump:
            temp_line = line.strip().split(" ")

            if start and len(temp_line) == 1:
                start = False
                print("Finished Lightdump Parse => num revisions: " + str(revision_count))
                break

            if start:
                timestamps.append(datetime.strptime(temp_line[0][4:], '%Y-%m-%dT%H:%M:%SZ'))
                byte_size.append(int(temp_line[3]))
                revision_count += 1
                num_reverts += int(temp_line[1])
                unique_authors.add(temp_line[4])

            if not start and temp_line[0] == article_title:
                start = True
                print("Starting Lightdump Parse for: " + article_title)
    
    #create dataframe from collected data then plot it
    anarchism = pd.DataFrame({"timestamp": timestamps[::-1], "byte size": byte_size[::-1]})

    anarchism_plot = sns.lineplot(x='timestamp', y='byte size', data=anarchism)

    if not os.path.exists(outdir):
        os.makedirs(outdir, exist_ok=True)
                
    plt.title(article_title + " Page Byte Size Over Time")
        
    fig = anarchism_plot.get_figure()
    fig.savefig(outdir + '/' + article_title + '.png')
    print("Saving plot to \"" + outdir + '/' + article_title + '.png\"')

    plt.show()
    return (fig)

def lightdump_to_db(lightdump_file, outfile, num_articles):
    """Convert Lightdump to DB file averaging across Months

    Keyword arguments:
    lightdump_file -- location of lightdump.txt file
    outfile -- location of output DB file
    num_articles -- number of articles to process from lightdump
    """
    timestamps = []
    byte_size = []
    revision_count = 0
    unique_authors = set()
    start = False
    editor = []
    article_titles = []
    article_count = 0
    
    if os.path.exists(outfile):
        print("DB File already exists")
        return
    
    # Connect to SQL Table
    conn = sqlite3.connect(outfile)
    c = conn.cursor()
    
    df = pd.DataFrame(columns=['timestamp', 'avg_byte_size', 'num_editor', 'nunique_editors', 'article_title'])
    df.to_sql('ARTICLES', conn, if_exists='replace', index=False)

    with open(lightdump_file) as lightdump:
        for line in lightdump:
            temp_line = line.strip().split(" ")

            if start and len(temp_line) == 5 and temp_line[2] == '1':
                start = False
                article = pd.DataFrame({"article": article_title, 
                                        "timestamp": timestamps[::-1], 
                                        "byte_size": byte_size[::-1], 
                                        "editor": editor[::-1]})
                article.index = article['timestamp']
                
                if len(article) == 0:
                    timestamps = []
                    byte_size = []
                    editor = []
                    revision_count = 0
                    start = True
                    article_title = temp_line[0]
                    continue
                grouped_article = article.groupby(pd.Grouper(freq='M')).agg({'byte_size' : np.mean, 
                                                                             'editor' :['count', 'nunique']})
                
                grouped_article['article_title'] = [article_title for x in range(len(grouped_article))]
                grouped_article.columns = ['avg_byte_size', 'num_editor', 'nunique_editors', 'article_title']
                grouped_article['timestamp'] = grouped_article.index
                
                # Write to SQL Table
                grouped_article.to_sql('ARTICLES', conn, if_exists='append', index=False)
                
                if (article_count+1) % 100 == 0:
                    print(str(article_count+1) + ": FINISHED LIGHTDUMP PARSE FOR:   " + 
                      str(article_title) + "\t\t NUM REVISIONS: " + str(revision_count))
                revision_count = 0
                article_count += 1
                timestamps = []
                byte_size = []
                editor = []
                
                if article_count > num_articles:
                    break

            if start:
                timestamps.append(datetime.strptime(temp_line[0][4:], '%Y-%m-%dT%H:%M:%SZ'))
                byte_size.append(int(temp_line[3]))
                revision_count += 1
                editor.append(temp_line[4])
                article_titles.append(article_title)

            if not start and len(temp_line) == 1:
                start = True
                article_title = temp_line[0]
    
    print("Exporting to DB File")
    conn.commit()


def selectArticlesDB(dbfile, article_titles):
    """Select Articles from DB File

    Keyword arguments:
    dbfile -- location of db file
    article_titles -- list of articles in query
    """
    conn = sqlite3.connect(dbfile)
    c = conn.cursor()
    sql_query = "SELECT * FROM ARTICLES"
    
    for i in range(len(article_titles)):
        if i == 0:
            sql_query += " WHERE "
        else:
            sql_query += " OR "
        sql_query += "article_title=\"" + article_titles[i] + "\""
        
    print(sql_query)
    
    c.execute(sql_query)
    
    df = pd.DataFrame(c.fetchall(), columns=['timestamp', 'avg_bytes', 'edits', 'nunique_editors', 'article_title'])    
    df['edits'] = [int(x) for x in df['edits']]
    df['avg_bytes'] = [0 if x is None else float(x) for x in df['avg_bytes']]
    df['nunique_editors'] = [int(x) for x in df['nunique_editors']]
    df["timestamp"] = pd.to_datetime(df["timestamp"])
    return df

def editor_engagement_score(df, outfile):
    """Calculate the Editor Engagement Scores for the Entire DF

    Keyword arguments:
    df -- df containing metrics and article metadata
    outfile -- outfile of csv for editor scores
    """
    names = list(df['article_title'].unique())
    editor_scores = []
    temp_df = df
    
    #Diff between num edits per month
    diff_edits = [df['edits'][x] - df['edits'][x-1] for x in range(1, len(df))] 
    diff_edits.insert(0,0)
    temp_df['diff_edits'] = diff_edits
    
    # diff between num unique editors per month
    diff_nunique = [df['nunique_editors'][x] - df['nunique_editors'][x-1] for x in range(1, len(df))] 
    diff_nunique.insert(0, 0)
    temp_df['diff_nunique'] = diff_nunique

    outdf = pd.DataFrame(columns=['article_title', 'timestamp', 'editor_score'])

    for i in range(len(names)):
        if (i+1) % 100 == 0:
            print(str(i+1) + "/" + str(len(names)))
        current_edits = df[df['article_title'] == names[i]]['diff_edits']
        current_nunique = df[df['article_title'] == names[i]]['diff_nunique']
        
        std_diff_edits = (current_edits - np.mean(current_edits)) / np.std(current_edits)
        std_diff_nunique = (current_nunique - np.mean(current_nunique)) / np.std(current_nunique)
        
        editor_score = std_diff_edits * std_diff_nunique
        
        article_df = pd.DataFrame({"article_title":[names[i] for _ in range(len(editor_score))], 
                                   "timestamp": df[df['article_title'] == names[i]]['timestamp'], 
                                   "editor_score": editor_score,
                                   "std_diff_nunique": std_diff_nunique,
                                   "std_diff_edits": std_diff_edits})
        
        outdf = pd.concat([outdf, article_df])

    outdf.to_csv(outfile, mode='w', index=False)
    outdf = outdf.reset_index()
    print("Finished Calculating Editor Scores for {} articles".format(outdf['article_title'].nunique()))
    
    return outdf

def joint_engagement(content_scores, editor_scores, outfile):
    """ Calculate the Joint Engagement Score
    
    Using content score and editor score, multiply and return DF
    Also write to CSV outfile
    
    Keyword arguments:
    content_scores -- content scores dataframe with article titles and timestamps
    editor_scores -- editor scores dataframe with article titles and timestamp
    outfile -- outfile for csv
    """
    joint_df = pd.DataFrame(columns=['article_title', 'timestamp', 'editor_score', 'content_score', 'engagement_score'])
    articles = list( set(content_scores['article_title']).intersection( set(editor_scores['article_title']))) 
    
    for i in range(len(articles)):
#         print(str(i) + ": " + articles[i])
        article_title = articles[i]
        temp_df = editor_scores[(editor_scores['timestamp'] > '2015-08-01') 
                                & (editor_scores['article_title'] == article_title)]
        
        editor_engagement = list(temp_df['editor_score'])
        timestamps = list(temp_df['timestamp'])
        
        content_engagement = list(content_scores[content_scores['article_title'] == article_title]['content_engagement'])
        
        joint_score = [editor_engagement[i] * content_engagement[i] for i in range(len(editor_engagement))]
    
        article_df = pd.DataFrame({"article_title": temp_df['article_title'], 
                               "timestamp": timestamps,
                               "editor_score": editor_engagement, 
                               "content_score": content_engagement, 
                               "engagement_score": joint_score})
        
        joint_df = pd.concat([joint_df, article_df])
    joint_df.to_csv(outfile, mode='w', index=False)
    print("Finished Calculating Joint Engagement Scores for {} articles".format(len(articles)))
    joint_df = joint_df.reset_index()
    return joint_df

#kenny's functions

def get_page_views(article_names, output_path):
    """Query the Wikipedia page views api for the relevant pages

    Keyword arguments:
    article_names -- array of article names to query
    output_path -- output path for the csv file output
    """
    p = PageviewsClient(user_agent="kez070@ucsd.edu Selfie, Cat, and Dog analysis")
            
    values = p.article_views('en.wikipedia',article_names, granularity='monthly', start='20150101', end='20200401')
    all_keys = list(values.keys())
    all_keys.sort()
    val_dict = []
    for x in article_names:
        for key in all_keys:
            val_dict.append({"article_title":x,"timestamp":key, "views":values[key][x]})
    df = pd.DataFrame(val_dict)
    df = df.fillna(0)
    
    print("Writing Page View Data to -- " + output_path + " -- for " + str(len(df.article_title.unique())) + " articles")
    
    df.to_csv(output_path, mode='w', index=False)
    
    return df
    
def content_engagement_score(page_views_path, page_sizedb_path, output_path):
    """Calculate the content engagement score

    Keyword arguments:
    page_views_path -- path that contains the csv with page views data
    page_sizedb_path -- path for db file that contains page size data
    output_path -- output path for the csv file output
    """

    pd.set_option('mode.chained_assignment', None)

    df = pd.read_csv(page_views_path)
    df['timestamp'] = pd.to_datetime(df['timestamp'])
    view_df = df[df['timestamp']> datetime(2015, 6, 17)]

    con = sqlite3.connect(page_sizedb_path)
    size_df = pd.read_sql_query("SELECT * from ARTICLES", con)

    #getting rid of nones in the avg size columns for months without edits
    size_df = size_df.fillna(method='ffill')
    size_df['timestamp'] = pd.to_datetime(size_df['timestamp'])
    size_df = size_df[size_df['timestamp'] > datetime(2015, 7, 17)]
    size_df['timestamp'] = size_df.timestamp.apply(lambda x:x.replace(day=1))
    size_df['avg_byte_size'] = pd.to_numeric(size_df['avg_byte_size'])

    unique_size_names = size_df['article_title'].unique()

    times = pd.date_range(start='7/1/2015', end='04/01/2020',freq='MS')
    names = list(unique_size_names)
    scores = []
    
    for i in range(len(names)):
        current_name = names[i]
        if (i+1) % 100 == 0:
            print(str(i+1) + "/" + str(len(names)))
        current_size = size_df[size_df['article_title'] == current_name]
        current_views = view_df[view_df['article_title'] == current_name]

        current_size['avg_byte_size'] = (current_size['avg_byte_size']-
                                         current_size['avg_byte_size'].mean()) / current_size['avg_byte_size'].std()
        current_views['views'] = current_views['views'].transform(lambda x: (x - x.mean()) / x.std())

        try:
            for x in range(1,len(times)):
                cur_size = current_size[current_size['timestamp']==times[x]]
                prev_size = current_size[current_size['timestamp']==times[x-1]]

                cur_view = current_views[current_views['timestamp'] == times[x]]
                pre_view = current_views[current_views['timestamp']==times[x-1]]

                score = abs(cur_size.avg_byte_size.values[0] - prev_size.avg_byte_size.values[0]) *(cur_view.views.values[0]-pre_view.views.values[0])
                scores.append((current_name,times[x],score))

        except:
            continue


#     print("Writing Content Engagement Score to -- " + output_path)

    df = pd.DataFrame(scores, columns =['article_title', 'timestamp', 'content_engagement']) 
    df.to_csv(output_path, mode='w', index=False)
    df = df.reset_index()
    
    return df
    