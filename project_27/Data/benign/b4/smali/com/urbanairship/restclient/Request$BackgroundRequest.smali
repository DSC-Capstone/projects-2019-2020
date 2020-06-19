.class Lcom/urbanairship/restclient/Request$BackgroundRequest;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/restclient/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/urbanairship/restclient/Request;",
        "Ljava/lang/Integer;",
        "Lcom/urbanairship/restclient/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Lcom/urbanairship/restclient/AsyncHandler;

.field final synthetic this$0:Lcom/urbanairship/restclient/Request;


# direct methods
.method public constructor <init>(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->this$0:Lcom/urbanairship/restclient/Request;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->handler:Lcom/urbanairship/restclient/AsyncHandler;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/urbanairship/restclient/Request;)Lcom/urbanairship/restclient/Response;
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Background Request only handles executing one Request at a time "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v0, p1, v1

    :try_start_0
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->this$0:Lcom/urbanairship/restclient/Request;

    iget-object v2, v2, Lcom/urbanairship/restclient/Request;->destination:Ljava/io/File;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->this$0:Lcom/urbanairship/restclient/Request;

    iget-object v2, v2, Lcom/urbanairship/restclient/Request;->destination:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->rawBody()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->this$0:Lcom/urbanairship/restclient/Request;

    iget-object v6, v6, Lcom/urbanairship/restclient/Request;->destination:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x2000

    new-array v6, v6, [B

    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    add-int/2addr v1, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    int-to-float v9, v1

    long-to-float v10, v2

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/urbanairship/restclient/Request$BackgroundRequest;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/urbanairship/restclient/Request;

    invoke-virtual {p0, p1}, Lcom/urbanairship/restclient/Request$BackgroundRequest;->doInBackground([Lcom/urbanairship/restclient/Request;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/urbanairship/restclient/Response;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->handler:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0, p1}, Lcom/urbanairship/restclient/AsyncHandler;->onComplete(Lcom/urbanairship/restclient/Response;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->handler:Lcom/urbanairship/restclient/AsyncHandler;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error when executing request."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/restclient/AsyncHandler;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/urbanairship/restclient/Response;

    invoke-virtual {p0, p1}, Lcom/urbanairship/restclient/Request$BackgroundRequest;->onPostExecute(Lcom/urbanairship/restclient/Response;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/urbanairship/restclient/Request$BackgroundRequest;->handler:Lcom/urbanairship/restclient/AsyncHandler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/restclient/AsyncHandler;->onProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/urbanairship/restclient/Request$BackgroundRequest;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
