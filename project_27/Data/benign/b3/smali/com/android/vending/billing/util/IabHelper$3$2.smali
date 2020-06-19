.class Lcom/android/vending/billing/util/IabHelper$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/vending/billing/util/IabHelper$3;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/util/IabHelper$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper$3$2;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iput-object p2, p0, Lcom/android/vending/billing/util/IabHelper$3$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/util/IabHelper$3$2;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iget-object v0, v0, Lcom/android/vending/billing/util/IabHelper$3;->d:Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/android/vending/billing/util/IabHelper$3$2;->b:Lcom/android/vending/billing/util/IabHelper$3;

    iget-object v1, v1, Lcom/android/vending/billing/util/IabHelper$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/billing/util/IabHelper$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/vending/billing/util/IabHelper$OnConsumeMultiFinishedListener;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
