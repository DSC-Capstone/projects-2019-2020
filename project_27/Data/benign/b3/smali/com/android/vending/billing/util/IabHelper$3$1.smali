.class Lcom/android/vending/billing/util/IabHelper$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/vending/billing/util/IabHelper$3;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/util/IabHelper$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper$3$1;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3$1;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iget-object v2, v0, Lcom/android/vending/billing/util/IabHelper$3;->b:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3$1;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iget-object v0, v0, Lcom/android/vending/billing/util/IabHelper$3;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/util/Purchase;

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper$3$1;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/billing/util/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;->a(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabResult;)V

    return-void
.end method
