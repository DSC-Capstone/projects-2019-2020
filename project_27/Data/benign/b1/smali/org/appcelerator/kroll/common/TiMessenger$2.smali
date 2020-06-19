.class Lorg/appcelerator/kroll/common/TiMessenger$2;
.super Lorg/appcelerator/kroll/common/AsyncResult;
.source "TiMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/common/TiMessenger;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Object;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 183
    .local v1, "timeout":I
    :goto_0
    int-to-long v2, v1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lorg/appcelerator/kroll/common/TiMessenger$2;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    iget-object v2, v2, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 185
    const/16 v1, 0x32

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchPendingMessages()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "TiMessenger"

    const-string v3, "interrupted waiting for async result"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchPendingMessages()V

    .line 197
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 198
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 201
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->result:Ljava/lang/Object;

    return-object v2
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 208
    return-void
.end method
