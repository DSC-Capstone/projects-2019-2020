.class final Layl;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v1

    sget-object v2, Lazl;->i:Lazl;

    if-ne v1, v2, :cond_1

    .line 462
    invoke-virtual {p1}, Lazj;->j()V

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Lauu;

    invoke-direct {v1, v0}, Lauu;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Layl;->a(Lazm;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lazm;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 474
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lazm;->b(Ljava/lang/String;)Lazm;

    .line 475
    return-void

    .line 474
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Layl;->a(Lazj;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
