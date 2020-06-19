.class Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;
.super Landroid/os/AsyncTask;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iap/lib/helper/SamsungIapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitIapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

.field private mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

.field final synthetic this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/iap/lib/helper/SamsungIapHelper;Lcom/sec/android/iap/lib/activity/BaseActivity;)V
    .locals 2
    .param p2, "_activity"    # Lcom/sec/android/iap/lib/activity/BaseActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    .line 395
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 393
    new-instance v0, Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-direct {v0}, Lcom/sec/android/iap/lib/vo/ErrorVo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    .line 397
    iput-object p2, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 399
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/lib/activity/BaseActivity;->setErrorVo(Lcom/sec/android/iap/lib/vo/ErrorVo;)V

    .line 400
    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;)Lcom/sec/android/iap/lib/vo/ErrorVo;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;)Lcom/sec/android/iap/lib/activity/BaseActivity;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-static {v1}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$0(Lcom/sec/android/iap/lib/helper/SamsungIapHelper;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 411
    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 423
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 434
    :goto_1
    return-object v1

    .line 415
    :cond_0
    invoke-static {}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start Init... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    iget-object v2, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->init(Lcom/sec/android/iap/lib/vo/ErrorVo;)V

    .line 419
    invoke-static {}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end Init... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    .line 428
    const/16 v2, -0x3e8

    .line 429
    iget-object v3, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 430
    sget v4, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_UNKNOWN_ERROR_OCCURRED:I

    .line 429
    invoke-virtual {v3, v4}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v1, v2, v3}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 443
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v0}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/lib/helper/SamsungIapHelper;)Lcom/sec/android/iap/lib/listener/OnInitIapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$3(Lcom/sec/android/iap/lib/helper/SamsungIapHelper;I)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/lib/helper/SamsungIapHelper;)Lcom/sec/android/iap/lib/listener/OnInitIapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/iap/lib/listener/OnInitIapListener;->onSucceedInitIap()V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v0}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    const/16 v1, -0x3e9

    if-ne v0, v1, :cond_2

    .line 465
    new-instance v5, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask$1;

    invoke-direct {v5, p0}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask$1;-><init>(Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;)V

    .line 497
    .local v5, "OkBtnRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 498
    iget-object v2, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v3, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {v2, v3}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 499
    iget-object v3, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v3}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 511
    .end local v5    # "OkBtnRunnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    iget-object v7, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 512
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 513
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    invoke-virtual {v0}, Lcom/sec/android/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    .line 511
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 525
    :cond_3
    iget-object v6, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    iget-object v7, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 526
    iget-object v0, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v1, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->mActivity:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v2, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_UNKNOWN_ERROR_OCCURRED:I

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    const-string v1, "[Lib_Init]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    .line 525
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper$InitIapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
