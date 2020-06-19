.class public abstract Lorg/appcelerator/titanium/TiLaunchActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiLaunchActivity.java"


# static fields
.field private static final DBG:Z

.field private static final FINISH_DELAY:I = 0x1f4

.field private static final MSG_FINISH:I = 0x64

.field private static final RESTART_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TiLaunchActivity"


# instance fields
.field private noLaunchCategoryAlert:Landroid/app/AlertDialog;

.field private noLaunchCategoryDetected:Z

.field private restartAlarmManager:Landroid/app/AlarmManager;

.field private restartDelay:I

.field private restartPendingIntent:Landroid/app/PendingIntent;

.field protected url:Lorg/appcelerator/titanium/util/TiUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    .line 51
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 52
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 53
    iput v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiLaunchActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    return-void
.end method

.method private doFinishForRestart()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    .line 263
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method protected alertMissingLauncher()V
    .locals 11

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 190
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v5

    .line 191
    .local v5, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v7, "ti.android.bug2373.message"

    const-string v8, "An application restart is required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "message":Ljava/lang/String;
    const-string v7, "ti.android.bug2373.restartDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 193
    .local v3, "restartDelay":I
    const-string v7, "ti.android.bug2373.finishDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, "finishDelay":I
    const-string v7, "ti.android.bug2373.skipAlert"

    invoke-virtual {v5, v7, v9}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 197
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 199
    :cond_0
    invoke-virtual {p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 217
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v4, Lorg/appcelerator/titanium/TiLaunchActivity$1;

    invoke-direct {v4, p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity$1;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;II)V

    .line 208
    .local v4, "restartListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v7, "ti.android.bug2373.title"

    const-string v8, "Restart Required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "title":Ljava/lang/String;
    const-string v7, "ti.android.bug2373.buttonText"

    const-string v8, "Continue"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "buttonText":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    .line 215
    iget-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected checkMissingLauncher(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 154
    iput-boolean v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 158
    .local v2, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    .line 160
    if-eqz v2, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "category":Ljava/lang/String;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    iput-boolean v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    .line 169
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v8, :cond_2

    .line 170
    const-string v7, "TiLaunchActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android issue 2373 detected (missing intent CATEGORY_LAUNCHER), restarting app. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v7, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v7, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 172
    iget-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v7}, Lorg/appcelerator/titanium/TiLaunchActivity;->setContentView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v5

    .line 174
    .local v5, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v7, "ti.android.bug2373.backgroundColor"

    const-string v8, "black"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "backgroundColor":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    iget-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setBackgroundColor(I)V

    .line 178
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 184
    .end local v1    # "backgroundColor":I
    .end local v2    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method protected checkMissingLauncher(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 144
    .local v2, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v4, "ti.android.bug2373.disableDetection"

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "detectionDisabled":Z
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkMissingLauncher(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 149
    .end local v0    # "detectionDisabled":Z
    .end local v2    # "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    :cond_0
    return v3
.end method

.method protected contextCreated()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method protected loadActivityScript()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "fullUrl":Ljava/lang/String;
    sget-boolean v1, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "TiLaunchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    const-string v1, "app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_1
    :goto_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v1, v2, v0, v3}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-boolean v1, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v1, :cond_2

    .line 93
    const-string v1, "TiLaunchActivity"

    const-string v2, "Signal JS loaded"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return-void

    .line 85
    :cond_3
    :try_start_1
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 92
    .end local v0    # "fullUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lorg/appcelerator/titanium/TiLaunchActivity;->DBG:Z

    if-eqz v2, :cond_4

    .line 93
    const-string v2, "TiLaunchActivity"

    const-string v3, "Signal JS loaded"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 103
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkMissingLauncher(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    .line 121
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 125
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 127
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 128
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 356
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 358
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v1, :cond_2

    .line 359
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnDestroy()V

    .line 360
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_1

    .line 361
    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(I)V

    .line 363
    :cond_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->beforeForcedRestart()V

    .line 364
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 365
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 366
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 367
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryAlert:Landroid/app/AlertDialog;

    .line 368
    iput-boolean v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_2
    if-eqz v0, :cond_3

    .line 373
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppEndEvent()Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 377
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->resetSid()V

    .line 379
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    .line 299
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnPause()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 272
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onRestart()V

    .line 274
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 276
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    .line 282
    .local v1, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v3, "ti.android.root.reappears.restart"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 283
    .local v0, "restart":Z
    if-eqz v0, :cond_0

    .line 284
    const-string v3, "TiLaunchActivity"

    const-string v4, "Tasks may have been destroyed by Android OS for inactivity. Restarting."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V

    .line 346
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnResume()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStart()V

    goto :goto_0

    .line 333
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->noLaunchCategoryDetected:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStop()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    goto :goto_0
.end method

.method protected restartActivity(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 222
    return-void
.end method

.method protected restartActivity(II)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "finishDelay"    # I

    .prologue
    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "relaunch":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 231
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 233
    iput p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    .line 236
    :cond_0
    if-lez p2, :cond_1

    .line 237
    new-instance v0, Lorg/appcelerator/titanium/TiLaunchActivity$2;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiLaunchActivity$2;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V

    .line 250
    .local v0, "handler":Landroid/os/Handler;
    const/16 v2, 0x64

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    goto :goto_0
.end method

.method protected scriptLoaded()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected windowCreated()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 135
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->loadActivityScript()V

    .line 136
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 137
    return-void
.end method
