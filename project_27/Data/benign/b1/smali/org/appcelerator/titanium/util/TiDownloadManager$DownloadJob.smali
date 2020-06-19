.class public Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;
.super Ljava/lang/Object;
.source "TiDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadJob"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

.field protected uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiDownloadManager;Ljava/net/URI;)V
    .locals 0
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 158
    .local v1, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 161
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v3, v2, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiDownloadManager;->fireDownloadFinished(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 163
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiDownloadManager;->fireDownloadFailed(Ljava/net/URI;)V

    .line 169
    const-string v2, "TiDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
