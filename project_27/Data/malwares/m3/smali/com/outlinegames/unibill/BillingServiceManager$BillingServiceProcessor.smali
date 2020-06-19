.class public interface abstract Lcom/outlinegames/unibill/BillingServiceManager$BillingServiceProcessor;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/outlinegames/unibill/BillingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingServiceProcessor"
.end annotation


# virtual methods
.method public abstract workWith(Lcom/android/vending/billing/IInAppBillingService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/outlinegames/unibill/IabException;
        }
    .end annotation
.end method
