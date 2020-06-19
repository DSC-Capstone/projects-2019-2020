.class final Layf;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    .line 350
    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lazj;->j()V

    .line 352
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    sget-object v1, Lazl;->h:Lazl;

    if-ne v0, v1, :cond_1

    .line 356
    invoke-virtual {p1}, Lazj;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Layf;->a(Lazm;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lazm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    invoke-virtual {p1, p2}, Lazm;->b(Ljava/lang/String;)Lazm;

    .line 363
    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Layf;->a(Lazj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
