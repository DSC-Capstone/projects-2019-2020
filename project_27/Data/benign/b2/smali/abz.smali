.class Labz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labv;

.field private final b:I

.field private final c:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Labv;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Labz;->a:Labv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Labz;->b:I

    iput-object p3, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Labz;->a:Labv;

    invoke-virtual {v0}, Labv;->h()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->f()Lt;

    move-result-object v0

    invoke-virtual {v0}, Lt;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labz;->a:Labv;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Labz;->a:Labv;

    invoke-virtual {v2}, Labv;->h()Lo;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Labz;->a:Labv;

    invoke-static {v0}, Labv;->a(Labv;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-static {v0}, Lzo;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    iget-object v1, p0, Labz;->a:Labv;

    invoke-virtual {v1}, Labv;->h()Lo;

    move-result-object v1

    iget-object v2, p0, Labz;->a:Labv;

    const/4 v3, 0x2

    iget-object v4, p0, Labz;->a:Labv;

    invoke-static {v0, v1, v2, v3, v4}, Lzo;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labz;->a:Labv;

    iget v1, p0, Labz;->b:I

    iget-object v2, p0, Labz;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Labv;->a(Labv;ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
