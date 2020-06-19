.class public Lbqg;
.super Lbqf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Number;


# direct methods
.method public varargs constructor <init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Lbqf;-><init>()V

    .line 54
    invoke-virtual {p0}, Lbqg;->a()Lbqo;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lbqo;->a(Lbqp;[Ljava/lang/Object;)V

    .line 55
    iput-object p2, p0, Lbqg;->a:Ljava/lang/Number;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lbqq;->bo:Lbqq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Lbqg;-><init>(Lbqp;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbqg;->a:Ljava/lang/Number;

    return-object v0
.end method
