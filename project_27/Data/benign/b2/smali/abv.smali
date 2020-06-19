.class public Labv;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Lao",
        "<",
        "Lcom/google/android/gms/common/ConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/google/android/gms/common/ConnectionResult;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Laby;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labv;->b:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Labv;->d:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Lo;)Labv;
    .locals 4

    const-string v0, "Must be called from main thread of process"

    invoke-static {v0}, Laei;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo;->f()Lt;

    move-result-object v1

    :try_start_0
    const-string v0, "GmsSupportLoaderLifecycleFragment"

    invoke-virtual {v1, v0}, Lt;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Labv;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labv;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Labv;

    invoke-direct {v0}, Labv;-><init>()V

    invoke-virtual {v1}, Lt;->a()Laf;

    move-result-object v2

    const-string v3, "GmsSupportLoaderLifecycleFragment"

    invoke-virtual {v2, v0, v3}, Laf;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Laf;

    move-result-object v2

    invoke-virtual {v2}, Laf;->a()I

    invoke-virtual {v1}, Lt;->b()Z

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment with tag GmsSupportLoaderLifecycleFragment is not a SupportLoaderLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Labv;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Labv;->b:I

    iput-object v4, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Labv;->c(I)Labx;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Labx;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lan;->a(I)V

    invoke-virtual {v1, v2, v4, p0}, Lan;->a(ILandroid/os/Bundle;Lao;)Law;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-boolean v0, p0, Labv;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Labv;->a:Z

    iput p1, p0, Labv;->b:I

    iput-object p2, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Labv;->d:Landroid/os/Handler;

    new-instance v1, Labz;

    invoke-direct {v1, p0, p1, p2}, Labz;-><init>(Labv;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Labv;)V
    .locals 0

    invoke-direct {p0}, Labv;->a()V

    return-void
.end method

.method static synthetic a(Labv;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Labv;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private b(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "GmsSupportLoaderLifecycleFragment"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laby;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Labv;->b(I)V

    iget-object v0, v0, Laby;->b:Laaj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Laaj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    invoke-direct {p0}, Labv;->a()V

    return-void
.end method


# virtual methods
.method public a(I)Laag;
    .locals 1

    invoke-virtual {p0}, Labv;->h()Lo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Labv;->c(I)Labx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Labx;->i:Laag;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)Law;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Law",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Labx;

    invoke-virtual {p0}, Labv;->h()Lo;

    move-result-object v2

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laby;

    iget-object v0, v0, Laby;->a:Laag;

    invoke-direct {v1, v2, v0}, Labx;-><init>(Landroid/content/Context;Laag;)V

    return-object v1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Labv;->a()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Labv;->h()Lo;

    move-result-object v2

    invoke-static {v2}, Lzo;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :pswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_1
    iget v0, p0, Labv;->b:I

    iget-object v1, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Labv;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILaag;Laaj;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Laei;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already managing a GoogleApiClient with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laei;->a(ZLjava/lang/Object;)V

    new-instance v0, Laby;

    invoke-direct {v0, p2, p3, v4}, Laby;-><init>(Laag;Laaj;Labw;)V

    iget-object v2, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Labv;->h()Lo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lan;->a(Z)V

    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v0

    invoke-virtual {v0, p1, v4, p0}, Lan;->a(ILandroid/os/Bundle;Lao;)Law;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Labv;->c(I)Labx;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laby;

    iget-object v0, v0, Laby;->a:Laag;

    iget-object v3, v3, Labx;->i:Laag;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Lan;->b(ILandroid/os/Bundle;Lao;)Law;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v0

    invoke-virtual {v0, v2, v4, p0}, Lan;->a(ILandroid/os/Bundle;Lao;)Law;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labv;->a:Z

    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labv;->b:I

    iget v0, p0, Labv;->b:I

    if-ltz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    return-void
.end method

.method public a(Law;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Law;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Law;->a()I

    move-result v0

    invoke-direct {p0, v0, p2}, Labv;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Law;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1, p2}, Labv;->a(Law;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lan;->a(I)V

    return-void
.end method

.method c(I)Labx;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lan;->b(I)Law;

    move-result-object v0

    check-cast v0, Labx;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown loader in SupportLoaderLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    iget-boolean v0, p0, Labv;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Labv;->p()Lan;

    move-result-object v1

    iget-object v2, p0, Labv;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lan;->a(ILandroid/os/Bundle;Lao;)Law;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    const-string v0, "resolving_error"

    iget-boolean v1, p0, Labv;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Labv;->b:I

    if-ltz v0, :cond_0

    const-string v0, "failed_client_id"

    iget v1, p0, Labv;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_status"

    iget-object v1, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_resolution"

    iget-object v1, p0, Labv;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget v0, p0, Labv;->b:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Labv;->b(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
