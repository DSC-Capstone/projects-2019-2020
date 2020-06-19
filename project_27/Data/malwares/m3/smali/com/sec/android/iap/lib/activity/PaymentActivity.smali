.class public Lcom/sec/android/iap/lib/activity/PaymentActivity;
.super Lcom/sec/android/iap/lib/activity/BaseActivity;
.source "PaymentActivity.java"

# interfaces
.implements Lcom/sec/android/iap/lib/listener/OnInitIapListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mItemGroupId:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mShowSuccessDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sec/android/iap/lib/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/sec/android/iap/lib/activity/BaseActivity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemGroupId:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemId:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mShowSuccessDialog:Z

    .line 13
    return-void
.end method

.method private finishPurchase(Landroid/content/Intent;)V
    .locals 7
    .param p1, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 196
    .local v6, "extras":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    .line 197
    const-string v1, "STATUS_CODE"

    .line 196
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    const-string v2, "ERROR_STRING"

    .line 198
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v0}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/sec/android/iap/lib/vo/PurchaseVo;

    .line 208
    const-string v1, "RESULT_OBJECT"

    .line 207
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/iap/lib/vo/PurchaseVo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mPurchaseVo:Lcom/sec/android/iap/lib/vo/PurchaseVo;

    .line 213
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 214
    iget-object v1, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mPurchaseVo:Lcom/sec/android/iap/lib/vo/PurchaseVo;

    .line 215
    iget-boolean v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mShowSuccessDialog:Z

    .line 213
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->verifyPurchaseResult(Lcom/sec/android/iap/lib/activity/BaseActivity;Lcom/sec/android/iap/lib/vo/PurchaseVo;Z)V

    .line 248
    .end local v6    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 223
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 224
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v1, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v1}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 236
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 237
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_UNKNOWN_ERROR_OCCURRED:I

    invoke-virtual {p0, v3}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v3, "[Lib_Payment]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    const/16 v1, -0x3ea

    .line 244
    sget v2, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_UNKNOWN_ERROR_OCCURRED:I

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "_requestCode"    # I
    .param p2, "_resultCode"    # I
    .param p3, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    if-ne v3, p2, :cond_1

    .line 108
    invoke-direct {p0, p3}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->finishPurchase(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    .line 117
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_PAYMENT_CANCELLED:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v4, v1}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 120
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object v1, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v1}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Samsung Account Result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-ne v3, p2, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->bindIapService()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    .line 154
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_PAYMENT_CANCELLED:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v4, v1}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 157
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_PAYMENT_CANCELLED:I

    invoke-virtual {p0, v1}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/sec/android/iap/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ItemGroupId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ItemId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ShowSuccessDialog"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "ItemGroupId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemGroupId:Ljava/lang/String;

    .line 43
    const-string v2, "ItemId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemId:Ljava/lang/String;

    .line 44
    const-string v2, "ShowSuccessDialog"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mShowSuccessDialog:Z

    .line 64
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-virtual {v2, p0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->setOnInitIapListener(Lcom/sec/android/iap/lib/listener/OnInitIapListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->checkIapPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/sec/android/iap/lib/activity/PaymentActivity;->TAG:Ljava/lang/String;

    const-string v3, "Samsung Account Login..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-virtual {v2, p0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->startAccountActivity(Landroid/app/Activity;)V

    .line 76
    :cond_0
    return-void

    .line 49
    :cond_1
    sget v2, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_AN_INVALID_VALUE_HAS_BEEN_PROVIDED_FOR_SAMSUNG_IN_APP_PURCHASE:I

    .line 50
    const/4 v3, 0x1

    .line 48
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    const/16 v3, -0x3ea

    .line 55
    sget v4, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_AN_INVALID_VALUE_HAS_BEEN_PROVIDED_FOR_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v4}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v2, v3, v4}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/PaymentActivity;->finish()V

    goto :goto_0
.end method

.method public onSucceedInitIap()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 178
    const/4 v1, 0x1

    .line 179
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemGroupId:Ljava/lang/String;

    .line 180
    iget-object v3, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mItemId:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->startPaymentActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected succeedBind()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/PaymentActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->safeInitIap(Lcom/sec/android/iap/lib/activity/BaseActivity;)V

    .line 85
    return-void
.end method
