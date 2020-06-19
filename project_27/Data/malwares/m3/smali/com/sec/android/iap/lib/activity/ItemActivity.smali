.class public Lcom/sec/android/iap/lib/activity/ItemActivity;
.super Lcom/sec/android/iap/lib/activity/BaseActivity;
.source "ItemActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndNum:I

.field private mItemGroupId:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mStartNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sec/android/iap/lib/activity/ItemActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iap/lib/activity/ItemActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/sec/android/iap/lib/activity/BaseActivity;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemGroupId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemType:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mStartNum:I

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mEndNum:I

    .line 10
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sec/android/iap/lib/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/ItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ItemGroupId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "StartNum"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EndNum"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ItemType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "ItemGroupId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemGroupId:Ljava/lang/String;

    .line 48
    const-string v2, "StartNum"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mStartNum:I

    .line 49
    const-string v2, "EndNum"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mEndNum:I

    .line 50
    const-string v2, "ItemType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemType:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/ItemActivity;->checkIapPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/ItemActivity;->bindIapService()V

    .line 76
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget v2, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_AN_INVALID_VALUE_HAS_BEEN_PROVIDED_FOR_SAMSUNG_IN_APP_PURCHASE:I

    .line 56
    const/4 v3, 0x1

    .line 54
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    const/16 v3, -0x3ea

    .line 61
    sget v4, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_AN_INVALID_VALUE_HAS_BEEN_PROVIDED_FOR_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {p0, v4}, Lcom/sec/android/iap/lib/activity/ItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/iap/lib/activity/ItemActivity;->finish()V

    goto :goto_0
.end method

.method protected succeedBind()V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 85
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemGroupId:Ljava/lang/String;

    .line 86
    iget v3, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mStartNum:I

    .line 87
    iget v4, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mEndNum:I

    .line 88
    iget-object v5, p0, Lcom/sec/android/iap/lib/activity/ItemActivity;->mItemType:Ljava/lang/String;

    move-object v1, p0

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->safeGetItemList(Lcom/sec/android/iap/lib/activity/BaseActivity;Ljava/lang/String;IILjava/lang/String;)V

    .line 89
    return-void
.end method
