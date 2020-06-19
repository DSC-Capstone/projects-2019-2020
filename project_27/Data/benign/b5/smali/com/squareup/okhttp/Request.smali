.class final Lcom/squareup/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Request$Body;,
        Lcom/squareup/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/squareup/okhttp/Request$Body;

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$0(Lcom/squareup/okhttp/Request$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->url:Ljava/net/URL;

    .line 47
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$1(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$2(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 49
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$3(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Request$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/Request$Body;

    .line 50
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$4(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$4(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    .line 51
    return-void

    :cond_0
    move-object v0, p0

    .line 50
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request$Builder;Lcom/squareup/okhttp/Request;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Request;-><init>(Lcom/squareup/okhttp/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public body()Lcom/squareup/okhttp/Request$Body;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/Request$Body;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headerCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v0

    return v0
.end method

.method public headerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->names()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public headerValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method newBuilder()Lcom/squareup/okhttp/Request$Builder;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->url:Ljava/net/URL;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/Request$Builder;-><init>(Ljava/net/URL;)V

    .line 103
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/Request$Body;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/Request$Body;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->rawHeaders(Lcom/squareup/okhttp/internal/http/RawHeaders;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method rawHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Ljava/net/URL;

    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
