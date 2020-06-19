.class public abstract Lorg/appcelerator/titanium/view/TiUIView;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final DBG:Z

.field private static final HONEYCOMB_OR_GREATER:Z

.field private static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "TiUIView"

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static motionEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# instance fields
.field protected animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

.field protected layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

.field private mSetLayerTypeMethod:Ljava/lang/reflect/Method;

.field protected nativeView:Landroid/view/View;

.field protected parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private touchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    .line 61
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    .line 758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    .line 761
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "touchstart"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchmove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchcancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    .line 84
    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    .line 90
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 95
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p1, "x1"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method private applyCustomBackground()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 539
    return-void
.end method

.method private applyCustomBackground(Z)V
    .locals 3
    .param p1, "reuseCurrentDrawable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 543
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v1, :cond_0

    .line 545
    new-instance v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 547
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 548
    .local v0, "currentDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 549
    if-eqz p1, :cond_2

    .line 550
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    .end local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :cond_1
    return-void

    .line 552
    .restart local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 554
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 555
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    goto :goto_0
.end method

.method private dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 769
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 770
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v1, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    return-object v0
.end method

.method private dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .param p1, "dictToCopy"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const-wide/16 v3, 0x0

    .line 777
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 778
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const-string v1, "x"

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :goto_0
    const-string v1, "y"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    const-string v1, "y"

    const-string v2, "y"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :goto_1
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    return-object v0

    .line 781
    :cond_0
    const-string v1, "x"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 786
    :cond_1
    const-string v1, "y"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private disableHWAcceleration()V
    .locals 7

    .prologue
    .line 1026
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v2, :cond_2

    .line 1030
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling hardware acceleration for instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 1034
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1035
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1043
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1047
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1036
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "TiUIView"

    const-string v3, "SecurityException trying to get View.setLayerType to disable hardware acceleration."

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1038
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1039
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "TiUIView"

    const-string v3, "NoSuchMethodException trying to get View.setLayerType to disable hardware acceleration."

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1050
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 1051
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1052
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private doSetClickable(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 996
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doSetClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clickable"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 966
    if-nez p1, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    if-nez p2, :cond_2

    .line 970
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 972
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 973
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    .line 974
    :cond_2
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V

    .line 978
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnLongClickListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private doSetClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 984
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getTouchView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 985
    return-void
.end method

.method private getTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 961
    :goto_0
    return-object v0

    .line 957
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 961
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 661
    const-string v9, "backgroundImage"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "bg":Ljava/lang/String;
    const-string v9, "backgroundSelectedImage"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "bgSelected":Ljava/lang/String;
    const-string v9, "backgroundFocusedImage"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 664
    .local v6, "bgFocused":Ljava/lang/String;
    const-string v9, "backgroundDisabledImage"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "bgDisabled":Ljava/lang/String;
    const-string v9, "backgroundColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "bgColor":Ljava/lang/String;
    const-string v9, "backgroundSelectedColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "bgSelectedColor":Ljava/lang/String;
    const-string v9, "backgroundFocusedColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 669
    .local v7, "bgFocusedColor":Ljava/lang/String;
    const-string v9, "backgroundDisabledColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, "bgDisabledColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    if-eqz v2, :cond_1

    .line 675
    invoke-direct {p0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    :cond_1
    if-eqz v6, :cond_2

    .line 678
    invoke-direct {p0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 680
    :cond_2
    if-eqz v4, :cond_3

    .line 681
    invoke-direct {p0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 684
    :cond_3
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v7, :cond_4

    if-eqz v5, :cond_6

    .line 687
    :cond_4
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v9, :cond_5

    .line 688
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 691
    :cond_5
    invoke-static/range {v0 .. v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    .line 692
    .local v8, "bgDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v9, v8}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    .end local v8    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    return-void
.end method

.method private handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 739
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v2

    if-nez v2, :cond_0

    .line 740
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    new-instance v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-direct {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;-><init>()V

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V

    .line 742
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v0

    .line 744
    .local v0, "border":Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    .line 755
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 756
    return-void

    .line 746
    :cond_2
    const-string v2, "borderRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 747
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    .line 748
    .local v1, "radius":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    sget-boolean v2, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v2, :cond_3

    .line 749
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 751
    :cond_3
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setRadius(F)V

    goto :goto_0

    .line 752
    .end local v1    # "radius":F
    :cond_4
    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setWidth(F)V

    goto :goto_0
.end method

.method private hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 215
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 222
    const-string v0, "backgroundSelectedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasImage(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 207
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundSelectedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundDisabledImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "bgColor"    # Ljava/lang/Integer;

    .prologue
    .line 698
    const-string v2, "borderRadius"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 702
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 703
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v2, :cond_1

    .line 704
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 707
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v2

    if-nez v2, :cond_2

    .line 708
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    new-instance v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-direct {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;-><init>()V

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V

    .line 711
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v0

    .line 713
    .local v0, "border":Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    const-string v2, "borderRadius"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 714
    const-string v2, "borderRadius"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v1

    .line 715
    .local v1, "radius":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    sget-boolean v2, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v2, :cond_3

    .line 716
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 718
    :cond_3
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setRadius(F)V

    .line 720
    .end local v1    # "radius":F
    :cond_4
    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 721
    :cond_5
    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 722
    const-string v2, "borderColor"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    .line 728
    :cond_6
    :goto_0
    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 729
    const-string v2, "borderWidth"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setWidth(F)V

    .line 735
    .end local v0    # "border":Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    :cond_7
    return-void

    .line 724
    .restart local v0    # "border":Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    :cond_8
    if-eqz p2, :cond_6

    .line 725
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    goto :goto_0
.end method

.method private resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 106
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 113
    .end local v0    # "cv":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected allowRegisterForTouch()Z
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public animate()V
    .locals 5

    .prologue
    .line 187
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    move-result-object v1

    .line 188
    .local v1, "builder":Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 190
    .local v0, "as":Landroid/view/animation/AnimationSet;
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting animation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 197
    .end local v0    # "as":Landroid/view/animation/AnimationSet;
    :cond_1
    return-void
.end method

.method protected applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V
    .locals 3
    .param p1, "matrix"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    .line 229
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 230
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 233
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 234
    if-eqz p1, :cond_2

    .line 235
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-result-object v0

    .line 236
    .local v0, "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->interpolate:Z

    .line 237
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setDuration(J)V

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setFillAfter(Z)V

    .line 239
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    .end local v0    # "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public blur()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 597
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 599
    :cond_0
    return-void
.end method

.method public clearOpacity(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 922
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 925
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 591
    :cond_0
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIMM()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 583
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    return-object v0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "TiUIView"

    const-string v1, "Attempt to hide null native control"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected layoutNativeView()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    .line 249
    return-void
.end method

.method protected layoutNativeView(Z)V
    .locals 5
    .param p1, "informParent"    # Z

    .prologue
    .line 253
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 255
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 256
    check-cast v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    .line 257
    .local v1, "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->invalidateWithMatrix(Landroid/view/View;)V

    .line 259
    .end local v1    # "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_0
    if-eqz p1, :cond_1

    .line 260
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 262
    .local v2, "uiv":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 264
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_1

    .line 265
    check-cast v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resort()V

    .line 270
    .end local v2    # "uiv":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 272
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_2
    return-void
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 200
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 203
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 566
    if-eqz p2, :cond_0

    .line 567
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "focus"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "blur"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 463
    const/4 v4, 0x0

    .line 464
    .local v4, "nativeViewNull":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 465
    const/4 v4, 0x1

    .line 466
    const-string v5, "TiUIView"

    const-string v6, "Nativeview is null"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    const-string v5, "layout"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    const-string v5, "layout"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "layout":Ljava/lang/String;
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v5, v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_1

    .line 471
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 474
    .end local v2    # "layout":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 475
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 479
    :cond_2
    const/4 v0, 0x0

    .line 483
    .local v0, "bgColor":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 484
    :cond_3
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 489
    :cond_4
    :goto_0
    const-string v5, "opacity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 490
    const-string v5, "opacity"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 494
    :cond_5
    const-string v5, "visible"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 495
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v5, "visible"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 498
    :cond_6
    const-string v5, "enabled"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v4, :cond_7

    .line 499
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "enabled"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 502
    :cond_7
    const-string v5, "focusable"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    .line 503
    const-string v5, "focusable"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    .line 504
    .local v1, "focusable":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 505
    if-eqz v1, :cond_d

    .line 506
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyClick(Landroid/view/View;)V

    .line 513
    .end local v1    # "focusable":Z
    :cond_8
    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 515
    const-string v5, "transform"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 516
    const-string v5, "transform"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 517
    .local v3, "matrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    if-eqz v3, :cond_9

    .line 518
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    .line 522
    .end local v3    # "matrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_9
    const-string v5, "keepScreenOn"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    .line 523
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "keepScreenOn"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 526
    :cond_a
    return-void

    .line 485
    :cond_b
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 486
    const-string v5, "backgroundColor"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 495
    :cond_c
    const/4 v5, 0x4

    goto/16 :goto_1

    .line 509
    .restart local v1    # "focusable":Z
    :cond_d
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_2
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p2, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 532
    .local v0, "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 534
    .end local v0    # "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 276
    const-string v13, "left"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 277
    if-eqz p3, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 282
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    .line 459
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 280
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 283
    :cond_2
    const-string v13, "top"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 284
    if-eqz p3, :cond_3

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 289
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_2

    .line 290
    :cond_4
    const-string v13, "center"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 293
    :cond_5
    const-string v13, "right"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 294
    if-eqz p3, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 299
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 297
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_3

    .line 300
    :cond_7
    const-string v13, "bottom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 301
    if-eqz p3, :cond_8

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 306
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 304
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_4

    .line 307
    :cond_9
    const-string v13, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 308
    move-object/from16 v0, p3

    instance-of v13, v0, Ljava/util/HashMap;

    if-eqz v13, :cond_a

    move-object/from16 v5, p3

    .line 309
    check-cast v5, Ljava/util/HashMap;

    .line 310
    .local v5, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "width"

    const-string v14, "width"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v13, v1, v14, v2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 311
    const-string v13, "height"

    const-string v14, "height"

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v13, v1, v14, v2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_1

    .line 312
    .end local v5    # "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    if-eqz p3, :cond_0

    .line 313
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported property type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") for key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Must be an object/dictionary"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 315
    :cond_b
    const-string v13, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 316
    if-eqz p3, :cond_d

    .line 317
    const-string v13, "auto"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 327
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 321
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    goto :goto_5

    .line 325
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_5

    .line 328
    :cond_e
    const-string v13, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 329
    if-eqz p3, :cond_10

    .line 330
    const-string v13, "auto"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 340
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 334
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    goto :goto_6

    .line 338
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_6

    .line 341
    :cond_11
    const-string v13, "zIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 342
    if-eqz p3, :cond_12

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v14

    iput v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 347
    :goto_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    goto/16 :goto_1

    .line 345
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_7

    .line 348
    :cond_13
    const-string v13, "focusable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 349
    const-string v13, "focusable"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    .line 350
    .local v6, "focusable":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v13, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 351
    if-eqz v6, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 355
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .line 357
    .end local v6    # "focusable":Z
    :cond_15
    const-string v13, "touchEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 358
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Z)V

    goto/16 :goto_1

    .line 359
    :cond_16
    const-string v13, "visible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_17
    const/4 v13, 0x4

    goto :goto_8

    .line 361
    :cond_18
    const-string v13, "enabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 363
    :cond_19
    const-string v13, "backgroundPadding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 364
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not yet implemented."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 365
    :cond_1a
    const-string v13, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    const-string v13, "background"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1b

    const-string v13, "border"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 369
    :cond_1b
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    .line 373
    .local v4, "d":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v9

    .line 374
    .local v9, "hasImage":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v8

    .line 375
    .local v8, "hasColorState":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v7

    .line 377
    .local v7, "hasBorder":Z
    if-nez v9, :cond_1c

    if-nez v8, :cond_1c

    if-eqz v7, :cond_1f

    :cond_1c
    const/4 v11, 0x1

    .line 379
    .local v11, "requiresCustomBackground":Z
    :goto_9
    if-nez v11, :cond_22

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v13, :cond_1d

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v13}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 383
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 386
    :cond_1d
    const-string v13, "backgroundColor"

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 387
    const-string v13, "backgroundColor"

    invoke-static {v4, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 388
    .local v3, "bgColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v13, :cond_1e

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    .line 436
    .end local v3    # "bgColor":Ljava/lang/Integer;
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v13, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_1

    .line 377
    .end local v11    # "requiresCustomBackground":Z
    :cond_1f
    const/4 v11, 0x0

    goto :goto_9

    .line 393
    .restart local v11    # "requiresCustomBackground":Z
    :cond_20
    const-string v13, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 394
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 396
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v13, :cond_1e

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    goto :goto_a

    .line 402
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v13, :cond_2a

    const/4 v10, 0x1

    .line 403
    .local v10, "newBackground":Z
    :goto_b
    if-eqz v10, :cond_23

    .line 404
    new-instance v13, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v13}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 407
    :cond_23
    const/4 v3, 0x0

    .line 409
    .restart local v3    # "bgColor":Ljava/lang/Integer;
    if-nez v8, :cond_25

    .line 410
    const-string v13, "backgroundColor"

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 411
    const-string v13, "backgroundColor"

    invoke-static {v4, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 412
    if-nez v10, :cond_24

    const-string v13, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    const-string v13, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 416
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    .line 421
    :cond_25
    if-nez v9, :cond_26

    if-eqz v8, :cond_28

    .line 422
    :cond_26
    if-nez v10, :cond_27

    const-string v13, "background"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 423
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 427
    :cond_28
    if-eqz v7, :cond_29

    .line 428
    if-eqz v10, :cond_2b

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 434
    :cond_29
    :goto_c
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    goto/16 :goto_a

    .line 402
    .end local v3    # "bgColor":Ljava/lang/Integer;
    .end local v10    # "newBackground":Z
    :cond_2a
    const/4 v10, 0x0

    goto :goto_b

    .line 430
    .restart local v3    # "bgColor":Ljava/lang/Integer;
    .restart local v10    # "newBackground":Z
    :cond_2b
    const-string v13, "border"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 439
    .end local v3    # "bgColor":Ljava/lang/Integer;
    .end local v4    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v7    # "hasBorder":Z
    .end local v8    # "hasColorState":Z
    .end local v9    # "hasImage":Z
    .end local v10    # "newBackground":Z
    .end local v11    # "requiresCustomBackground":Z
    :cond_2c
    const-string v13, "softKeyboardOnFocus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 440
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Focus state changed to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not honored until next focus event."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 441
    :cond_2d
    const-string v13, "transform"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v13, :cond_0

    .line 443
    check-cast p3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .end local p3    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    goto/16 :goto_1

    .line 445
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2e
    const-string v13, "keepScreenOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v13, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_1

    .line 450
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v12

    .line 451
    .local v12, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v12, :cond_30

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLocalizedTextId(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 452
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 454
    :cond_30
    sget-boolean v13, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v13, :cond_0

    .line 455
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unhandled property key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected registerForKeyClick(Landroid/view/View;)V
    .locals 1
    .param p1, "clickable"    # Landroid/view/View;

    .prologue
    .line 929
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$3;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 945
    return-void
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 799
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V

    .line 802
    :cond_0
    return-void
.end method

.method protected registerForTouch(Landroid/view/View;)V
    .locals 3
    .param p1, "touchable"    # Landroid/view/View;

    .prologue
    .line 806
    if-nez p1, :cond_0

    .line 901
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 810
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/view/TiUIView$1;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/view/TiUIView$1;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 849
    .local v0, "detector":Landroid/view/GestureDetector;
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIView$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView$2;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/GestureDetector;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 900
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;)V

    goto :goto_0
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 603
    sget-boolean v3, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v3, :cond_0

    .line 604
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, "nv":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 608
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 609
    check-cast v2, Landroid/view/ViewGroup;

    .line 610
    .local v2, "vg":Landroid/view/ViewGroup;
    sget-boolean v3, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v3, :cond_1

    .line 611
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group has: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_2

    .line 614
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 617
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 618
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 619
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 621
    instance-of v3, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_3

    .line 622
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 624
    :cond_3
    const/4 v0, 0x0

    .line 626
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 627
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_5

    .line 628
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 631
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 122
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 128
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setLayoutParams(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 183
    return-void
.end method

.method protected setNativeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 168
    sget-object v1, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 170
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 171
    const/4 v0, 0x1

    .line 173
    .local v0, "clickable":Z
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 177
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 178
    return-void
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1004
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$4;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$4;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    return-void
.end method

.method protected setOnLongClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1015
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$5;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$5;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1022
    return-void
.end method

.method public setOpacity(F)V
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 905
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 906
    return-void
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "opacity"    # F

    .prologue
    .line 910
    if-eqz p1, :cond_1

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V

    .line 912
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 915
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 917
    :cond_1
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 153
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 143
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "TiUIView"

    const-string v1, "Attempt to show null native control"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method
