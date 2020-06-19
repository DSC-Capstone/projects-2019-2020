.class public Lbqy;
.super Lbqr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqr",
        "<",
        "Lbqw;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lbqr;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lbqy;->a:I

    .line 64
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lbqr;-><init>(DD)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lbqy;->a:I

    .line 79
    return-void
.end method


# virtual methods
.method public a(ILbqw;Lbqw;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 126
    iget v0, p0, Lbqy;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lbqy;->a:I

    if-lt p1, v0, :cond_0

    .line 134
    :goto_0
    return v1

    .line 130
    :cond_0
    invoke-virtual {p2}, Lbqw;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 131
    invoke-virtual {p3}, Lbqw;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 132
    sub-double v6, v2, v4

    invoke-static {v6, v7}, Lbrf;->a(D)D

    move-result-wide v6

    .line 133
    invoke-static {v2, v3}, Lbrf;->a(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lbrf;->a(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lbrf;->a(DD)D

    move-result-wide v2

    .line 134
    invoke-virtual {p0}, Lbqy;->a()D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpg-double v0, v6, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lbqy;->b()D

    move-result-wide v2

    cmpg-double v0, v6, v2

    if-gtz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic a(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p2, Lbqw;

    check-cast p3, Lbqw;

    invoke-virtual {p0, p1, p2, p3}, Lbqy;->a(ILbqw;Lbqw;)Z

    move-result v0

    return v0
.end method
