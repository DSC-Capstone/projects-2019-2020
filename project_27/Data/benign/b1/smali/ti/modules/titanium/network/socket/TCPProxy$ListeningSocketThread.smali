.class Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;
.super Ljava/lang/Thread;
.source "TCPProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/socket/TCPProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListeningSocketThread"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/socket/TCPProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/socket/TCPProxy;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    .line 235
    const-string v0, "ListeningSocketThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 241
    :goto_0
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$300(Lti/modules/titanium/network/socket/TCPProxy;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$400(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 245
    .local v0, "acceptedSocket":Ljava/net/Socket;
    new-instance v1, Lti/modules/titanium/network/socket/TCPProxy;

    invoke-direct {v1}, Lti/modules/titanium/network/socket/TCPProxy;-><init>()V

    .line 246
    .local v1, "acceptedTcpProxy":Lti/modules/titanium/network/socket/TCPProxy;
    invoke-static {v1, v0}, Lti/modules/titanium/network/socket/TCPProxy;->access$002(Lti/modules/titanium/network/socket/TCPProxy;Ljava/net/Socket;)Ljava/net/Socket;

    .line 247
    const-string v5, "host"

    invoke-static {v1}, Lti/modules/titanium/network/socket/TCPProxy;->access$000(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v5, "port"

    invoke-static {v1}, Lti/modules/titanium/network/socket/TCPProxy;->access$000(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$500(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    const-string v6, "timeout"

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "optionValue":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 252
    const-string v5, "timeout"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$500(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    instance-of v5, v4, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v5, :cond_1

    .line 256
    const-string v5, "error"

    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .end local v4    # "optionValue":Ljava/lang/Object;
    invoke-virtual {v1, v5, v4}, Lti/modules/titanium/network/socket/TCPProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :cond_1
    const/4 v5, 0x2

    invoke-static {v1, v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$602(Lti/modules/titanium/network/socket/TCPProxy;I)I

    .line 262
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v6, "accepted"

    invoke-virtual {v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "callback":Ljava/lang/Object;
    instance-of v5, v2, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v5, :cond_2

    .line 264
    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .end local v2    # "callback":Ljava/lang/Object;
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-virtual {v5}, Lti/modules/titanium/network/socket/TCPProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v6, v1}, Lti/modules/titanium/network/socket/TCPProxy;->access$700(Lti/modules/titanium/network/socket/TCPProxy;Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 267
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->access$302(Lti/modules/titanium/network/socket/TCPProxy;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 269
    .end local v0    # "acceptedSocket":Ljava/net/Socket;
    .end local v1    # "acceptedTcpProxy":Lti/modules/titanium/network/socket/TCPProxy;
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/IOException;
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$600(Lti/modules/titanium/network/socket/TCPProxy;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 271
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    iget-object v5, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const/4 v6, 0x5

    const-string v7, "error"

    iget-object v8, p0, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v9, "Unable to accept new connection, IO error"

    invoke-static {v8, v9, v10}, Lti/modules/titanium/network/socket/TCPProxy;->access$200(Lti/modules/titanium/network/socket/TCPProxy;Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 288
    :cond_3
    return-void

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-static {v5, v6}, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 282
    :catch_1
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 284
    const-string v5, "TCPProxy"

    const-string v6, "listening thread interrupted"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
