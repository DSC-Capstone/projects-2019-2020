# import praw as pr
import pandas as pd
from src import *
import json
import requests
import pandas as pd
import os
from os.path import join
from tqdm import tqdm
import time
from joblib import Parallel, delayed
from p_tqdm import p_umap
from glob import glob
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
API = 'https://api.pushshift.io/'
COMMENT = join(API, 'reddit/search/comment/')
SUBMISSION = join(API, 'reddit/search/submission/')
SUBMISSION_DETAIL = join(API, 'reddit/submission/comment_ids/')
POST_DIR = 'raw/posts'
POST_DETAIL_DIR = 'raw/posts_detail'
COMMENT_DIR = 'raw/comments'
def fetch_post(subreddit, sort_type, sort, size, before, meta):
    """[fetch posts]

    Args:
        subreddit ([string]): [the subreddit of the post to be fetched; i.e. 'politics']
        sort_type ([string]): [the catogory to be sorted; i.e. 'time']
        sort ([string]): ['asc': ascending; 'dsc': descending]
        size ([int]): [number of post to be fetched]
        before ([int]): [unix utc 10 digits timestamp]
        meta ([list]): [meta to be fetched]
    """
    params = '?' + 'subreddit=' + subreddit + \
            '&' + 'sort_type=' + sort_type + \
            '&' + 'sort=' + sort + \
            '&' + 'size=' + size + \
            '&' + 'before=' + before
    r = requests.get(join(SUBMISSION, params), verify=False)
    attemps = 0
    if r.status_code == 200:
        try:
            data = pd.DataFrame(r.json()['data'])[meta]
            return data, str(data.created_utc.min())
        except KeyError:
            data = pd.DataFrame(r.json()['data'])
            return data, False
    elif r.status_code == 403:
        while r.status_code == 403 & attemps < 5:
            attemps += 1
            time.sleep(3 * attemps)
            r = requests.get(join(SUBMISSION, params), verify=False)
        try:
            data = pd.DataFrame(r.json()['data'])[meta]
            return data, str(data.created_utc.min())
        except KeyError:
            try:
                data = pd.DataFrame(r.json()['data'])
                return data, False
            except:
                return None
    else:
        time.sleep(5)
        r = requests.get(join(SUBMISSION, params), verify=False)
        if r.status_code == 200:
            try:
                data = pd.DataFrame(r.json()['data'])[meta]
                return data, str(data.created_utc.min())
            except KeyError:
                data = pd.DataFrame(r.json()['data'])
                return data, False
        else:
            return None
