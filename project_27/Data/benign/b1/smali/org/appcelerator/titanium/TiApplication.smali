.class public abstract Lorg/appcelerator/titanium/TiApplication;
.super Landroid/app/Application;
.source "TiApplication.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/kroll/KrollApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;
    }
.end annotation


# static fields
.field public static final APPLICATION_PREFERENCES_NAME:Ljava/lang/String; = "titanium"

.field private static final DBG:Z

.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DEPLOY_TYPE_DEVELOPMENT:Ljava/lang/String; = "development"

.field public static final DEPLOY_TYPE_PRODUCTION:Ljava/lang/String; = "production"

.field public static final DEPLOY_TYPE_TEST:Ljava/lang/String; = "test"

.field private static final LCAT:Ljava/lang/String; = "TiApplication"

.field private static final MSG_SEND_ANALYTICS:I = 0x64

.field private static final PROPERTY_COMPILE_JS:Ljava/lang/String; = "ti.android.compilejs"

.field private static final PROPERTY_DEPLOY_TYPE:Ljava/lang/String; = "ti.deploytype"

.field private static final PROPERTY_ENABLE_COVERAGE:Ljava/lang/String; = "ti.android.enablecoverage"

.field public static final PROPERTY_FASTDEV:Ljava/lang/String; = "ti.android.fastdev"

.field private static final PROPERTY_THREAD_STACK_SIZE:Ljava/lang/String; = "ti.android.threadstacksize"

.field private static final SEND_ANALYTICS_DELAY:J = 0x7530L

.field private static final STATS_WAIT:J = 0x493e0L

.field protected static activityStack:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected static activityTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public static isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lastAnalyticsTriggered:J

.field private static mainThreadId:J

.field protected static tiApp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected analyticsHandler:Landroid/os/Handler;

.field protected analyticsIntent:Landroid/content/Intent;

.field protected analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

.field private appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

.field private appProperties:Lorg/appcelerator/titanium/TiProperties;

.field private baseUrl:Ljava/lang/String;

.field private buildHash:Ljava/lang/String;

.field private buildTimestamp:Ljava/lang/String;

.field private buildVersion:Ljava/lang/String;

.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private density:Ljava/lang/String;

.field protected deployData:Lorg/appcelerator/kroll/common/TiDeployData;

.field private externalStorageReceiver:Landroid/content/BroadcastReceiver;

.field protected modules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private needsEnrollEvent:Z

.field private needsStartEvent:Z

.field private proxyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

.field private restartPending:Z

.field private rootActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiRootActivity;",
            ">;"
        }
    .end annotation
.end field

.field public rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

.field private startUrl:Ljava/lang/String;

.field protected stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

.field private systemProperties:Lorg/appcelerator/titanium/TiProperties;

.field protected tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 61
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    .line 69
    sput-wide v1, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    .line 70
    sput-wide v1, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 81
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 85
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    .line 138
    const-string v0, "TiApplication"

    const-string v1, "checkpoint, app created."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsHandler:Landroid/os/Handler;

    .line 141
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 142
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 143
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->loadBuildProperties()V

    .line 145
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    .line 149
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    .line 151
    const-string v0, "TiApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Titanium "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/appcelerator/titanium/TiApplication;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->getRemoteCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/appcelerator/titanium/TiApplication;)Lorg/appcelerator/titanium/util/TiResponseCache;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    return-object v0
.end method

