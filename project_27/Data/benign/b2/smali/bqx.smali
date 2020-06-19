.class public Lbqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqv;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:[D

.field private final b:[D


# virtual methods
.method public a()[D
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbqx;->a:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public b()[D
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbqx;->b:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
