.class public Lbqc;
.super Lbqe;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lbqq;->S:Lbqq;

    invoke-direct {p0, v0, p1, p2}, Lbqc;-><init>(Lbqp;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lbqp;II)V
    .locals 4

    .prologue
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lbqe;-><init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 45
    iput p3, p0, Lbqc;->b:I

    .line 46
    return-void
.end method
