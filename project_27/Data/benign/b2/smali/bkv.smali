.class final Lbkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lbkr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbkr;Lbkr;)I
    .locals 2

    .prologue
    .line 260
    iget v0, p1, Lbkr;->f:I

    iget v1, p2, Lbkr;->f:I

    if-ne v0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 262
    :cond_0
    iget v0, p1, Lbkr;->f:I

    iget v1, p2, Lbkr;->f:I

    if-ge v0, v1, :cond_1

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 256
    check-cast p1, Lbkr;

    check-cast p2, Lbkr;

    invoke-virtual {p0, p1, p2}, Lbkv;->a(Lbkr;Lbkr;)I

    move-result v0

    return v0
.end method
