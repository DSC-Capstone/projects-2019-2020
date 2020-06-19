.class Laun;
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


# instance fields
.field final synthetic a:Lauj;


# direct methods
.method constructor <init>(Lauj;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Laun;->a:Lauj;

    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 279
    invoke-virtual {p1}, Lazj;->j()V

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lazj;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lazm;Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 290
    iget-object v1, p0, Laun;->a:Lauj;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lauj;->a(Lauj;D)V

    .line 291
    invoke-virtual {p1, p2}, Lazm;->a(Ljava/lang/Number;)Lazm;

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Laun;->a(Lazm;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Laun;->a(Lazj;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
