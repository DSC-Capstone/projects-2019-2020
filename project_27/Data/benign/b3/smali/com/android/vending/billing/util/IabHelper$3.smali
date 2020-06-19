.class Lcom/android/vending/billing/util/IabHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic e:Lcom/android/vending/billing/util/IabHelper;


# virtual methods
.method public run()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/util/Purchase;

    :try_start_0
    iget-object v3, p0, Lcom/android/vending/billing/util/IabHelper$3;->e:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v3, v0}, Lcom/android/vending/billing/util/IabHelper;->a(Lcom/android/vending/billing/util/Purchase;)V

    new-instance v3, Lcom/android/vending/billing/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/vending/billing/util/Purchase;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/vending/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabException;->a()Lcom/android/vending/billing/util/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->e:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->c()V

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->b:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/billing/util/IabHelper$3$1;

    invoke-direct {v2, p0, v1}, Lcom/android/vending/billing/util/IabHelper$3$1;-><init>(Lcom/android/vending/billing/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->d:Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/billing/util/IabHelper$3$2;

    invoke-direct {v2, p0, v1}, Lcom/android/vending/billing/util/IabHelper$3$2;-><init>(Lcom/android/vending/billing/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
