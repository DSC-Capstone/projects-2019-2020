.class Laum;
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
    .line 252
    iput-object p1, p0, Laum;->a:Lauj;

    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p1}, Lazj;->j()V

    .line 256
    const/4 v0, 0x0

    .line 258
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
    .locals 3

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 266
    iget-object v2, p0, Laum;->a:Lauj;

    invoke-static {v2, v0, v1}, Lauj;->a(Lauj;D)V

    .line 267
    invoke-virtual {p1, p2}, Lazm;->a(Ljava/lang/Number;)Lazm;

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Laum;->a(Lazm;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Laum;->a(Lazj;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
