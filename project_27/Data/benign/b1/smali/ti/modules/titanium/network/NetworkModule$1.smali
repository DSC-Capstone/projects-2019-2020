.class Lti/modules/titanium/network/NetworkModule$1;
.super Landroid/os/Handler;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/NetworkModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/NetworkModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/NetworkModule;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "connected"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 87
    .local v1, "connected":Z
    const-string v8, "networkType"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 88
    .local v6, "type":I
    const-string v8, "networkTypeName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "typeName":Ljava/lang/String;
    const-string v8, "failover"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 90
    .local v3, "failover":Z
    const-string v8, "reason"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "reason":Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v9

    monitor-enter v9

    .line 94
    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    sget-object v10, Lti/modules/titanium/network/NetworkModule$State;->CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    iput-object v10, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->state:Lti/modules/titanium/network/NetworkModule$State;

    .line 99
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    iput v6, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->type:I

    .line 100
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    iput-object v7, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->typeName:Ljava/lang/String;

    .line 101
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    iput-boolean v3, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->failover:Z

    .line 102
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    iput-object v4, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->reason:Ljava/lang/String;

    .line 103
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 106
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "online"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-virtual {v8, v1, v6}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTitanium(ZI)I

    move-result v5

    .line 108
    .local v5, "titaniumType":I
    const-string v8, "networkType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v8, "networkTypeName"

    iget-object v9, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v9, v5}, Lti/modules/titanium/network/NetworkModule;->access$100(Lti/modules/titanium/network/NetworkModule;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v8, "reason"

    invoke-virtual {v2, v8, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    const-string v9, "change"

    invoke-virtual {v8, v9, v2}, Lti/modules/titanium/network/NetworkModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 112
    return-void

    .line 97
    .end local v2    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v5    # "titaniumType":I
    :cond_0
    :try_start_1
    iget-object v8, p0, Lti/modules/titanium/network/NetworkModule$1;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-static {v8}, Lti/modules/titanium/network/NetworkModule;->access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;

    move-result-object v8

    sget-object v10, Lti/modules/titanium/network/NetworkModule$State;->NOT_CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    iput-object v10, v8, Lti/modules/titanium/network/NetworkModule$NetInfo;->state:Lti/modules/titanium/network/NetworkModule$State;

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
