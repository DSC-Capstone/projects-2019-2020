.class public Lti/modules/titanium/ui/TiUIActivityWindow;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityWindow.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUIActivityWindow"

.field private static final MSG_ACTIVITY_CREATED:I = 0x3e8

.field private static final MSG_ANIMATE:I = 0x64

.field private static final WINDOW_ID_PREFIX:Ljava/lang/String; = "window$"

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected activityKey:Ljava/lang/String;

.field protected animate:Z

.field protected handler:Landroid/os/Handler;

.field protected lastHeight:I

.field protected lastWidth:I

.field protected messageId:I

.field protected messenger:Landroid/os/Messenger;

.field protected windowActivity:Landroid/app/Activity;

.field protected windowId:I

.field protected windowUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TiUIActivityWindow;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V
    .locals 3
    .param p1, "proxy"    # Lti/modules/titanium/ui/ActivityWindowProxy;
    .param p2, "options"    # Lorg/appcelerator/kroll/KrollDict;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "messageId"    # I

    .prologue
    const/4 v2, -0x1

    .line 71
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 74
    sget-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    :cond_0
    iput-object p3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 79
    iput p4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 81
    iput v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 82
    iput v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 84
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowId:I

    .line 85
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/TiUIActivityWindow;->createNewActivity(Ljava/util/HashMap;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 2
    .param p1, "proxy"    # Lti/modules/titanium/ui/ActivityWindowProxy;
    .param p2, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V
    .locals 3
    .param p1, "proxy"    # Lti/modules/titanium/ui/ActivityWindowProxy;
    .param p2, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "messageId"    # I

    .prologue
    const/4 v2, -0x1

    .line 95
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 96
    iput-object p2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 98
    sget-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    :cond_0
    iput-object p3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 103
    iput p4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 105
    iput v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 106
    iput v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 108
    invoke-virtual {p1, p2}, Lti/modules/titanium/ui/ActivityWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBooted()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/TiUIActivityWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/TiUIActivityWindow;

    .prologue
    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private handleBackground(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "opacityValue"    # Ljava/lang/Object;
    .param p3, "post"    # Z

    .prologue
    .line 315
    if-eqz p1, :cond_1

    .line 316
    if-eqz p2, :cond_0

    .line 317
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p3}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V

    .line 322
    :cond_1
    return-void
.end method

.method private handleBackgroundColor(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "opacityValue"    # Ljava/lang/Object;
    .param p3, "post"    # Z

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    .line 347
    .local v0, "cd":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p2, p3}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackground(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    .line 352
    .end local v0    # "cd":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v1, "TiUIActivityWindow"

    const-string v2, "Unable to set opacity w/o a backgroundColor"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBackgroundColor(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "post"    # Z

    .prologue
    .line 326
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "opacity"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, "opacity":Ljava/lang/Object;
    invoke-direct {p0, p1, v0, p2}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundColor(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 328
    return-void
.end method

.method private handleBackgroundImage(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "opacityValue"    # Ljava/lang/Object;
    .param p3, "post"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, "bd":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p2, p3}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackground(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    .line 368
    .end local v0    # "bd":Landroid/graphics/drawable/Drawable;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    return-void
.end method

.method private handleBackgroundImage(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "post"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "opacity"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "opacity":Ljava/lang/Object;
    invoke-direct {p0, p1, v0, p2}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundImage(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 358
    return-void
.end method

.method private setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "opacity"    # F
    .param p3, "firstTime"    # Z

    .prologue
    .line 332
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 333
    .local v0, "alpha":I
    const/16 v1, 0xfe

    if-le v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 334
    const/16 v0, 0xfe

    .line 340
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 341
    return-void

    .line 336
    :cond_1
    if-gez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindProxies()V
    .locals 4

    .prologue
    .line 170
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v3, v3, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_1

    .line 171
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 172
    .local v1, "tiActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 174
    .local v2, "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    .line 175
    .local v0, "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    if-nez v0, :cond_0

    .line 176
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 179
    :cond_0
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 181
    .end local v0    # "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v1    # "tiActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    .end local v2    # "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_1
    return-void
.end method

.method protected bindWindowActivity(Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    const-string v1, "TiUIActivityWindow"

    const-string v2, "we shouldnt be getting in here to bindWindowActivity!!!"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v0
.end method

.method public close(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 220
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 222
    .local v0, "animateOnClose":Z
    const/4 v1, 0x0

    .line 223
    .local v1, "animated":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 224
    const-string v2, "animated"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .end local v1    # "animated":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    .line 228
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 232
    if-nez v0, :cond_3

    .line 233
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 234
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 241
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 242
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 244
    :cond_2
    return-void

    .line 237
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected createIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 551
    new-instance v4, Landroid/content/Intent;

    const-class v15, Lorg/appcelerator/titanium/TiActivity;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "fullscreen"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 554
    .local v3, "fullscreen":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 555
    const-string v15, "fullscreen"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "navBarHidden"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 559
    .local v10, "navBarHidden":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 560
    const-string v15, "navBarHidden"

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "modal"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 564
    .local v9, "modalProperty":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 566
    .local v8, "modal":Z
    if-eqz v9, :cond_2

    .line 567
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v8

    .line 568
    const-string v15, "modal"

    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    if-eqz v8, :cond_2

    .line 571
    const-class v15, Lorg/appcelerator/titanium/TiModalActivity;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 575
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "opacity"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 576
    .local v11, "opacity":Ljava/lang/Object;
    if-eqz v11, :cond_3

    if-nez v8, :cond_3

    .line 577
    const-class v15, Lorg/appcelerator/titanium/TiTranslucentActivity;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 580
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "url"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 581
    .local v13, "url":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 582
    const-string v15, "url"

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "keepScreenOn"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 586
    .local v5, "keepScreenOn":Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 587
    const-string v15, "keepScreenOn"

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "layout"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 591
    .local v6, "layout":Ljava/lang/Object;
    if-eqz v6, :cond_6

    .line 592
    const-string v15, "layout"

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "windowSoftInputMode"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 596
    .local v14, "windowSoftInputMode":Ljava/lang/Object;
    if-eqz v14, :cond_7

    .line 597
    const-string v15, "windowSoftInputMode"

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "windowPixelFormat"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 601
    .local v12, "pixelFormat":Ljava/lang/Object;
    if-eqz v12, :cond_8

    .line 602
    const-string v15, "windowPixelFormat"

    invoke-static {v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    :cond_8
    const/4 v2, 0x0

    .line 606
    .local v2, "finishRoot":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "exitOnClose"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 608
    .local v1, "exitOnClose":Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 609
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 612
    :cond_9
    const-string v15, "finishRoot"

    invoke-virtual {v4, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    new-instance v7, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    invoke-direct {v7, v15}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 615
    .local v7, "messenger":Landroid/os/Messenger;
    const-string v15, "messenger"

    invoke-virtual {v4, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 617
    const-string v15, "msgActivityCreatedId"

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v15, "useActivityWindow"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    const-string v15, "windowId"

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    return-object v4
.end method

.method protected createNewActivity(Ljava/util/HashMap;)V
    .locals 5
    .param p1, "options"    # Ljava/util/HashMap;

    .prologue
    .line 115
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->createIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "animated"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "animated":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 120
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 123
    :cond_0
    iget-boolean v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    if-nez v3, :cond_1

    .line 124
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const-string v3, "animate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 283
    .local v0, "tia":Lorg/appcelerator/titanium/TiBaseActivity;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    goto :goto_0
.end method

.method protected getLayoutArrangement()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .locals 5

    .prologue
    .line 533
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 535
    .local v0, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "layout"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "layout":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 537
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "layoutString":Ljava/lang/String;
    const-string v3, "vertical"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 546
    .end local v2    # "layoutString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 541
    .restart local v2    # "layoutString":Ljava/lang/String;
    :cond_1
    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handleBooted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->activityKey:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "layout":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 189
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->registerForTouch(Landroid/view/View;)V

    .line 191
    new-instance v3, Lti/modules/titanium/ui/TiUIActivityWindow$1;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/TiUIActivityWindow$1;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 198
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 202
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 212
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v3, v3, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 214
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v3, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBaseActivity;->fireInitialFocus()V

    .line 216
    :cond_1
    return-void

    .line 204
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "TiUIActivityWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 251
    :sswitch_0
    sget-boolean v0, Lti/modules/titanium/ui/TiUIActivityWindow;->DBG:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "TiUIActivityWindow"

    const-string v2, "Received Activity creation message"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 259
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 260
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBooted()V

    move v0, v1

    .line 262
    goto :goto_0

    .line 265
    :sswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->animate()V

    move v0, v1

    .line 267
    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleWindowPixelFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 524
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    const-string v0, "TiUIActivityWindow"

    const-string v1, "Activity is null. windowPixelFormat not set."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v7, 0x1

    .line 374
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 375
    const-string v5, "opacity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 376
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "opacity"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v7}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundImage(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 391
    :cond_0
    :goto_0
    const-string v5, "title"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    const-string v5, "title"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_b

    .line 395
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "layout"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    const/4 v2, 0x0

    .line 405
    .local v2, "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v5, v5, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v5, :cond_2

    .line 406
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v5, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v2

    .line 409
    :cond_2
    if-eqz v2, :cond_3

    .line 410
    const-string v5, "layout"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 414
    .end local v2    # "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_3
    const-string v5, "keepScreenOn"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 415
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 416
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const-string v6, "keepScreenOn"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 419
    :cond_4
    const-string v5, "keepScreenOn"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_5
    const-string v5, "windowPixelFormat"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 423
    const-string v5, "windowPixelFormat"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleWindowPixelFormat(I)V

    .line 426
    :cond_6
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 427
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "activityObject":Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 429
    .local v1, "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    instance-of v5, v0, Ljava/util/HashMap;

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 430
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "activityObject":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 431
    .local v3, "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 436
    .end local v1    # "activityProxy":Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v3    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_7
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 439
    return-void

    .line 379
    :cond_8
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundImage(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 382
    :cond_9
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    const-string v5, "opacity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 384
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "opacity"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v7}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundColor(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 387
    :cond_a
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 398
    .restart local v4    # "title":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v6, 0x0

    .line 444
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    if-eqz p3, :cond_1

    .line 446
    invoke-direct {p0, p3, v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundImage(Ljava/lang/Object;Z)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v5, "backgroundColor"

    invoke-virtual {p4, v5}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 452
    :cond_2
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    invoke-direct {p0, p3, v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 455
    :cond_3
    const-string v5, "width"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "height"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 456
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 457
    .local v3, "w":Landroid/view/Window;
    iget v4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 458
    .local v4, "width":I
    iget v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 460
    .local v0, "height":I
    const-string v5, "width"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 461
    if-eqz p3, :cond_7

    .line 462
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    .line 469
    :cond_5
    :goto_1
    const-string v5, "height"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 470
    if-eqz p3, :cond_8

    .line 471
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 478
    :cond_6
    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/view/Window;->setLayout(II)V

    .line 480
    iput v4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 481
    iput v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    goto :goto_0

    .line 465
    :cond_7
    const/4 v4, -0x1

    goto :goto_1

    .line 474
    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 483
    .end local v0    # "height":I
    .end local v3    # "w":Landroid/view/Window;
    .end local v4    # "width":I
    :cond_9
    const-string v5, "title"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 484
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "title":Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_a

    .line 487
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :cond_a
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    .end local v2    # "title":Ljava/lang/String;
    :cond_b
    const-string v5, "layout"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 494
    const/4 v1, 0x0

    .line 496
    .local v1, "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v5, v5, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v5, :cond_c

    .line 497
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v5, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    .line 500
    :cond_c
    if-eqz v1, :cond_0

    .line 501
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    .end local v1    # "layout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_d
    const-string v5, "opacity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 505
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/TiUIActivityWindow;->setOpacity(F)V

    goto/16 :goto_0

    .line 507
    :cond_e
    const-string v5, "keepScreenOn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 508
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 509
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    .line 512
    :cond_f
    const-string v5, "windowPixelFormat"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 513
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleWindowPixelFormat(I)V

    goto/16 :goto_0

    .line 516
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 634
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 635
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 636
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 637
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 638
    return-void
.end method

.method protected setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "post"    # Z

    .prologue
    .line 292
    if-eqz p2, :cond_0

    .line 293
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/TiUIActivityWindow$2;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/TiUIActivityWindow$2;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOpacity(F)V
    .locals 2
    .param p1, "opacity"    # F

    .prologue
    .line 627
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V

    .line 628
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 629
    return-void
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 140
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 141
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->bindProxies()V

    .line 142
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "windowCreated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 143
    return-void
.end method
