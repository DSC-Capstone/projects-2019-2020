.class final Layc;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lazj;->j()V

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lazj;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lazm;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p1, p2}, Lazm;->a(Ljava/lang/Number;)Lazm;

    .line 299
    return-void
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 287
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Layc;->a(Lazm;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Layc;->a(Lazj;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
