.class Lbls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbh;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:I

.field final synthetic c:J

.field final synthetic d:Lblp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    const-class v0, Lble;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbls;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lblp;J)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lbls;->d:Lblp;

    iput-wide p2, p0, Lbls;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 498
    sget-boolean v0, Lbls;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 500
    :cond_0
    iget-object v0, p0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->b:Lbkm;

    invoke-virtual {v0}, Lbkm;->a()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->o:Lbea;

    const-string v1, "context has died, cancelling"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lbls;->d:Lblp;

    invoke-virtual {v0}, Lblp;->c()Z

    .line 541
    :cond_1
    :goto_0
    return-void

    .line 507
    :cond_2
    int-to-float v0, p1

    iget-wide v2, p0, Lbls;->c:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 509
    iget-object v1, p0, Lbls;->d:Lblp;

    iget-object v1, v1, Lblp;->u:Lble;

    iget-object v1, v1, Lble;->n:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lbls;->d:Lblp;

    iget-object v1, v1, Lblp;->u:Lble;

    iget-object v1, v1, Lble;->o:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lbls;->a:I

    if-eq v0, v1, :cond_4

    .line 510
    sget-object v1, Lbku;->a:Landroid/os/Handler;

    new-instance v2, Lblt;

    invoke-direct {v2, p0, v0}, Lblt;-><init>(Lbls;I)V

    invoke-static {v1, v2}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 526
    :cond_4
    iput v0, p0, Lbls;->a:I

    .line 528
    iget-object v0, p0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->p:Lbme;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->p:Lbme;

    int-to-long v2, p1

    iget-wide v4, p0, Lbls;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbme;->a(JJ)V

    .line 531
    :cond_5
    iget-object v0, p0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->q:Lbme;

    if-eqz v0, :cond_1

    .line 532
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    new-instance v1, Lblu;

    invoke-direct {v1, p0, p1}, Lblu;-><init>(Lbls;I)V

    invoke-static {v0, v1}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
