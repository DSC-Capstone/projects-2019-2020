.class public Lorg/appcelerator/titanium/kroll/KrollContext;
.super Ljava/lang/Object;
.source "KrollContext.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CONTEXT_KEY:Ljava/lang/String; = "krollContext"

.field private static DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "KrollContext"

.field private static final MSG_EVAL_FILE:I = 0x3e9

.field private static final MSG_EVAL_STRING:I = 0x3e8

.field private static _instance:Lorg/appcelerator/titanium/kroll/KrollContext;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->initContext()V

    .line 48
    return-void
.end method

.method public static getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-direct {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 42
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method


# virtual methods
.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollContext;->evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "messageId"    # I

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, "result":Ljava/lang/Object;
    const-string v4, "app://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    const-string v4, "app:/"

    const-string v5, "Resources"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_0
    :goto_0
    sget-boolean v4, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "KrollContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evalFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->isOurThread()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object v3

    .line 104
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_3
    const-string v4, "file:///android_asset/Resources/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string v4, "file:///android_asset/"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->handler:Landroid/os/Handler;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;)Ljava/lang/Object;

    .line 124
    if-eqz p2, :cond_2

    .line 126
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 127
    .local v2, "responseMsg":Landroid/os/Message;
    iput p3, v2, Landroid/os/Message;->what:I

    .line 128
    invoke-virtual {p2, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 129
    sget-boolean v4, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v4, :cond_2

    .line 130
    const-string v4, "KrollContext"

    const-string v5, "Notifying caller that evalFile has completed"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    .end local v2    # "responseMsg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KrollContext"

    const-string v5, "Failed to notify caller that eval completed"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 80
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 74
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 75
    .local v1, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 77
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initContext()V
    .locals 3

    .prologue
    .line 52
    sget-boolean v0, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "KrollContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->handler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method protected isOurThread()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected threadEnded()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
