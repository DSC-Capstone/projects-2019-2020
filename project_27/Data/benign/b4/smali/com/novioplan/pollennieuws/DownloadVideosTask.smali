.class public Lcom/novioplan/pollennieuws/DownloadVideosTask;
.super Landroid/os/AsyncTask;
.source "DownloadVideosTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/novioplan/pollennieuws/PollennieuwsApplication;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "DownloadVideosTask"

    sput-object v0, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/DownloadVideosTask;->doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;
    .locals 22
    .param p1, "params"    # [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .prologue
    .line 54
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    const-string v20, "doInBackground"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v19, 0x0

    aget-object v19, p1, v19

    sput-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 57
    const-string v13, "0"

    .line 59
    .local v13, "results":Ljava/lang/String;
    :try_start_0
    sget-object v19, Lcom/novioplan/pollennieuws/data/Constants;->VIDEO_LIST_URL:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, "responseStr":Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 62
    invoke-static {v11}, Lcom/novioplan/pollennieuws/http/GetVideosXMLSaxParser;->getParsedXmlResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 64
    .local v18, "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-nez v18, :cond_0

    .line 65
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    const-string v20, "!!!!!!!!!!No videos found!!!!!!!!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v18    # "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :goto_0
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->lastVideosListLoad:J

    move-object/from16 v19, v13

    .line 116
    .end local v11    # "responseStr":Ljava/lang/String;
    :goto_1
    return-object v19

    .line 68
    .restart local v11    # "responseStr":Ljava/lang/String;
    .restart local v18    # "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_0
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v9, "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v9    # "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 74
    new-instance v17, Lcom/novioplan/pollennieuws/data/VideoData;

    invoke-direct/range {v17 .. v17}, Lcom/novioplan/pollennieuws/data/VideoData;-><init>()V

    .line 75
    .local v17, "video":Lcom/novioplan/pollennieuws/data/VideoData;
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 76
    .local v12, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got resultList: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 78
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 79
    .local v10, "nameValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got nameValuePair: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 81
    .local v15, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 82
    .local v14, "s":Ljava/lang/String;
    move-object v8, v14

    .line 83
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 84
    .local v16, "value":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v19, "VideoTitle"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 85
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got key/value: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoData;->setVideoTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 110
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "j":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    .end local v10    # "nameValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "responseStr":Ljava/lang/String;
    .end local v12    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "s":Ljava/lang/String;
    .end local v15    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "video":Lcom/novioplan/pollennieuws/data/VideoData;
    .end local v18    # "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v19, "0"

    goto/16 :goto_1

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "j":I
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    .restart local v10    # "nameValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "responseStr":Ljava/lang/String;
    .restart local v12    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v14    # "s":Ljava/lang/String;
    .restart local v15    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "value":Ljava/lang/String;
    .restart local v17    # "video":Lcom/novioplan/pollennieuws/data/VideoData;
    .restart local v18    # "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_2
    if-eqz v8, :cond_3

    :try_start_2
    const-string v19, "VideoSubtitle"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 88
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got key/value: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoData;->setVideoSubTitle(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 90
    :cond_3
    if-eqz v8, :cond_4

    const-string v19, "VideoURL"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 91
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got key/value: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoData;->setVideoURL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 93
    :cond_4
    if-eqz v8, :cond_1

    const-string v19, "VideoThumbURL"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 94
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got key/value: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/novioplan/pollennieuws/data/VideoData;->setThumbURL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 77
    .end local v8    # "key":Ljava/lang/String;
    .end local v14    # "s":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 101
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "nameValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 103
    .end local v7    # "j":I
    .end local v12    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17    # "video":Lcom/novioplan/pollennieuws/data/VideoData;
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 104
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    check-cast v9, Ljava/util/ArrayList;

    .end local v9    # "movieList":Ljava/util/List;, "Ljava/util/List<Lcom/novioplan/pollennieuws/data/VideoData;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->setMovieList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 108
    .end local v5    # "i":I
    .end local v18    # "videoResults":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_8
    sget-object v19, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    const-string v20, "request response is null!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method protected varargs fetchJSONStringsFromServer([Lcom/novioplan/pollennieuws/PollennieuwsApplication;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .prologue
    .line 33
    sget-object v4, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    const-string v5, "doInBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v4, 0x0

    aget-object v4, p1, v4

    sput-object v4, Lcom/novioplan/pollennieuws/DownloadVideosTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    .line 36
    const-string v3, "0"

    .line 38
    .local v3, "results":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "postFormater":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "dateText":Ljava/lang/String;
    sget-object v4, Lcom/novioplan/pollennieuws/DownloadVideosTask;->app:Lcom/novioplan/pollennieuws/PollennieuwsApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/novioplan/pollennieuws/data/Constants;->COUNTRY_DATA_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/novioplan/pollennieuws/http/HttpClientManager;->httpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/novioplan/pollennieuws/PollennieuwsApplication;->countryJSONstring:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "dateText":Ljava/lang/String;
    .end local v2    # "postFormater":Ljava/text/SimpleDateFormat;
    .end local v3    # "results":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 42
    .restart local v3    # "results":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v3, "0"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/novioplan/pollennieuws/DownloadVideosTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/novioplan/pollennieuws/DownloadVideosTask;->tag:Ljava/lang/String;

    const-string v1, "completing background task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
