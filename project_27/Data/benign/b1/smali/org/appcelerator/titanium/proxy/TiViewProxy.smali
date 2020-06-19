.class public abstract Lorg/appcelerator/titanium/proxy/TiViewProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiViewProxy"

.field private static final MSG_ADD_CHILD:I = 0x138

.field private static final MSG_ANIMATE:I = 0x13e

.field private static final MSG_BLUR:I = 0x13a

.field private static final MSG_FIRST_ID:I = 0xd2

.field private static final MSG_FOCUS:I = 0x13b

.field private static final MSG_GETCENTER:I = 0x141

.field private static final MSG_GETSIZE:I = 0x140

.field private static final MSG_GETVIEW:I = 0x136

.field private static final MSG_HIDE:I = 0x13d

.field protected static final MSG_LAST_ID:I = 0x4b9

.field private static final MSG_REMOVE_CHILD:I = 0x139

.field private static final MSG_SHOW:I = 0x13c

.field private static final MSG_TOIMAGE:I = 0x13f


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private isDecorView:Z

.field private langConversionTable:Lorg/appcelerator/kroll/KrollDict;

.field protected parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected pendingAnimationLock:Ljava/lang/Object;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 89
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private getLocalizedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "lookupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "resid":I
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 134
    :cond_0
    const-string v1, "TiViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Localized text key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    const-string v0, "TiViewProxy"

    const-string v1, "add called with null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    .line 514
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 515
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public addClass([Ljava/lang/Object;)V
    .locals 9
    .param p1, "classNames"    # [Ljava/lang/Object;

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "baseUrl":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v3, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 816
    .local v2, "c":Ljava/lang/Object;
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 818
    .end local v2    # "c":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v3, v8}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 819
    .local v6, "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 820
    return-void
.end method

.method public animate(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 629
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 630
    :try_start_0
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 631
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    .line 633
    .local v2, "options":Ljava/util/HashMap;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 634
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 635
    if-eqz p2, :cond_0

    .line 636
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setCallback(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 645
    .end local v2    # "options":Ljava/util/HashMap;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 646
    monitor-exit v4

    .line 647
    return-void

    .line 638
    :cond_1
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_2

    .line 639
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/view/TiAnimation;

    move-object v1, v0

    .line 640
    .local v1, "anim":Lorg/appcelerator/titanium/view/TiAnimation;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 641
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V

    goto :goto_0

    .line 646
    .end local v1    # "anim":Lorg/appcelerator/titanium/view/TiAnimation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 643
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled argument to animate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public blur()V
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .prologue
    .line 253
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-ne v0, p1, :cond_0

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 257
    :cond_0
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 409
    return-void
.end method

.method public convertPointToView(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 14
    .param p1, "point"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "dest"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: point must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 871
    :cond_0
    if-nez p2, :cond_1

    .line 872
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: destinationView must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 875
    :cond_1
    const-string v11, "x"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 876
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: required property \"x\" not found in point"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 879
    :cond_2
    const-string v11, "y"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 880
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: required property \"y\" not found in point"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 885
    :cond_3
    const-string v11, "x"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v9

    .line 886
    .local v9, "x":I
    const-string v11, "y"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    .line 888
    .local v10, "y":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v7

    .line 889
    .local v7, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual/range {p2 .. p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 890
    .local v3, "destView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v7, :cond_4

    .line 891
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: view has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v2, 0x0

    .line 928
    :goto_0
    return-object v2

    .line 895
    :cond_4
    if-nez v3, :cond_5

    .line 896
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: destinationView has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v2, 0x0

    goto :goto_0

    .line 900
    :cond_5
    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    .line 901
    .local v4, "nativeView":Landroid/view/View;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 902
    .local v1, "destNativeView":Landroid/view/View;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_7

    .line 903
    :cond_6
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: view has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v2, 0x0

    goto :goto_0

    .line 907
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    .line 908
    :cond_8
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: destinationView has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v2, 0x0

    goto :goto_0

    .line 912
    :cond_9
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 913
    .local v8, "viewLocation":[I
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 914
    .local v0, "destLocation":[I
    invoke-virtual {v4, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 915
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 917
    sget-boolean v11, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    if-eqz v11, :cond_a

    .line 918
    const-string v11, "TiViewProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nativeView location in window, x: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v11, "TiViewProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destNativeView location in window, x: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_a
    const/4 v11, 0x0

    aget v11, v8, v11

    add-int v5, v11, v9

    .line 923
    .local v5, "pointWindowX":I
    const/4 v11, 0x1

    aget v11, v8, v11

    add-int v6, v11, v10

    .line 925
    .local v6, "pointWindowY":I
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 926
    .local v2, "destPoint":Lorg/appcelerator/kroll/KrollDict;
    const-string v11, "x"

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v11, "y"

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public abstract createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x1

    .line 776
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 777
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_1

    .line 778
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 783
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 788
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 789
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_0

    .line 790
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 795
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 727
    if-nez p2, :cond_0

    .line 728
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 731
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 733
    .local v0, "handled":Z
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 735
    .local v1, "parentHandled":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 737
    .end local v1    # "parentHandled":Z
    :cond_2
    :goto_0
    return v0

    .line 735
    .restart local v1    # "parentHandled":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 689
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 424
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrlForStylesheet()Ljava/lang/String;
    .locals 6

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    .line 176
    .local v1, "creationUrl":Lorg/appcelerator/titanium/util/TiUrl;
    iget-object v0, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 177
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "app://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    :cond_0
    const-string v0, "app://app.js"

    .line 183
    :goto_0
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "idx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 185
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".js"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_1
    return-object v0

    .line 180
    .end local v2    # "idx":I
    :cond_2
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCenter()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 770
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getHeight()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 383
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getSize()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 388
    .local v0, "size":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeepScreenOn()Z
    .locals 6

    .prologue
    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, "keepScreenOn":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 827
    .local v4, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_0

    .line 828
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 829
    .local v3, "nv":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 830
    invoke-virtual {v3}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 835
    .end local v3    # "nv":Landroid/view/View;
    :cond_0
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 836
    .local v0, "current":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 837
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 838
    .local v1, "currentValue":Z
    if-nez v2, :cond_1

    .line 839
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 855
    .end local v1    # "currentValue":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 841
    .restart local v1    # "currentValue":Z
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v1, v5, :cond_2

    .line 842
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 844
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 848
    .end local v1    # "currentValue":Z
    :cond_3
    if-nez v2, :cond_4

    .line 849
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 852
    :cond_4
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 437
    :goto_0
    return-object v0

    .line 433
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    monitor-exit v1

    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSize()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 366
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 371
    :goto_0
    return-object v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getSize()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 371
    .local v0, "size":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 531
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 533
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 534
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 535
    instance-of v1, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-eqz v1, :cond_0

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 538
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 540
    .local v0, "cv":Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 542
    .end local v0    # "cv":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    return-void
.end method

.method protected handleAnimate()V
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 664
    .local v0, "tiv":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->animate()V

    .line 667
    :cond_0
    return-void
.end method

.method protected handleBlur()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->blur()V

    .line 684
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 143
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v7, :cond_2

    .line 144
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 145
    .local v2, "foundStrings":Lorg/appcelerator/kroll/KrollDict;
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v7}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v7, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "convertKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .local v5, "langKey":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 152
    :try_start_0
    invoke-direct {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getLocalizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "localText":Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v6    # "localText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v7, "TiViewProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Localized text key \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is invalid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v0    # "convertKey":Ljava/lang/String;
    .end local v1    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "langKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 163
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 164
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 167
    .end local v2    # "foundStrings":Lorg/appcelerator/kroll/KrollDict;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 168
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 171
    return-void
.end method

.method protected handleFocus()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 701
    :cond_0
    return-void
.end method

.method protected handleGetView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 4

    .prologue
    .line 442
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_2

    .line 443
    sget-boolean v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "TiViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 448
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 449
    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    if-eqz v1, :cond_1

    .line 450
    if-eqz v0, :cond_3

    .line 451
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 456
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 457
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 459
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v1

    .line 453
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string v1, "TiViewProxy"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 616
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 620
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 622
    const-string v0, "visible"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    :cond_1
    return-void

    .line 620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 263
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 347
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    :goto_0
    return v3

    .line 265
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 266
    .local v1, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 267
    goto :goto_0

    .line 270
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 271
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 272
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 273
    goto :goto_0

    .line 276
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 277
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 278
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 279
    goto :goto_0

    .line 282
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    move v3, v4

    .line 283
    goto :goto_0

    .line 286
    :pswitch_5
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    move v3, v4

    .line 287
    goto :goto_0

    .line 290
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    move v3, v4

    .line 291
    goto :goto_0

    .line 294
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    move v3, v4

    .line 295
    goto :goto_0

    .line 298
    :pswitch_8
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    move v3, v4

    .line 299
    goto :goto_0

    .line 302
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 303
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 304
    goto :goto_0

    .line 307
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 308
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 309
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 312
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 313
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v3, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 319
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v3, "height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 324
    goto/16 :goto_0

    .line 327
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 328
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 329
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 331
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 332
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 333
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "x"

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v10

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v3, "y"

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v10

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    if-nez v0, :cond_3

    .line 338
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 339
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "x"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v3, "y"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_3
    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 344
    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public handlePendingAnimation(Z)V
    .locals 2
    .param p1, "forceQueue"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    if-nez p1, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 658
    :cond_1
    :goto_0
    return-void

    .line 655
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    goto :goto_0
.end method

.method public handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 573
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 578
    :cond_0
    if-eqz p1, :cond_1

    .line 579
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 582
    :cond_1
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 598
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :cond_0
    return-void
.end method

.method protected handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 16
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProxyId()Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, "viewId":Ljava/lang/String;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 197
    .local v11, "styleClasses":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 198
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 200
    :cond_0
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 201
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "className":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v5, v1, v8

    .line 203
    .local v5, "clazz":Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 207
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 208
    .local v3, "c":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 209
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 210
    .local v10, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v10, :cond_3

    .line 211
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 212
    .local v5, "clazz":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 213
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 219
    .end local v3    # "c":Ljava/lang/Object;
    .end local v5    # "clazz":Ljava/lang/Object;
    .end local v7    # "i":I
    .end local v10    # "length":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "baseUrl":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v13

    invoke-virtual {v13, v2, v11, v12}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 221
    .local v6, "dict":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollDict;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 225
    :cond_4
    sget-boolean v13, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    if-eqz v13, :cond_5

    .line 226
    const-string v13, "TiViewProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trying to get stylesheet for base:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",classes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",id:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",dict:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    if-eqz v6, :cond_6

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 234
    .end local v6    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    return-object v6

    .restart local v6    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :cond_6
    move-object/from16 v6, p1

    goto :goto_2
.end method

.method protected handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 716
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 717
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_0

    .line 718
    const/4 v1, 0x0

    .line 721
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->toImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    goto :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 605
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isLocalizedTextId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "idPropertyName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method public realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 468
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 470
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 471
    .local v3, "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 472
    .local v0, "cv":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    .end local v0    # "cv":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    const-string v4, "TiViewProxy"

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 480
    :try_start_1
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v4, :cond_1

    .line 481
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 483
    :cond_1
    monitor-exit v5

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_1

    .line 489
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 491
    .local v1, "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 494
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 495
    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 497
    :cond_1
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 498
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 547
    if-nez p1, :cond_1

    .line 548
    const-string v0, "TiViewProxy"

    const-string v1, "add called with null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 562
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 565
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 758
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->setActivity(Landroid/app/Activity;)V

    .line 759
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 760
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 761
    .local v0, "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 764
    .end local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 799
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 800
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 802
    .local v0, "nv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 806
    .end local v0    # "nv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setHeight(Ljava/lang/Object;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/Object;

    .prologue
    .line 394
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 861
    const-string v0, "keepScreenOn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    return-void
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "idPropertyName"    # Ljava/lang/String;
    .param p2, "idPropertyValue"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    if-nez v5, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "propertyName":Ljava/lang/String;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "thisIdPropertyName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    :try_start_0
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getLocalizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "localText":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v2    # "localText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v5, "TiViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Localized text key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is invalid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 752
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 753
    return-void
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 418
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 419
    return-void
.end method

.method public setWidth(Ljava/lang/Object;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/Object;

    .prologue
    .line 377
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 587
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method
