.class public Lcom/urbanairship/restclient/RequestQueue;
.super Ljava/lang/Object;


# instance fields
.field private handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/urbanairship/restclient/Request;",
            "Lcom/urbanairship/restclient/AsyncHandler;",
            ">;"
        }
    .end annotation
.end field

.field private maxConcurrentRequests:I

.field private requests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/urbanairship/restclient/Request;",
            ">;"
        }
    .end annotation
.end field

.field private runningRequests:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->maxConcurrentRequests:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->requests:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->handlers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/restclient/RequestQueue;->removeRequest(Lcom/urbanairship/restclient/Request;)V

    return-void
.end method

.method private declared-synchronized removeRequest(Lcom/urbanairship/restclient/Request;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    invoke-direct {p0}, Lcom/urbanairship/restclient/RequestQueue;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runRequest(Lcom/urbanairship/restclient/Request;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "running request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/restclient/AsyncHandler;

    :try_start_0
    new-instance v1, Lcom/urbanairship/restclient/RequestQueue$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/urbanairship/restclient/RequestQueue$1;-><init>(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V

    invoke-virtual {p1, v1}, Lcom/urbanairship/restclient/Request;->executeAsync(Lcom/urbanairship/restclient/AsyncHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error running request"

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/restclient/AsyncHandler;->onError(Ljava/lang/Exception;)V

    invoke-direct {p0, p1}, Lcom/urbanairship/restclient/RequestQueue;->removeRequest(Lcom/urbanairship/restclient/Request;)V

    goto :goto_0
.end method

.method private update()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->runningRequests:I

    iget v1, p0, Lcom/urbanairship/restclient/RequestQueue;->maxConcurrentRequests:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->requests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->requests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/restclient/Request;

    invoke-direct {p0, v0}, Lcom/urbanairship/restclient/RequestQueue;->runRequest(Lcom/urbanairship/restclient/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Request;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->requests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/urbanairship/restclient/RequestQueue;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxConcurrentRequests()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/restclient/RequestQueue;->maxConcurrentRequests:I

    return v0
.end method

.method public setMaxConcurrentRequests(I)V
    .locals 0

    iput p1, p0, Lcom/urbanairship/restclient/RequestQueue;->maxConcurrentRequests:I

    return-void
.end method
