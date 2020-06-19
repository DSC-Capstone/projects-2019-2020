.class public Lbqf;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field private final a:Lbqo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lbqq;->eP:Lbqq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbqf;-><init>(Lbqp;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public varargs constructor <init>(Lbqp;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    new-instance v0, Lbqo;

    invoke-direct {v0, p0}, Lbqo;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lbqf;->a:Lbqo;

    .line 47
    iget-object v0, p0, Lbqf;->a:Lbqo;

    invoke-virtual {v0, p1, p2}, Lbqo;->a(Lbqp;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a()Lbqo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbqf;->a:Lbqo;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbqf;->a:Lbqo;

    invoke-virtual {v0}, Lbqo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbqf;->a:Lbqo;

    invoke-virtual {v0}, Lbqo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
