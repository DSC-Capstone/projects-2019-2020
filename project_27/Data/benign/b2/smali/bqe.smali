.class public Lbqe;
.super Lbqd;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/Integer;


# instance fields
.field private final b:Ljava/lang/Number;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbqe;->a:Ljava/lang/Integer;

    return-void
.end method

.method protected varargs constructor <init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lbqd;-><init>(Lbqp;[Ljava/lang/Object;)V

    .line 52
    iput-object p2, p0, Lbqe;->b:Ljava/lang/Number;

    .line 53
    return-void
.end method
