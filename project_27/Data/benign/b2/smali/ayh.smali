.class final Layh;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p1}, Lazj;->j()V

    .line 388
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 384
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Layh;->a(Lazm;Ljava/math/BigInteger;)V

    return-void
.end method

.method public a(Lazm;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p1, p2}, Lazm;->a(Ljava/lang/Number;)Lazm;

    .line 399
    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Layh;->a(Lazj;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
