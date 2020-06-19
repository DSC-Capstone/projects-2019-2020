.class Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .line 125
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

    .line 127
    const-string v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$0(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$1(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)V

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$2(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$3(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$4(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)V

    goto :goto_0

    .line 137
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$5(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)V

    goto :goto_0
.end method
