.class public Lbqk;
.super Lbqe;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/Number;

.field private final c:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Lbqp;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lbqe;-><init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 63
    iput-object p3, p0, Lbqk;->b:Ljava/lang/Number;

    .line 64
    iput-object p4, p0, Lbqk;->c:Ljava/lang/Number;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lbqq;->dJ:Lbqq;

    invoke-direct {p0, v0, p1, p2, p3}, Lbqk;-><init>(Lbqp;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 47
    return-void
.end method
