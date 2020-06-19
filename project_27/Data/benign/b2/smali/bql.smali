.class public Lbql;
.super Lbqg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbqg;-><init>(Ljava/lang/Number;)V

    .line 38
    invoke-virtual {p0}, Lbql;->a()Lbqo;

    move-result-object v0

    sget-object v1, Lbqq;->bn:Lbqq;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lbqo;->a(Lbqp;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
