.class Lcom/sec/android/iap/lib/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/sec/android/iap/lib/listener/OnIapBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iap/lib/activity/BaseActivity;->bindIapService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/iap/lib/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindIapFinished(I)V
    .locals 6
    .param p1, "_result"    # I

    .prologue
    .line 166
    invoke-static {}, Lcom/sec/android/iap/lib/activity/BaseActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binding OK... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sec/android/iap/lib/activity/BaseActivity;->succeedBind()V

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    iget-object v0, v0, Lcom/sec/android/iap/lib/activity/BaseActivity;->mErrorVo:Lcom/sec/android/iap/lib/vo/ErrorVo;

    const/16 v1, -0x3ea

    .line 183
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v3, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_YOUR_PURCHASE_VIA_SAMSUNG_IN_APP_PURCHASE_IS_INVALID_A_FAKE_APPLICATION_HAS_BEEN_DETECTED_CHECK_THE_APP_MSG:I

    invoke-virtual {v2, v3}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/iap/lib/vo/ErrorVo;->setError(ILjava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    iget-object v0, v0, Lcom/sec/android/iap/lib/activity/BaseActivity;->mSamsungIapHelper:Lcom/sec/android/iap/lib/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    .line 188
    iget-object v2, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v3, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_SAMSUNG_IN_APP_PURCHASE:I

    invoke-virtual {v2, v3}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/iap/lib/activity/BaseActivity$1;->this$0:Lcom/sec/android/iap/lib/activity/BaseActivity;

    sget v5, Lcom/sec/android/iap/lib/R$string;->IDS_SAPPS_POP_UNKNOWN_ERROR_OCCURRED:I

    invoke-virtual {v4, v5}, Lcom/sec/android/iap/lib/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v4, "[Lib_Bind]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    const/4 v4, 0x1

    .line 192
    const/4 v5, 0x0

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/lib/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
