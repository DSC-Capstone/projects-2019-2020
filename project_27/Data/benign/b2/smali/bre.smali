.class Lbre;
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
        "Lbqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbrc;


# direct methods
.method constructor <init>(Lbrc;Z)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lbre;->b:Lbrc;

    iput-boolean p2, p0, Lbre;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbqw;Lbqw;)I
    .locals 5

    .prologue
    .line 201
    invoke-virtual {p1}, Lbqw;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 202
    invoke-virtual {p2}, Lbqw;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 203
    iget-boolean v4, p0, Lbre;->a:Z

    if-eqz v4, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 198
    check-cast p1, Lbqw;

    check-cast p2, Lbqw;

    invoke-virtual {p0, p1, p2}, Lbre;->a(Lbqw;Lbqw;)I

    move-result v0

    return v0
.end method
