.class Lcom/urbanairship/restclient/RequestQueue$1;
.super Lcom/urbanairship/restclient/AsyncHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/restclient/RequestQueue;->runRequest(Lcom/urbanairship/restclient/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/restclient/RequestQueue;

.field final synthetic val$delegate:Lcom/urbanairship/restclient/AsyncHandler;

.field final synthetic val$request:Lcom/urbanairship/restclient/Request;


# direct methods
.method constructor <init>(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->this$0:Lcom/urbanairship/restclient/RequestQueue;

    iput-object p2, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$request:Lcom/urbanairship/restclient/Request;

    iput-object p3, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$delegate:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/urbanairship/restclient/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->this$0:Lcom/urbanairship/restclient/RequestQueue;

    iget-object v1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$request:Lcom/urbanairship/restclient/Request;

    invoke-static {v0, v1}, Lcom/urbanairship/restclient/RequestQueue;->access$000(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$delegate:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->onComplete(Lcom/urbanairship/restclient/Response;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->this$0:Lcom/urbanairship/restclient/RequestQueue;

    iget-object v1, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$request:Lcom/urbanairship/restclient/Request;

    invoke-static {v0, v1}, Lcom/urbanairship/restclient/RequestQueue;->access$000(Lcom/urbanairship/restclient/RequestQueue;Lcom/urbanairship/restclient/Request;)V

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$delegate:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/restclient/RequestQueue$1;->val$delegate:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->onProgress(I)V

    return-void
.end method
