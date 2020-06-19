.class Lblt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbls;


# direct methods
.method constructor <init>(Lbls;I)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lblt;->b:Lbls;

    iput p2, p0, Lblt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lblt;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lblt;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget v1, p0, Lblt;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 518
    :cond_0
    iget-object v0, p0, Lblt;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lblt;->b:Lbls;

    iget-object v0, v0, Lbls;->d:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 520
    if-eqz v0, :cond_1

    .line 521
    iget v1, p0, Lblt;->a:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 523
    :cond_1
    return-void
.end method
