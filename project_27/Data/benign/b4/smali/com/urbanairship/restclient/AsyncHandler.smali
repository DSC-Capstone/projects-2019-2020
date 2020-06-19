.class public abstract Lcom/urbanairship/restclient/AsyncHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComplete(Lcom/urbanairship/restclient/Response;)V
.end method

.method public onData(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Request threw exception:"

    invoke-static {v0, p1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method
