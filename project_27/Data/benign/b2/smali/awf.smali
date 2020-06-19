.class Lawf;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lauj;

.field final synthetic d:Lazi;

.field final synthetic e:Lawe;

.field private f:Lavf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavf",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lawe;ZZLauj;Lazi;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lawf;->e:Lawe;

    iput-boolean p2, p0, Lawf;->a:Z

    iput-boolean p3, p0, Lawf;->b:Z

    iput-object p4, p0, Lawf;->c:Lauj;

    iput-object p5, p0, Lawf;->d:Lazi;

    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method

.method private a()Lavf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lawf;->f:Lavf;

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lawf;->c:Lauj;

    iget-object v1, p0, Lawf;->e:Lawe;

    iget-object v2, p0, Lawf;->d:Lazi;

    .line 144
    invoke-virtual {v0, v1, v2}, Lauj;->a(Lavg;Lazi;)Lavf;

    move-result-object v0

    iput-object v0, p0, Lawf;->f:Lavf;

    goto :goto_0
.end method


# virtual methods
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
    .line 133
    iget-boolean v0, p0, Lawf;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lawf;->a()Lavf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lawf;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lazj;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lawf;->a()Lavf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lavf;->b(Lazj;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
