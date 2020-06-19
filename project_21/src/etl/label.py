import pandas as pd
from glob import glob
import os.path as osp

def labeling(fp):
    """[labeling the data]

    Args:
        fp ([string]): [file path to store the label]
    """
    POST_SENT = osp.join(fp, 'interim', 'label', 'post','post_sentimental.csv')
    COMMENT_SENT = osp.join(fp, 'interim', 'label', 'comment','*.csv')
    post = pd.read_csv(POST_SENT)
    comment = pd.concat([pd.read_csv(i) for i in glob(COMMENT_SENT)], ignore_index=True)
    non_emptpost = post[post.toxic != -1]
    non_emptcom = comment[comment.toxic != -1]
    emptpost = post[post.toxic == -1]
    comment_grp = non_emptcom.groupby('post_id')['toxic', 'severe_toxic', 'obscene', 'threat',
                                                'insult', 'identity_hate'].mean().reset_index()
    concat = pd.concat([non_emptpost, comment_grp], ignore_index = True)
    res = concat.groupby('post_id')['toxic', 'severe_toxic', 'obscene', 'threat',
                                    'insult', 'identity_hate'].mean().reset_index()
    res = pd.concat([res, emptpost[~emptpost.post_id.isin(res.post_id)]], ignore_index = True)
    res['hate_score'] = res[['toxic', 'severe_toxic', 'obscene', 'threat', 'insult',
                            'identity_hate']].apply(lambda x: x.max(), axis = 1)
    res['label'] = res.hate_score.apply(lambda x: -1 if x == -1 else int(x >= .5))
    res[['post_id', 'label']].to_csv(osp.join(fp, 'interim', 'label', 'label.csv'), index=False)