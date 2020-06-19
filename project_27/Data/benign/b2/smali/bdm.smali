.class Lbdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcp;


# instance fields
.field a:Z

.field final synthetic b:Lbea;

.field final synthetic c:Lbdq;

.field final synthetic d:Lbgr;

.field final synthetic e:Lbdy;

.field final synthetic f:I

.field final synthetic g:Lbdj;


# direct methods
.method constructor <init>(Lbdj;Lbea;Lbdq;Lbgr;Lbdy;I)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lbdm;->g:Lbdj;

    iput-object p2, p0, Lbdm;->b:Lbea;

    iput-object p3, p0, Lbdm;->c:Lbdq;

    iput-object p4, p0, Lbdm;->d:Lbgr;

    iput-object p5, p0, Lbdm;->e:Lbdy;

    iput p6, p0, Lbdm;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbaw;)V
    .locals 6

    .prologue
    .line 258
    iget-boolean v0, p0, Lbdm;->a:Z

    if-eqz v0, :cond_0

    .line 259
    if-eqz p2, :cond_0

    .line 260
    new-instance v0, Lbcs;

    invoke-direct {v0}, Lbcs;-><init>()V

    invoke-interface {p2, v0}, Lbaw;->a(Lbcr;)V

    .line 261
    new-instance v0, Lbco;

    invoke-direct {v0}, Lbco;-><init>()V

    invoke-interface {p2, v0}, Lbaw;->b(Lbcn;)V

    .line 262
    invoke-interface {p2}, Lbaw;->d()V

    .line 263
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "double connect callback"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbdm;->a:Z

    .line 268
    iget-object v0, p0, Lbdm;->b:Lbea;

    const-string v1, "socket connected"

    invoke-virtual {v0, v1}, Lbea;->b(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lbdm;->c:Lbdq;

    invoke-virtual {v0}, Lbdq;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    if-eqz p2, :cond_1

    .line 271
    invoke-interface {p2}, Lbaw;->d()V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lbdm;->c:Lbdq;

    iget-object v0, v0, Lbdq;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lbdm;->g:Lbdj;

    iget-object v0, v0, Lbdj;->e:Lbag;

    iget-object v1, p0, Lbdm;->c:Lbdq;

    iget-object v1, v1, Lbdq;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/Object;)V

    .line 279
    :cond_3
    if-eqz p1, :cond_4

    .line 280
    iget-object v0, p0, Lbdm;->g:Lbdj;

    iget-object v1, p0, Lbdm;->c:Lbdq;

    const/4 v3, 0x0

    iget-object v4, p0, Lbdm;->b:Lbea;

    iget-object v5, p0, Lbdm;->d:Lbgr;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbdq;Ljava/lang/Exception;Lbed;Lbea;Lbgr;)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lbdm;->e:Lbdy;

    iput-object p2, v0, Lbdy;->e:Lbaw;

    .line 285
    iget-object v0, p0, Lbdm;->c:Lbdq;

    iput-object p2, v0, Lbdq;->a:Lbaw;

    .line 287
    iget-object v0, p0, Lbdm;->g:Lbdj;

    iget-object v1, p0, Lbdm;->b:Lbea;

    iget v2, p0, Lbdm;->f:I

    iget-object v3, p0, Lbdm;->c:Lbdq;

    iget-object v4, p0, Lbdm;->d:Lbgr;

    iget-object v5, p0, Lbdm;->e:Lbdy;

    invoke-static/range {v0 .. v5}, Lbdj;->a(Lbdj;Lbea;ILbdq;Lbgr;Lbdy;)V

    goto :goto_0
.end method
