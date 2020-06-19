.class Lblh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lblg;


# direct methods
.method constructor <init>(Lblg;JJ)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lblh;->c:Lblg;

    iput-wide p2, p0, Lblh;->a:J

    iput-wide p4, p0, Lblh;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lblh;->c:Lblg;

    iget-object v0, v0, Lblg;->b:Lblp;

    invoke-virtual {v0}, Lblp;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lblh;->c:Lblg;

    iget-object v0, v0, Lblg;->b:Lblp;

    invoke-virtual {v0}, Lblp;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lblh;->c:Lblg;

    iget-object v0, v0, Lblg;->c:Lble;

    iget-object v0, v0, Lble;->z:Lbme;

    iget-wide v2, p0, Lblh;->a:J

    iget-wide v4, p0, Lblh;->b:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbme;->a(JJ)V

    goto :goto_0
.end method
