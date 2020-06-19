.class public Lcom/android/vending/billing/util/IabException;
.super Ljava/lang/Exception;


# instance fields
.field a:Lcom/android/vending/billing/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/vending/billing/util/IabException;-><init>(Lcom/android/vending/billing/util/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/android/vending/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/android/vending/billing/util/IabException;-><init>(Lcom/android/vending/billing/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/vending/billing/util/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/util/IabException;-><init>(Lcom/android/vending/billing/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/vending/billing/util/IabResult;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/android/vending/billing/util/IabException;->a:Lcom/android/vending/billing/util/IabResult;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/vending/billing/util/IabResult;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/util/IabException;->a:Lcom/android/vending/billing/util/IabResult;

    return-object v0
.end method
