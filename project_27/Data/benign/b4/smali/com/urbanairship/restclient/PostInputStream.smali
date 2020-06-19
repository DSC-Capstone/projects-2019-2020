.class public Lcom/urbanairship/restclient/PostInputStream;
.super Lorg/apache/http/client/methods/HttpPost;


# instance fields
.field protected httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/restclient/PostInputStream;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, p2, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/restclient/PostInputStream;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/urbanairship/restclient/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/urbanairship/restclient/Response;

    iget-object v1, p0, Lcom/urbanairship/restclient/PostInputStream;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/restclient/Response;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method
