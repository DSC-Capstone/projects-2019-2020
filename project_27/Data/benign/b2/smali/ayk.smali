.class final Layk;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/net/URL;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v1

    sget-object v2, Lazl;->i:Lazl;

    if-ne v1, v2, :cond_1

    .line 444
    invoke-virtual {p1}, Lazj;->j()V

    .line 448
    :cond_0
    :goto_0
    return-object v0

    .line 447
    :cond_1
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 440
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Layk;->a(Lazm;Ljava/net/URL;)V

    return-void
.end method

.method public a(Lazm;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 452
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lazm;->b(Ljava/lang/String;)Lazm;

    .line 453
    return-void

    .line 452
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Layk;->a(Lazj;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