def fetch_posts(subreddit, total, meta, filepath, sort_type, sort, size, start):
    """[fetch subreddits posts]

    Args:
        subreddit ([list]): [the list of subreddits of the post to be fetched; i.e. ['politics']]
        total ([int]): [the number of total subreddits to be fetched]
        filepath ([string]): [the filepath to store the data]
        sort_type ([string]): [the catogory to be sorted; i.e. 'time']
        sort ([string]): ['asc': ascending; 'dsc': descending]
        size ([int]): [number of post to be fetched]
        before ([int]): [unix utc 10 digits timestamp]
        meta ([list]): [meta to be fetched]

    Returns:
        [dict]: [the log of posts fetching process]
    """
    num_epoch = -(-int(total) // int(size))
    start_time = start
    for i in range(num_epoch):
        last_time = start_time
        try:
            process, start_time = fetch_post(subreddit, sort_type, sort, size, start_time, meta)
        except TypeError:
            return {'subreddit': subreddit, 'result': 'unsuccess', 'status': i, 'last_time': last_time}
        if start_time != False:
            if not os.path.exists(join(filepath, POST_DIR, subreddit+'.csv')):
                process.to_csv(join(filepath, POST_DIR, subreddit+'.csv'), index = False)
            else:
                process.to_csv(join(filepath, POST_DIR, subreddit+'.csv'), index = False, mode='a', header = False)
        else:
            process.to_csv(join(filepath, POST_DIR, subreddit+'_failed.csv'), index = False)
            return {'subreddit': subreddit, 'result': 'unsuccess', 'status': i, 'last_time': last_time}
        time.sleep(.5)
    return {'subreddit': subreddit,'result': 'success', 'status': num_epoch, 'last_time': last_time}
def fetch_submissions(**kwargs):
    """[function to fetch submissions]

    Returns:
        [dict]: [the log of submission fetching process]
    """
    post_args, meta_args = kwargs['POST_ARGS'], kwargs['META_ARGS']
    filepath, total, meta, subreddits = meta_args['filepath'], meta_args['total'], \
                                        meta_args['meta'], meta_args['subreddits']
    sort_type, sort, size, start = post_args['sort_type'], post_args['sort'], post_args['size'], post_args['start']
    if os.path.exists(os.path.join(filepath, 'raw', 'posts', 'log.json')):
        return json.load(open(os.path.join(filepath, 'raw', 'posts', 'log.json')))
    else:
        tolist = lambda x: [x for _ in range(len(subreddits))]
        res = p_umap(fetch_posts, subreddits, tolist(total), tolist(meta), tolist(filepath), tolist(sort_type), tolist(sort), tolist(size), tolist(start), num_cpus = NUM_WORKER)
        with open(os.path.join(filepath, 'raw', 'posts', 'log.json'), 'w') as fp:
                json.dump(res, fp)
        return res

def submission_detail(i):
    """[function to fetch submission's comments detail]

    Args:
        i ([string]): [subreddit name]

    Returns:
        [dict]: [log of the detail fetching process]
    """
    r = requests.get(join(SUBMISSION_DETAIL, i), verify=False)
    attemps = 0
    if r.status_code == 200:
        return {'submission_id': i, 'comment_ids': r.json()['data']}
    elif r.status_code == 403:
        while r.status_code == 403 & attemps < 5:
            attemps += 1
            time.sleep(3 * attemps)
            r = requests.get(join(SUBMISSION_DETAIL, i), verify=False)
        try: 
            return {'submission_id': i, 'comment_ids': r.json()['data']}
        except:
            return {'submission_id': i, 'comment_ids': []}
    else:
        time.sleep(5)
        r = requests.get(join(SUBMISSION_DETAIL, i), verify=False)
        if r.status_code == 200:
            return {'submission_id': i, 'comment_ids': r.json()['data']}
        else:
            return {'submission_id': i, 'comment_ids': []}
def submissions_detail(filepath):
    """[function to fetch submissions' comments detail]

    Args:
        filepath ([string]): [filepath to store the data]
    """
    subreddits_fp = glob(join(filepath, POST_DIR, '*.csv'))
    subreddits = [i.split('/')[-1][:-4] for i in subreddits_fp]
    n, N = 1, len(subreddits)
    for subreddit, fp in zip(subreddits,subreddits_fp):
        print('fetching {0} subreddit details, Progress: {1}/{2}'.format(subreddit, str(n), str(N)))
        if os.path.exists(join(filepath, POST_DETAIL_DIR, subreddit+'.json')):
            n += 1
            continue
        else:
            ids = pd.read_csv(fp).id.tolist()
            rest = p_umap(submission_detail, ids, num_cpus = NUM_WORKER)
            with open(join(filepath, POST_DETAIL_DIR, subreddit+'.json'), 'w') as f:
                json.dump(rest, f)
            n += 1
def comment_detail(i, filepath, subreddit):
    """[function to fetch the detail of comments]

    Args:
        i ([string]): [comment id]
        filepath ([string]): [file path of submissions detail]
        subreddit ([string]): [subreddit]

    Returns:
        [dict]: [log of the comment detail fetching process]
    """
    if os.path.exists(join(filepath, COMMENT_DIR, subreddit + '.csv')):
        return {'subreddit': subreddit, 'result': 'success'}
    df = pd.DataFrame(json.load(open(i)))
    lst = df.comment_ids.explode().dropna().unique().tolist()
    lst = [lst[i: i+100] for i in range(0, len(lst), 100)]
    res = []
    for i in lst:
        attemps = 0
        phrase = ','.join(i)
        r = requests.get(join(COMMENT, '?ids='+phrase), verify=False)
        if r.status_code == 200:
            try:
                res.append(pd.DataFrame(r.json()['data'])[['id', 'author', 'created_utc', \
                                    'is_submitter', 'subreddit', 'link_id', 'body', 'parent_id', 'send_replies']])
            except KeyError:
                continue
        elif r.status_code == 403:
            while r.status_code == 403 & attemps < 5:
                attemps += 1
                time.sleep(3 * attemps)
                r = requests.get(join(COMMENT, '?ids='+phrase), verify=False)
            if r.status_code == 200:
                try:
                    res.append(pd.DataFrame(r.json()['data'])[['id', 'author', 'created_utc', \
                                    'is_submitter', 'subreddit', 'link_id', 'body', 'parent_id', 'send_replies']])
                except KeyError:
                    continue
            else:
                continue
        else:
            time.sleep(5)
            r = requests.get(join(COMMENT, '?ids='+phrase), verify=False)
            if r.status_code == 200:
                try:
                    res.append(pd.DataFrame(r.json()['data'])[['id', 'author', 'created_utc', \
                                    'is_submitter', 'subreddit', 'link_id', 'body', 'parent_id', 'send_replies']])
                except KeyError:
                    continue
            else:
                continue
    if len(res) == 0:
        return {'subreddit': subreddit, 'result': 'unsuccess'}
    else:
        pd.concat(res, ignore_index = True).to_csv(join(filepath, COMMENT_DIR, subreddit + '.csv'), index = False)
        return {'subreddit': subreddit, 'result': 'success'}
def comments_detail(filepath):
    """[function to fetch comments detail]

    Args:
        filepath ([string]): [filepath to store the data]
    """
    subreddit_fp = glob(join(filepath, POST_DETAIL_DIR, '*.json'))
    subreddits = [i.split('/')[-1][:-5] for i in subreddit_fp]
    tolist = lambda x: [x for _ in range(len(subreddits))]
    rest = p_umap(comment_detail, subreddit_fp, tolist(filepath), subreddits, num_cpus = NUM_WORKER)
    with open(join(filepath, COMMENT_DIR, 'log.json'), 'w') as fp:
        json.dump(rest, fp)