.method public static addActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V
    .locals 1
    .param p0, "a"    # Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    .prologue
    .line 117
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public static addToActivityStack(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 170
    return-void
.end method

.method private collectAnalytics()Z
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getAppCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 195
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAppRootOrCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 207
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lorg/appcelerator/titanium/TiApplication;
    .locals 3

    .prologue
    .line 156
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->tiApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    .line 158
    .local v0, "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 164
    .end local v0    # "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    :goto_0
    return-object v0

    .line 163
    .restart local v0    # "tiAppRef":Lorg/appcelerator/titanium/TiApplication;
    :cond_0
    const-string v1, "TiApplication"

    const-string v2, "unable to get the TiApplication instance"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRemoteCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "remote-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 352
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->excludeFileOnCleanup(Ljava/io/File;)V

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getStartFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "defaultStartFile"    # Ljava/lang/String;

    .prologue
    .line 448
    return-object p1
.end method

.method public static isUIThread()Z
    .locals 4

    .prologue
    .line 697
    sget-wide v0, Lorg/appcelerator/titanium/TiApplication;->mainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 698
    const/4 v0, 0x1

    .line 701
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V
    .locals 1
    .param p0, "a"    # Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    .prologue
    .line 122
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public static removeFromActivityStack(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 174
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private startExternalStorageMonitor()V
    .locals 2

    .prologue
    .line 735
    new-instance v1, Lorg/appcelerator/titanium/TiApplication$2;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/TiApplication$2;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 753
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/appcelerator/titanium/TiApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 762
    return-void
.end method

.method private stopExternalStorageMonitor()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->externalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    return-void
.end method

.method public static updateActivityTransitionState(Z)V
    .locals 2
    .param p0, "state"    # Z

    .prologue
    .line 127
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 129
    sget-object v1, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;

    invoke-interface {v1, p0}, Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;->onActivityTransition(Z)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public activityStackHasLaunchActivity()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v3, :cond_0

    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    sget-object v3, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 183
    .local v0, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v3, :cond_2

    .line 184
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "appEventProxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 453
    const-string v0, "TiApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP PROXY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 457
    :cond_0
    return-void
.end method

.method public beforeForcedRestart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 783
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 784
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 785
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_1

    .line 788
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->activityTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 790
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 771
    invoke-static {}, Lorg/appcelerator/titanium/TiActivityWindows;->dispose()V

    .line 772
    return-void
.end method

.method public fireAppEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "handled":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 468
    .local v4, "weakProxy":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 469
    .local v0, "appEventProxy":Lorg/appcelerator/kroll/KrollProxy;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    .line 474
    .local v3, "proxyHandled":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 475
    :goto_1
    goto :goto_0

    .line 474
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 477
    .end local v0    # "appEventProxy":Lorg/appcelerator/kroll/KrollProxy;
    .end local v3    # "proxyHandled":Z
    .end local v4    # "weakProxy":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    :cond_3
    return v1
.end method

.method public forceCompileJS()Z
    .locals 3

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.compilejs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAppGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    return-object v0
.end method

.method public getAppProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 4

    .prologue
    .line 218
    :goto_0
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v1

    .local v1, "activityStackSize":I
    if-lez v1, :cond_0

    .line 219
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 220
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 221
    const-string v2, "TiApplication"

    const-string v3, "activity reference is invalid, removing from activity stack"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v2, Lorg/appcelerator/titanium/TiApplication;->activityStack:Lorg/appcelerator/titanium/util/TiWeakList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 230
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    sget-boolean v2, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v2, :cond_1

    .line 231
    const-string v2, "TiApplication"

    const-string v3, "activity stack is empty, unable to get current activity"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->deployData:Lorg/appcelerator/kroll/common/TiDeployData;

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.deploytype"

    const-string v2, "development"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModuleByName(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 707
    .local v0, "module":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/kroll/KrollModule;>;"
    if-nez v0, :cond_0

    .line 708
    const/4 v1, 0x0

    .line 711
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    goto :goto_0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiRootActivity;

    goto :goto_0
.end method

.method public getRootOrCurrentActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 241
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 254
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 248
    .restart local v0    # "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 253
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const-string v1, "TiApplication"

    const-string v2, "no valid root or current activity found for application instance"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->startUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "basename"    # Ljava/lang/String;
    .param p3, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    invoke-virtual {v0, p3, p2, v1, p1}, Lorg/appcelerator/titanium/TiStylesheet;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    goto :goto_0
.end method

.method public getSystemProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    return-object v0
.end method

.method public getThreadStackSize()I
    .locals 3

    .prologue
    .line 641
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.threadstacksize"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTiBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 601
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    const-string v0, "TiApplication"

    const-string v1, "Analytics service not found."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverageEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "production"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    const-string v2, "ti.android.enablecoverage"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 668
    :cond_0
    return v0
.end method

.method public isDebuggerEnabled()Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v0

    return v0
.end method

.method public isFastDevMode()Z
    .locals 4

    .prologue
    .line 658
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.fastdev"

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "development"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRestartPending()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    return v0
.end method

.method protected loadBuildProperties()V
    .locals 4

    .prologue
    .line 259
    const-string v2, "1.0"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 260
    const-string v2, "N/A"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 261
    const-string v2, "N/A"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/appcelerator/titanium/build.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 263
    .local v1, "versionStream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 264
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 266
    .local v0, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 267
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 270
    :cond_0
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 273
    :cond_1
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "properties":Ljava/util/Properties;
    :cond_2
    :goto_0
    return-void

    .line 276
    .restart local v0    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized needsEnrollEvent()Z
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsStartEvent()Z
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 284
    sget-boolean v2, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "TiApplication"

    const-string v3, "Application onCreate"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 289
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v2, Lorg/appcelerator/titanium/TiApplication$1;

    invoke-direct {v2, p0, v0}, Lorg/appcelerator/titanium/TiApplication$1;-><init>(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 298
    const-string v2, "file:///android_asset/Resources/"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 300
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    const-string v3, "app.js"

    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/TiApplication;->getStartFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v1, "fullPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 303
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    .line 305
    new-instance v2, Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "titanium"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/appcelerator/titanium/TiProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 306
    new-instance v2, Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/appcelerator/titanium/TiProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 308
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "development"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    new-instance v2, Lorg/appcelerator/kroll/common/TiDeployData;

    invoke-direct {v2, p0}, Lorg/appcelerator/kroll/common/TiDeployData;-><init>(Landroid/app/Application;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->deployData:Lorg/appcelerator/kroll/common/TiDeployData;

    .line 311
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-direct {v2, p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;-><init>(Landroid/app/Application;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    .line 312
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->stopExternalStorageMonitor()V

    .line 318
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 319
    return-void
.end method

.method public declared-synchronized postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->collectAnalytics()Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    sget-boolean v3, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v3, :cond_0

    .line 547
    const-string v3, "TiApplication"

    const-string v4, "Analytics are disabled, ignoring postAnalyticsEvent"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_1
    :try_start_1
    sget-boolean v3, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v3, :cond_2

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Analytics Event: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n aguid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n isJSON="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->mustExpandPayload()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n payload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v3, "TiApplication"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.enroll"

    if-ne v3, v4, :cond_3

    .line 567
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    if-eqz v3, :cond_0

    .line 568
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 569
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 570
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 571
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->markEnrolled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 545
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 574
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.start"

    if-ne v3, v4, :cond_4

    .line 575
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    if-eqz v3, :cond_0

    .line 576
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 577
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 578
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    goto/16 :goto_0

    .line 583
    :cond_4
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.end"

    if-ne v3, v4, :cond_5

    .line 584
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 585
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 586
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    goto/16 :goto_0

    .line 589
    :cond_5
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 591
    .local v0, "now":J
    sget-wide v3, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 592
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 593
    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public postAppInfo()V
    .locals 0

    .prologue
    .line 323
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->initialize()V

    .line 324
    invoke-static {p0}, Lorg/appcelerator/kroll/common/TiFastDev;->initFastDev(Lorg/appcelerator/kroll/KrollApplication;)V

    .line 325
    return-void
.end method

.method public postOnCreate()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    .line 330
    .local v0, "runtime":Lorg/appcelerator/kroll/KrollRuntime;
    if-eqz v0, :cond_0

    .line 331
    const-string v1, "TiApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Titanium Javascript runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getRuntimeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v2, "ti.android.debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    .line 339
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->startExternalStorageMonitor()V

    .line 342
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->getRemoteCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/appcelerator/titanium/util/TiResponseCache;-><init>(Ljava/io/File;Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 343
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->responseCache:Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 344
    return-void

    .line 334
    :cond_0
    const-string v1, "TiApplication"

    const-string v2, "Titanium Javascript runtime: unknown"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerModuleInstance(Ljava/lang/String;Lorg/appcelerator/kroll/KrollModule;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "module"    # Lorg/appcelerator/kroll/KrollModule;

    .prologue
    .line 716
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const-string v0, "TiApplication"

    const-string v1, "Registering module with name already in use."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-void
.end method

.method public registerProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 510
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getProxyId()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "proxyId":Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_0
    return-void
.end method

.method public removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "appEventProxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 461
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method public scheduleRestart(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 673
    const-string v1, "TiApplication"

    const-string v2, "Scheduling application restart"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-boolean v1, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v1, :cond_0

    .line 675
    const-string v1, "TiApplication"

    const-string v2, "Here is call stack leading to restart. (NOTE: this is not a real exception, just a stack trace.) :"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiApplication;->restartPending:Z

    .line 679
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 680
    .local v0, "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiRootActivity;->restartActivity(I)V

    .line 683
    :cond_1
    return-void
.end method

.method public sendAnalytics()V
    .locals 4

    .prologue
    .line 611
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 612
    monitor-enter p0

    .line 613
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    monitor-exit p0

    .line 617
    :cond_0
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 4
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "newValue"    # Landroid/app/Activity;

    .prologue
    .line 416
    monitor-enter p0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 421
    .local v1, "currentActivity":Landroid/app/Activity;
    instance-of v3, v1, Landroid/app/TabActivity;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v3, :cond_0

    .line 422
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiActivity;

    move-object v2, v0

    .line 423
    .local v2, "tiActivity":Lorg/appcelerator/titanium/TiActivity;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 426
    monitor-exit p0

    .line 434
    .end local v2    # "tiActivity":Lorg/appcelerator/titanium/TiActivity;
    :goto_0
    return-void

    .line 430
    :cond_0
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    .line 431
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 433
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v1    # "currentActivity":Landroid/app/Activity;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 5
    .param p1, "rootActivity"    # Lorg/appcelerator/titanium/TiRootActivity;

    .prologue
    const/4 v3, 0x0

    .line 359
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Ljava/lang/ref/WeakReference;

    .line 360
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 363
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 364
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiRootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 365
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 381
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->collectAnalytics()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    .line 383
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    .line 384
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->needsEnrollEvent()Z

    move-result v2

    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 386
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v3, "ti.deploytype"

    const-string v4, "unknown"

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "deployType":Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppEnrollEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 391
    .end local v0    # "deployType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v3, "ti.deploytype"

    const-string v4, "unknown"

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .restart local v0    # "deployType":Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppStartEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 402
    .end local v0    # "deployType":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->tempFileHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->scheduleCleanTempDir()V

    .line 403
    return-void

    .line 368
    :sswitch_0
    const-string v2, "high"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 372
    :sswitch_1
    const-string v2, "medium"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 376
    :sswitch_2
    const-string v2, "low"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 398
    :cond_2
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 399
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 400
    const-string v2, "TiApplication"

    const-string v3, "Analytics have been disabled"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public unregisterProxy(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 3
    .param p1, "proxyId"    # Ljava/lang/String;

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "proxy":Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 521
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 525
    .restart local v0    # "proxy":Lorg/appcelerator/kroll/KrollProxy;
    :cond_0
    return-object v0
.end method

.method public abstract verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V
.end method

.method public waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
    .locals 0
    .param p1, "l"    # Lorg/appcelerator/kroll/common/CurrentActivityListener;

    .prologue
    .line 725
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    .line 726
    return-void
.end method
