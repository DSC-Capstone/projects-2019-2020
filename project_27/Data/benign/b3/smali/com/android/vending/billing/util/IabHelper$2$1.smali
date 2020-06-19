.class Lcom/android/vending/billing/util/IabHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/vending/billing/util/IabResult;

.field final synthetic b:Lcom/android/vending/billing/util/Inventory;

.field final synthetic c:Lcom/android/vending/billing/util/IabHelper$2;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/util/IabHelper$2;Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->c:Lcom/android/vending/billing/util/IabHelper$2;

    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->a:Lcom/android/vending/billing/util/IabResult;

    iput-object p3, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->b:Lcom/android/vending/billing/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->c:Lcom/android/vending/billing/util/IabHelper$2;

    iget-object v0, v0, Lcom/android/vending/billing/util/IabHelper$2;->d:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->a:Lcom/android/vending/billing/util/IabResult;

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper$2$1;->b:Lcom/android/vending/billing/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;->a(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V

    return-void
.end method
