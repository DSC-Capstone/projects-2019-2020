.class public Lbqi;
.super Lbqe;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/Number;

.field private final c:Z


# direct methods
.method public constructor <init>(Lbqp;Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lbqe;-><init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 69
    iput-object p3, p0, Lbqi;->b:Ljava/lang/Number;

    .line 70
    iput-boolean p4, p0, Lbqi;->c:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 1

    .prologue
    .line 50
    if-eqz p3, :cond_0

    sget-object v0, Lbqq;->ds:Lbqq;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lbqi;-><init>(Lbqp;Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 54
    return-void

    .line 50
    :cond_0
    sget-object v0, Lbqq;->du:Lbqq;

    goto :goto_0
.end method
