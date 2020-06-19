.class Lbab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lbab;->a:Lazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lbab;->a:Lazx;

    iget-boolean v0, v0, Lazx;->n:Z

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lbab;->a:Lazx;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lazx;->n:Z

    .line 152
    iget-object v0, p0, Lbab;->a:Lazx;

    iput-object p1, v0, Lazx;->o:Ljava/lang/Exception;

    .line 153
    iget-object v0, p0, Lbab;->a:Lazx;

    iget-object v0, v0, Lazx;->p:Lbaz;

    invoke-virtual {v0}, Lbaz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbab;->a:Lazx;

    iget-object v0, v0, Lazx;->s:Lbcn;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lbab;->a:Lazx;

    iget-object v0, v0, Lazx;->s:Lbcn;

    invoke-interface {v0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
