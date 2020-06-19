.class Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressEntity"
.end annotation


# instance fields
.field private delegate:Lorg/apache/http/HttpEntity;

.field private listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpEntity;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V
    .locals 0
    .param p2, "delegate"    # Lorg/apache/http/HttpEntity;
    .param p3, "listener"    # Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    .prologue
    .line 374
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    .line 376
    iput-object p3, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    .line 377
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 382
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    invoke-direct {v0, v1, p1, v2}, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;-><init>(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    .line 422
    .local v0, "progressOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 423
    return-void
.end method
