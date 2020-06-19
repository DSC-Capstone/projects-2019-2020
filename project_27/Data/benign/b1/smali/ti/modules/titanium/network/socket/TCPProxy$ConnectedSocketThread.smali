.class Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;
.super Ljava/lang/Thread;
.source "TCPProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/socket/TCPProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedSocketThread"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/socket/TCPProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/socket/TCPProxy;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    .line 199
    const-string v0, "ConnectedSocketThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 204
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v5, "host"

    invoke-virtual {v4, v5}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "host":Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v5, "timeout"

    invoke-virtual {v4, v5}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 208
    .local v3, "timeoutProperty":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 209
    :try_start_0
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 211
    .local v2, "timeout":I
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    invoke-static {v4, v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$002(Lti/modules/titanium/network/socket/TCPProxy;Ljava/net/Socket;)Ljava/net/Socket;

    .line 212
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v4}, Lti/modules/titanium/network/socket/TCPProxy;->access$000(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 213
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v4}, Lti/modules/titanium/network/socket/TCPProxy;->access$000(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/Socket;

    move-result-object v4

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v7, "port"

    invoke-virtual {v6, v7}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v5, v1, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 218
    .end local v2    # "timeout":I
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const/4 v5, 0x2

    const-string v6, "connected"

    iget-object v7, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    invoke-static {v7}, Lti/modules/titanium/network/socket/TCPProxy;->access$100(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 228
    :goto_1
    return-void

    .line 216
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    new-instance v5, Ljava/net/Socket;

    iget-object v6, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v7, "port"

    invoke-virtual {v6, v7}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v5, v1, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v4, v5}, Lti/modules/titanium/network/socket/TCPProxy;->access$002(Lti/modules/titanium/network/socket/TCPProxy;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 222
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v5, "error"

    iget-object v6, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect, unknown host <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lti/modules/titanium/network/socket/TCPProxy;->access$200(Lti/modules/titanium/network/socket/TCPProxy;Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v4, v10, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v5, "error"

    iget-object v6, p0, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->this$0:Lti/modules/titanium/network/socket/TCPProxy;

    const-string v7, "Unable to connect, IO error"

    invoke-static {v6, v7, v9}, Lti/modules/titanium/network/socket/TCPProxy;->access$200(Lti/modules/titanium/network/socket/TCPProxy;Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v4, v10, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_1
.end method
