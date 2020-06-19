.class Laup;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lavf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lavf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavf",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lavf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Laup;->a:Lavf;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 880
    :cond_0
    iput-object p1, p0, Laup;->a:Lavf;

    .line 881
    return-void
.end method

.method public a(Lazm;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazm;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Laup;->a:Lavf;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 894
    :cond_0
    iget-object v0, p0, Laup;->a:Lavf;

    invoke-virtual {v0, p1, p2}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    .line 895
    return-void
.end method

.method public b(Lazj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazj;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Laup;->a:Lavf;

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 887
    :cond_0
    iget-object v0, p0, Laup;->a:Lavf;

    invoke-virtual {v0, p1}, Lavf;->b(Lazj;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
