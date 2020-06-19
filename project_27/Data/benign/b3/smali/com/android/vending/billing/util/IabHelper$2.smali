.class Lcom/android/vending/billing/util/IabHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic e:Lcom/android/vending/billing/util/IabHelper;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper$2;->e:Lcom/android/vending/billing/util/IabHelper;

    iput-boolean p2, p0, Lcom/android/vending/billing/util/IabHelper$2;->a:Z

    iput-object p3, p0, Lcom/android/vending/billing/util/IabHelper$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/android/vending/billing/util/IabHelper$2;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/vending/billing/util/IabHelper$2;->d:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/android/vending/billing/util/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper$2;->e:Lcom/android/vending/billing/util/IabHelper;

    iget-boolean v3, p0, Lcom/android/vending/billing/util/IabHelper$2;->a:Z

    iget-object v4, p0, Lcom/android/vending/billing/util/IabHelper$2;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/billing/util/IabHelper;->a(ZLjava/util/List;)Lcom/android/vending/billing/util/Inventory;
    :try_end_0
    .catch Lcom/android/vending/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper$2;->e:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v2}, Lcom/android/vending/billing/util/IabHelper;->c()V

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper$2;->c:Landroid/os/Handler;

    new-instance v3, Lcom/android/vending/billing/util/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/vending/billing/util/IabHelper$2$1;-><init>(Lcom/android/vending/billing/util/IabHelper$2;Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/vending/billing/util/IabException;->a()Lcom/android/vending/billing/util/IabResult;

    move-result-object v1

    goto :goto_0
.end method
