.class public Lbqm;
.super Lbqe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lbqq;->ff:Lbqq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbqm;-><init>(Lbqp;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Lbqp;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lbqm;->a:Ljava/lang/Integer;

    invoke-direct {p0, p1, v0, p2}, Lbqe;-><init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method
