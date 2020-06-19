.class public Lorg/appcelerator/titanium/util/TiDownloadManager;
.super Ljava/lang/Object;
.source "TiDownloadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;
    }
.end annotation


# static fields
.field private static final MSG_FIRE_DOWNLOAD_FAILED:I = 0x3e9

.field private static final MSG_FIRE_DOWNLOAD_FINISHED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TiDownloadManager"

.field public static final THREAD_POOL_SIZE:I = 0x2

.field protected static _instance:Lorg/appcelerator/titanium/util/TiDownloadManager;


# instance fields
.field protected downloadingURIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field protected listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/titanium/util/TiDownloadListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->handler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 53
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/appcelerator/titanium/util/TiDownloadManager;->_instance:Lorg/appcelerator/titanium/util/TiDownloadManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/appcelerator/titanium/util/TiDownloadManager;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiDownloadManager;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiDownloadManager;->_instance:Lorg/appcelerator/titanium/util/TiDownloadManager;

    .line 46
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiDownloadManager;->_instance:Lorg/appcelerator/titanium/util/TiDownloadManager;

    return-object v0
.end method

.method private sendMessage(Ljava/net/URI;I)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "what"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method


# virtual methods
.method public download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 57
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager;->fireDownloadFinished(Ljava/net/URI;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiDownloadManager;->startDownload(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_0
.end method

.method protected fireDownloadFailed(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 71
    const/16 v0, 0x3e9

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/util/TiDownloadManager;->sendMessage(Ljava/net/URI;I)V

    .line 72
    return-void
.end method

.method protected fireDownloadFailed(Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Lorg/appcelerator/titanium/util/TiDownloadListener;->downloadFailed()V

    .line 141
    :cond_0
    return-void
.end method

.method protected fireDownloadFinished(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 66
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/util/TiDownloadManager;->sendMessage(Ljava/net/URI;I)V

    .line 67
    return-void
.end method

.method protected fireDownloadFinished(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 131
    if-eqz p2, :cond_0

    .line 132
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/util/TiDownloadListener;->downloadFinished(Ljava/net/URI;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected handleFireDownloadMessage(Ljava/net/URI;I)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "what"    # I

    .prologue
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "hash":Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 114
    .local v2, "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 115
    const/16 v4, 0x3e8

    if-ne p2, v4, :cond_2

    .line 116
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {p0, p1, v4}, Lorg/appcelerator/titanium/util/TiDownloadManager;->fireDownloadFinished(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 117
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    :cond_2
    const/16 v4, 0x3e9

    if-ne p2, v4, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/util/TiDownloadManager;->fireDownloadFailed(Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_1

    .line 123
    .end local v2    # "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 124
    .restart local v2    # "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    .end local v2    # "listener":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 178
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/URI;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lorg/appcelerator/titanium/util/TiDownloadManager;->handleFireDownloadMessage(Ljava/net/URI;I)V

    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/URI;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lorg/appcelerator/titanium/util/TiDownloadManager;->handleFireDownloadMessage(Ljava/net/URI;I)V

    move v0, v1

    .line 182
    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected startDownload(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "hash":Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 86
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    .local v5, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    :try_start_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v5

    .line 93
    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    .restart local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 94
    .local v3, "l":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p2, :cond_0

    .line 95
    monitor-exit v7

    .line 106
    .end local v3    # "l":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    :goto_1
    return-void

    .line 90
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_0

    .line 98
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    monitor-enter v7

    .line 101
    :try_start_3
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 102
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;

    invoke-direct {v8, p0, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;-><init>(Lorg/appcelerator/titanium/util/TiDownloadManager;Ljava/net/URI;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 105
    :cond_3
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 99
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    :goto_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    .restart local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    goto :goto_2
.end method
