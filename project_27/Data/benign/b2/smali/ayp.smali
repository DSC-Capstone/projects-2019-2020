.class final Layp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lauj;Lazi;)Lavf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lauj;",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p2}, Lazi;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lauj;->a(Ljava/lang/Class;)Lavf;

    move-result-object v1

    .line 524
    new-instance v0, Layq;

    invoke-direct {v0, p0, v1}, Layq;-><init>(Layp;Lavf;)V

    goto :goto_0
.end method
