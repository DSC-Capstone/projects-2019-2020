.class Lcom/squareup/okhttp/internal/http/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/RequestHeaders;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 68
    const-string v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$0(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$1(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$2(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$3(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$4(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)V

    goto :goto_0
.end method
