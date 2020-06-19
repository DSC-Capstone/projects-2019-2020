.class public Lbqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqv;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:[D


# direct methods
.method public constructor <init>([D)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lbqu;->a:[D

    .line 39
    return-void
.end method


# virtual methods
.method public a()[D
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbqu;->a:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
