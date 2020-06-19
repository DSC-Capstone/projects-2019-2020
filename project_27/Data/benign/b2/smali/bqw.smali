.class public Lbqw;
.super Lbrj;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbrj",
        "<[D",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>([DD)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbqw;-><init>([DDZ)V

    .line 50
    return-void
.end method

.method public constructor <init>([DDZ)V
    .locals 2

    .prologue
    .line 63
    if-eqz p4, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbrj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a()[D
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lbqw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 76
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public b()[D
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lbqw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
