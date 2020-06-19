.class public Lbqd;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# instance fields
.field private final a:Lbqo;


# direct methods
.method public varargs constructor <init>(Lbqp;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    new-instance v0, Lbqo;

    invoke-direct {v0, p0}, Lbqo;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lbqd;->a:Lbqo;

    .line 46
    iget-object v0, p0, Lbqd;->a:Lbqo;

    invoke-virtual {v0, p1, p2}, Lbqo;->a(Lbqp;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbqd;->a:Lbqo;

    invoke-virtual {v0}, Lbqo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbqd;->a:Lbqo;

    invoke-virtual {v0}, Lbqo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
