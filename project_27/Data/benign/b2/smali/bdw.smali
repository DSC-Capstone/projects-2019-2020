.class public Lbdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public i:Lbkc;

.field public j:Lbea;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lbkc;

    invoke-direct {v0}, Lbkc;-><init>()V

    iput-object v0, p0, Lbdw;->i:Lbkc;

    return-void
.end method
