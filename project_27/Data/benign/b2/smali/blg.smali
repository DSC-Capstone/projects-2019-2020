.class Lblg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbme;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lblp;

.field final synthetic c:Lble;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    const-class v0, Lble;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lblg;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lble;Lblp;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lblg;->c:Lble;

    iput-object p2, p0, Lblg;->b:Lblp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    .prologue
    .line 318
    sget-boolean v0, Lblg;->a:Z

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

    .line 320
    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 322
    iget-object v1, p0, Lblg;->c:Lble;

    iget-object v1, v1, Lble;->x:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lblg;->c:Lble;

    iget-object v1, v1, Lble;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    :cond_1
    iget-object v1, p0, Lblg;->c:Lble;

    iget-object v1, v1, Lble;->y:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lblg;->c:Lble;

    iget-object v1, v1, Lble;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 328
    :cond_2
    iget-object v0, p0, Lblg;->c:Lble;

    iget-object v0, v0, Lble;->w:Lbme;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lblg;->c:Lble;

    iget-object v0, v0, Lble;->w:Lbme;

    invoke-interface {v0, p1, p2, p3, p4}, Lbme;->a(JJ)V

    .line 331
    :cond_3
    iget-object v0, p0, Lblg;->c:Lble;

    iget-object v0, v0, Lble;->z:Lbme;

    if-eqz v0, :cond_4

    .line 332
    sget-object v6, Lbku;->a:Landroid/os/Handler;

    new-instance v0, Lblh;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lblh;-><init>(Lblg;JJ)V

    invoke-static {v6, v0}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 341
    :cond_4
    return-void
.end method
