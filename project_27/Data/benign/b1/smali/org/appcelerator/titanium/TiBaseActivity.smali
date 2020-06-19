.class public abstract Lorg/appcelerator/titanium/TiBaseActivity;
.super Landroid/app/Activity;
.source "TiBaseActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;,
        Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "TiBaseActivity"

.field private static orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

.field protected static previousOrientation:I


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field protected configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field protected layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field public lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field protected menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

.field protected messenger:Landroid/os/Messenger;

.field protected msgActivityCreatedId:I

.field protected msgId:I

.field protected mustFireInitialFocus:Z

.field private onDestroyFired:Z

.field protected orientationDegrees:I

.field private originalOrientationMode:I

.field protected supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

.field protected view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 72
    const/4 v0, -0x1

    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 57
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 58
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 66
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 70
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 71
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public static callOrientationChangedListener(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 572
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    if-eqz v0, :cond_0

    sget v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 573
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    .line 574
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;->onOrientationChanged(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public static deregisterOrientationListener()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 93
    return-void
.end method

.method public static isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1018
    if-eqz p1, :cond_0

    instance-of v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->activityStackHasLaunchActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x1

    .line 1034
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerOrientationListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .param p0, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .prologue
    .line 87
    sput-object p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 88
    return-void
.end method

.method private releaseDialogs()V
    .locals 3

    .prologue
    .line 622
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 623
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 624
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 627
    :cond_0
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 629
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    .line 630
    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1005
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1006
    return-void
.end method

.method protected activityOnDestroy()V
    .locals 0

    .prologue
    .line 1000
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1001
    return-void
.end method

.method protected activityOnPause()V
    .locals 0

    .prologue
    .line 984
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 985
    return-void
.end method

.method protected activityOnResume()V
    .locals 0

    .prologue
    .line 988
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 989
    return-void
.end method

.method protected activityOnStart()V
    .locals 0

    .prologue
    .line 996
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 997
    return-void
.end method

.method protected activityOnStop()V
    .locals 0

    .prologue
    .line 992
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 993
    return-void
.end method

.method public addConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 148
    return-void
.end method

.method public addDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 2
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .prologue
    .line 611
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 612
    return-void
.end method

.method protected createLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 4

    .prologue
    .line 239
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 241
    .local v0, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "layoutFromIntent":Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 249
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v2, p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    return-object v2

    .line 245
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public deregisterOrientationChangedListener()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 163
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 465
    const/4 v0, 0x0

    .line 468
    .local v0, "handled":Z
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v2, :cond_0

    .line 469
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 474
    .local v1, "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    if-nez v1, :cond_1

    .line 475
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 545
    :goto_1
    return v2

    .line 471
    .end local v1    # "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .restart local v1    # "window":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 541
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 542
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_3
    move v2, v0

    .line 545
    goto :goto_1

    .line 480
    :sswitch_0
    const-string v2, "android:back"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 482
    const-string v2, "android:back"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 484
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 490
    :sswitch_1
    const-string v2, "android:camera"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 492
    const-string v2, "android:camera"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 494
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 500
    :sswitch_2
    const-string v2, "android:focus"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 502
    const-string v2, "android:focus"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 504
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 510
    :sswitch_3
    const-string v2, "android:search"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 512
    const-string v2, "android:search"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 514
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 520
    :sswitch_4
    const-string v2, "android:volup"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 522
    const-string v2, "android:volup"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 524
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 530
    :sswitch_5
    const-string v2, "android:voldown"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 532
    const-string v2, "android:voldown"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 534
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x50 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public finish()V
    .locals 6

    .prologue
    .line 935
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_0

    .line 936
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 937
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "source"

    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v5, "close"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 941
    .end local v2    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v4, "animate"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 944
    .local v0, "animate":Z
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 945
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 946
    .local v1, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v1, :cond_1

    .line 947
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v3

    .line 948
    .local v3, "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 949
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 954
    .end local v1    # "app":Lorg/appcelerator/titanium/TiApplication;
    .end local v3    # "rootActivity":Lorg/appcelerator/titanium/TiRootActivity;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 956
    if-nez v0, :cond_2

    .line 957
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 959
    :cond_2
    return-void
.end method

.method public fireInitialFocus()V
    .locals 3

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    .line 205
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method protected fireOnDestroy()V
    .locals 3

    .prologue
    .line 919
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    if-nez v0, :cond_1

    .line 920
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "destroy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 923
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 925
    :cond_1
    return-void
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    return-object v0
.end method

.method protected getIntentBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 174
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method protected getIntentInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 186
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method protected getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 198
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    return-object v0
.end method

.method public getOriginalOrientationMode()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    return v0
.end method

.method protected getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getUniqueResultCode()I
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->getUniqueResultCode()I

    move-result v0

    return v0
.end method

.method public getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method protected handleSendMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 423
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0
.end method

.method protected isTabActivity()Z
    .locals 2

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "isTab":Z
    instance-of v1, p0, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v1, :cond_0

    .line 965
    check-cast p0, Lorg/appcelerator/titanium/TiActivity;

    .end local p0    # "this":Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    const/4 v0, 0x1

    .line 970
    :cond_0
    return v0
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I
    .param p3, "resultHandler"    # Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 453
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 458
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 460
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 581
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 583
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 584
    .local v1, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    invoke-interface {v2, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;->onConfigurationChanged(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 589
    .end local v1    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->callOrientationChangedListener(Landroid/content/res/Configuration;)V

    .line 590
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 309
    sget-boolean v3, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 310
    const-string v3, "TiBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 315
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    const-string v3, "TiBaseActivity"

    const-string v4, "Unsupported, out-of-order activity creation. Finishing."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 326
    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 327
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isTabActivity()Z

    move-result v3

    if-nez v3, :cond_4

    .line 332
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->addToActivityStack(Landroid/app/Activity;)V

    .line 336
    :cond_4
    new-instance v3, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 339
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementActivityRefCount()V

    .line 341
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 343
    const-string v3, "messenger"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 344
    const-string v3, "messenger"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    iput-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    .line 345
    const-string v3, "msgActivityCreatedId"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 346
    const-string v3, "messageId"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 349
    :cond_5
    const-string v3, "windowPixelFormat"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 350
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "windowPixelFormat"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 355
    :cond_6
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->intializeDisplayMetrics(Landroid/app/Activity;)V

    .line 357
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->createLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 358
    if-eqz v0, :cond_7

    const-string v3, "keepScreenOn"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 359
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v4, "keepScreenOn"

    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getKeepScreenOn()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setKeepScreenOn(Z)V

    .line 362
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 368
    .local v1, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v2, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 370
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 372
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v3, :cond_8

    .line 373
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "create"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 377
    :cond_8
    invoke-virtual {v2, p0, v1}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 379
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->setContentView(Landroid/view/View;)V

    .line 381
    iget v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 383
    iget v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 387
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getRequestedOrientation()I

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 391
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getOrientationModes()[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->updateOrientation()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 551
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lorg/appcelerator/titanium/util/TiMenuSupport;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiMenuSupport;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onCreateOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 840
    sget-boolean v5, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v5, :cond_0

    .line 841
    const-string v5, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 846
    .local v4, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 847
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 848
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 849
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 854
    :cond_2
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 855
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    .local v2, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v5, 0x4

    :try_start_1
    invoke-static {p0, v2, v5}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 859
    :catch_0
    move-exception v3

    .line 860
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dispatching lifecycle event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 863
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 865
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isTabActivity()Z

    move-result v1

    .line 867
    .local v1, "isTab":Z
    if-eqz v1, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 868
    :cond_4
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 871
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 875
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 877
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v5

    if-nez v5, :cond_6

    .line 879
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "finishRoot"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    :cond_6
    const/16 v5, 0xfa

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 883
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 888
    :cond_7
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->fireOnDestroy()V

    .line 891
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_8

    .line 892
    const-string v5, "TiBaseActivity"

    const-string v6, "Layout cleanup."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 894
    iput-object v9, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 897
    :cond_8
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v5, :cond_9

    .line 898
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity()V

    .line 899
    iput-object v9, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 902
    :cond_9
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-eqz v5, :cond_a

    .line 903
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiMenuSupport;->destroy()V

    .line 904
    iput-object v9, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 907
    :cond_a
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v5, :cond_b

    .line 908
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->release()V

    .line 909
    iput-object v9, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 912
    :cond_b
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementActivityRefCount()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 597
    sget-boolean v2, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 598
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onNewIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_1

    .line 602
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v1, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 603
    .local v1, "ip":Lorg/appcelerator/titanium/proxy/IntentProxy;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 604
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "newIntent"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 607
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "ip":Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 561
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 635
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 637
    sget-boolean v4, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v4, :cond_0

    .line 638
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onPause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 643
    .local v3, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 644
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs()V

    .line 645
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 646
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 652
    invoke-virtual {v3, p0, v7}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 654
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs()V

    .line 658
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_4

    .line 659
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "pause"

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 662
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 663
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x2

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 667
    :catch_0
    move-exception v2

    .line 668
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 671
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 567
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onPrepareOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 808
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 810
    sget-boolean v2, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 811
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onRestart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 816
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 823
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_1

    .line 827
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 828
    .local v0, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 830
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "restart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 679
    sget-boolean v4, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v4, :cond_0

    .line 680
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onResume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 684
    .local v3, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 685
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 686
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 708
    :cond_1
    :goto_0
    return-void

    .line 691
    :cond_2
    invoke-virtual {v3, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 692
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 694
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_3

    .line 695
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "resume"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 698
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 699
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x1

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 703
    :catch_0
    move-exception v2

    .line 704
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 707
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 713
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 715
    sget-boolean v5, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v5, :cond_0

    .line 716
    const-string v5, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onStart"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 721
    .local v4, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 722
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 723
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 730
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v5, :cond_6

    .line 732
    instance-of v5, p0, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v5, :cond_3

    move-object v5, p0

    check-cast v5, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v5

    if-nez v5, :cond_4

    .line 733
    :cond_3
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v6, "focus"

    invoke-virtual {v5, v6, v8}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 741
    :cond_4
    :goto_1
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v5, :cond_5

    .line 745
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 746
    .local v3, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v4, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 748
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v6, "start"

    invoke-virtual {v5, v6, v8}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {v4, p0, v3}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 754
    .end local v3    # "tempCurrentActivity":Landroid/app/Activity;
    :cond_5
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 755
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p0, v1, v5}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 759
    :catch_0
    move-exception v2

    .line 760
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dispatching lifecycle event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 763
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 738
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->mustFireInitialFocus:Z

    goto :goto_1

    .line 763
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 771
    sget-boolean v3, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 772
    const-string v3, "TiBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onStop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 777
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 803
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v3, :cond_4

    .line 784
    instance-of v3, p0, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiActivity;->isTab()Z

    move-result v3

    if-nez v3, :cond_4

    .line 785
    :cond_3
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "blur"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 789
    :cond_4
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v3, :cond_5

    .line 790
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "stop"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 793
    :cond_5
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 794
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .local v1, "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v3, 0x3

    :try_start_1
    invoke-static {p0, v1, v3}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 798
    :catch_0
    move-exception v2

    .line 799
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 802
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerOrientationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .prologue
    .line 157
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 158
    return-void
.end method

.method public removeConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public removeDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .prologue
    .line 617
    return-void
.end method

.method protected sendMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBaseActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$2;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 138
    return-void
.end method

.method protected setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    const/16 v1, 0x400

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 259
    :cond_0
    return-void
.end method

.method protected setNavBarHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 265
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 267
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 119
    return-void
.end method

.method public setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 113
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 114
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    .line 929
    const-string v0, "finishRoot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected updateTitle()V
    .locals 5

    .prologue
    .line 211
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, "oldTitle":Ljava/lang/String;
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "newTitle":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 218
    const-string v2, ""

    .line 221
    :cond_2
    if-nez v1, :cond_3

    .line 222
    const-string v1, ""

    .line 225
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    move-object v0, v1

    .line 227
    .local v0, "fnewTitle":Ljava/lang/String;
    new-instance v3, Lorg/appcelerator/titanium/TiBaseActivity$1;

    invoke-direct {v3, p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity$1;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected windowCreated()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 277
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 278
    .local v0, "fullscreen":Z
    const-string v8, "navBarHidden"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 279
    .local v3, "navBarHidden":Z
    const-string v8, "modal"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 280
    .local v2, "modal":Z
    const-string v8, "windowSoftInputMode"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v4

    .line 281
    .local v4, "softInputMode":I
    if-eq v4, v11, :cond_4

    const/4 v1, 0x1

    .line 283
    .local v1, "hasSoftInputMode":Z
    :goto_0
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setFullscreen(Z)V

    .line 284
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->setNavBarHidden(Z)V

    .line 286
    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 291
    :cond_0
    if-eqz v1, :cond_2

    .line 292
    sget-boolean v8, Lorg/appcelerator/titanium/TiBaseActivity;->DBG:Z

    if-eqz v8, :cond_1

    .line 293
    const-string v8, "TiBaseActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "windowSoftInputMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 299
    :cond_2
    const-string v8, "useActivityWindow"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 300
    .local v5, "useActivityWindow":Z
    if-eqz v5, :cond_3

    .line 301
    const-string v7, "windowId"

    invoke-virtual {p0, v7, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v6

    .line 302
    .local v6, "windowId":I
    invoke-static {p0, v6}, Lorg/appcelerator/titanium/TiActivityWindows;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    .line 304
    .end local v6    # "windowId":I
    :cond_3
    return-void

    .end local v1    # "hasSoftInputMode":Z
    .end local v5    # "useActivityWindow":Z
    :cond_4
    move v1, v7

    .line 281
    goto :goto_0
.end method
