.class public Lbqh;
.super Lbqd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lbqq;->de:Lbqq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbqh;-><init>(Lbqp;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Lbqp;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lbqd;-><init>(Lbqp;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
