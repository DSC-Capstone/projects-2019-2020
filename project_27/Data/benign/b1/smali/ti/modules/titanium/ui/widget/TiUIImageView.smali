.class public Lti/modules/titanium/ui/widget/TiUIImageView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIImageView$Animator;,
        Lti/modules/titanium/ui/widget/TiUIImageView$Loader;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_DECODE_RETRIES:I = 0x5

.field private static final FRAME_QUEUE_SIZE:I = 0x5

.field public static final INFINITE:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TiUIImageView"

.field public static final MIN_DURATION:I = 0x1e

.field private static final PROPERTY_DECODE_RETRIES:Ljava/lang/String; = "decodeRetries"

.field private static final SET_IMAGE:I = 0x2711

.field private static final START:I = 0x2712

.field private static final STOP:I = 0x2713

.field private static final imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private animating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

.field private decodeRetries:I

.field private defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field private downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

.field private firedLoad:Z

.field private handler:Landroid/os/Handler;

.field private imageSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation
.end field

.field private imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

.field private images:[Ljava/lang/Object;

.field private isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field private loaderThread:Ljava/lang/Thread;

.field private paused:Z

.field private releasedLock:Ljava/lang/Object;

.field private requestedHeight:Lorg/appcelerator/titanium/TiDimension;

.field private requestedWidth:Lorg/appcelerator/titanium/TiDimension;

.field private reverse:Z

.field private timer:Ljava/util/Timer;

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 74
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 85
    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->decodeRetries:I

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    .line 235
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    move-object v1, p1

    .line 123
    check-cast v1, Lti/modules/titanium/ui/ImageViewProxy;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 125
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "TiUIImageView"

    const-string v2, "Creating an ImageView"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setOnSizeChangeListener(Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;)V

    .line 154
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    .line 182
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setNativeView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return v0
.end method

.method static synthetic access$1102(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return p1
.end method

.method static synthetic access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError()V

    return-void
.end method

.method static synthetic access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method static synthetic access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method static synthetic access$1800(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    return-object v0
.end method

.method static synthetic access$1900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$2000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lti/modules/titanium/ui/widget/TiUIImageView;I)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireChange(I)V

    return-void
.end method

.method static synthetic access$2200(Lti/modules/titanium/ui/widget/TiUIImageView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->decodeRetries:I

    return v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiImageView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    return v0
.end method

.method static synthetic access$702(Lti/modules/titanium/ui/widget/TiUIImageView;I)I
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    return p1
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method

.method private fireChange(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 495
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 496
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method private fireError()V
    .locals 3

    .prologue
    .line 508
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 509
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method private fireLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 483
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "load"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method private fireStart()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 490
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "start"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method private fireStop()V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 503
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "stop"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method private getView()Lti/modules/titanium/ui/widget/TiImageView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView;

    return-object v0
.end method

.method private handleSetImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 273
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 274
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v1, p0, p1}, Lti/modules/titanium/ui/ImageViewProxy;->onBitmapChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 280
    return-void
.end method

.method private makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 660
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 662
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 665
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private retryDecode(Z)V
    .locals 7
    .param p1, "recycle"    # Z

    .prologue
    .line 762
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "decodeRetries"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 763
    .local v1, "retries":Ljava/lang/Object;
    if-nez v1, :cond_0

    const/4 v0, 0x5

    .line 764
    .end local v1    # "retries":Ljava/lang/Object;
    .local v0, "maxRetries":I
    :goto_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->decodeRetries:I

    if-ge v3, v0, :cond_1

    .line 765
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->decodeRetries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->decodeRetries:I

    .line 766
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lti/modules/titanium/ui/widget/TiUIImageView$3;

    invoke-direct {v4, p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView$3;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;IZ)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 783
    :goto_1
    return-void

    .line 763
    .end local v0    # "maxRetries":I
    .restart local v1    # "retries":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "retries":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 775
    .restart local v0    # "maxRetries":I
    :cond_1
    const/4 v2, 0x0

    .line 776
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 777
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 780
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError()V

    .line 781
    const-string v3, "TiUIImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max retries reached, giving up decoding image source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDefaultImage()V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 754
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setDefaultImageSource(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 671
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 678
    :goto_0
    return-void

    .line 673
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0

    .line 676
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 264
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImage(Z)V
    .locals 12
    .param p1, "recycle"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 682
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 683
    :cond_0
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v8, :cond_2

    .line 684
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    invoke-direct {p0, v11}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v9, :cond_b

    .line 691
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v8}, Lti/modules/titanium/ui/ImageViewProxy;->inTableView()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 692
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v8}, Lti/modules/titanium/ui/ImageViewProxy;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 693
    .local v1, "currentBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 696
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v8}, Lti/modules/titanium/ui/ImageViewProxy;->getImageSources()Ljava/util/ArrayList;

    move-result-object v5

    .line 697
    .local v5, "proxySources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    if-eqz v5, :cond_4

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 698
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 703
    .end local v1    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "proxySources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    :cond_4
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 704
    .local v4, "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 705
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v8, :cond_6

    .line 706
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    .line 713
    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 715
    .local v3, "getAsync":Z
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 716
    .local v6, "uri":Ljava/net/URI;
    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_7

    move v3, v9

    .line 721
    .end local v6    # "uri":Ljava/net/URI;
    :goto_2
    if-eqz v3, :cond_8

    .line 722
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_0

    .line 708
    .end local v3    # "getAsync":Z
    :cond_6
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v7

    .line 709
    .local v7, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v7, :cond_5

    .line 710
    invoke-virtual {v7, v11, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .end local v7    # "view":Lti/modules/titanium/ui/widget/TiImageView;
    .restart local v3    # "getAsync":Z
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_7
    move v3, v10

    .line 716
    goto :goto_2

    .line 717
    .end local v6    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 718
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v8, "TiUIImageView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URISyntaxException for url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v3, 0x0

    goto :goto_2

    .line 724
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_8
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8, v10, v11}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 725
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    .line 726
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 727
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v8, :cond_1

    .line 728
    const-string v8, "image"

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 729
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    goto/16 :goto_0

    .line 732
    :cond_9
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->retryDecode(Z)V

    goto/16 :goto_0

    .line 736
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "getAsync":Z
    :cond_a
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v11, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8, v10, v11}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 737
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v8, :cond_1

    .line 738
    const-string v8, "image"

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 739
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    goto/16 :goto_0

    .line 743
    .end local v4    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_b
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto/16 :goto_0
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "token"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 225
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_1

    .line 226
    sget-object v2, Lti/modules/titanium/ui/widget/TiUIImageView;->imageTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    .line 227
    :try_start_0
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    if-ne v1, p2, :cond_0

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 229
    const/4 v1, -0x1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->token:I

    .line 231
    :cond_0
    monitor-exit v2

    .line 233
    :cond_1
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setImageSource(Ljava/lang/Object;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 632
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v5}, Lti/modules/titanium/ui/ImageViewProxy;->inTableView()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v5}, Lti/modules/titanium/ui/ImageViewProxy;->getImageSources()Ljava/util/ArrayList;

    move-result-object v1

    .line 634
    .local v1, "currentSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    if-eqz v1, :cond_0

    .line 635
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 650
    .end local v1    # "currentSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 640
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 641
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 642
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 643
    .local v4, "o":Ljava/lang/Object;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 646
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .end local p1    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v5, p0, v6}, Lti/modules/titanium/ui/ImageViewProxy;->onImageSourcesChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 1
    .param p1, "source"    # Lorg/appcelerator/titanium/view/TiDrawableReference;

    .prologue
    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 655
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method private setImages()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 436
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError()V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_1

    .line 441
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 442
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 443
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 444
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 445
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 446
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v0, :cond_3

    .line 447
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 959
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 960
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 961
    .local v0, "iview":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 962
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 964
    :cond_0
    return-void
.end method

.method public getDuration()D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 456
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 457
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 458
    .local v0, "duration":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 469
    .end local v0    # "duration":D
    :cond_0
    :goto_0
    return-wide v0

    .line 466
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->images:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 467
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->images:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x21

    int-to-double v0, v2

    goto :goto_0

    .line 469
    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0
.end method

.method protected getParentView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 205
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 206
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 208
    :cond_1
    if-nez v0, :cond_2

    .line 209
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 210
    .local v1, "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 212
    .local v2, "parentTiUi":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .end local v1    # "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2    # "parentTiUi":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    move-object v0, v3

    .line 217
    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 243
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 257
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 246
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 247
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 249
    goto :goto_0

    .line 251
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    move v1, v2

    .line 252
    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    move v1, v2

    .line 255
    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleStart()V
    .locals 7

    .prologue
    .line 548
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-nez v0, :cond_2

    .line 549
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 551
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 553
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 554
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIImageView;->DBG:Z

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 561
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 563
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v0

    double-to-int v6, v0

    .line 569
    .local v6, "duration":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStart()V

    .line 570
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    int-to-long v2, v6

    int-to-long v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 574
    .end local v6    # "duration":I
    :goto_0
    return-void

    .line 572
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    goto :goto_0
.end method

.method public handleStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 602
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 605
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 606
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 608
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 610
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 616
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v1, :cond_2

    .line 617
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v2

    .line 618
    :try_start_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 619
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :cond_2
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 623
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 624
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 625
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 627
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStop()V

    .line 628
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TiUIImageView"

    const-string v2, "loaderThread termination interrupted"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 896
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 900
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 901
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 905
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 906
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 910
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 914
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 915
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 579
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v12, 0x0

    .line 788
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v9

    .line 789
    .local v9, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v9, :cond_0

    .line 862
    :goto_0
    return-void

    .line 793
    :cond_0
    const-string v10, "width"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 794
    const-string v10, "width"

    const/4 v11, 0x6

    invoke-static {p1, v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 796
    :cond_1
    const-string v10, "height"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 797
    const-string v10, "height"

    const/4 v11, 0x7

    invoke-static {p1, v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 800
    :cond_2
    const-string v10, "images"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 801
    const-string v10, "images"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 802
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    .line 809
    :cond_3
    :goto_1
    const-string v10, "canScale"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 810
    const-string v10, "canScale"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    .line 812
    :cond_4
    const-string v10, "enableZoomControls"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 813
    const-string v10, "enableZoomControls"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    .line 815
    :cond_5
    const-string v10, "defaultImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 816
    const-string v10, "defaultImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 818
    .local v2, "defaultImage":Ljava/lang/Object;
    :try_start_0
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 820
    .local v4, "image":Ljava/lang/Object;
    instance-of v10, v4, Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 821
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 822
    .local v6, "imageUrl":Ljava/lang/String;
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 823
    .local v5, "imageUri":Ljava/net/URI;
    invoke-static {v6}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 824
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v2    # "defaultImage":Ljava/lang/Object;
    .end local v4    # "image":Ljava/lang/Object;
    .end local v5    # "imageUri":Ljava/net/URI;
    .end local v6    # "imageUrl":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 838
    const/4 v1, 0x1

    .line 839
    .local v1, "changeImage":Z
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 840
    .local v7, "newImage":Ljava/lang/Object;
    invoke-direct {p0, v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v8

    .line 841
    .local v8, "source":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 842
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v10, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 843
    const/4 v1, 0x0

    .line 846
    :cond_7
    if-eqz v1, :cond_8

    .line 847
    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 848
    iput-boolean v12, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 849
    invoke-direct {p0, v12}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    .line 861
    .end local v1    # "changeImage":Z
    .end local v7    # "newImage":Ljava/lang/Object;
    .end local v8    # "source":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 803
    :cond_9
    const-string v10, "url"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 804
    const-string v10, "TiUIImageView"

    const-string v11, "The url property of ImageView is deprecated, use image instead."

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 806
    const-string v10, "image"

    const-string v11, "url"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 827
    .restart local v2    # "defaultImage":Ljava/lang/Object;
    .restart local v4    # "image":Ljava/lang/Object;
    :cond_a
    if-nez v4, :cond_6

    .line 828
    :try_start_1
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 831
    .end local v4    # "image":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 832
    .local v3, "e":Ljava/net/URISyntaxException;
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V

    goto :goto_2

    .line 853
    .end local v2    # "defaultImage":Ljava/lang/Object;
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :cond_b
    const-string v10, "images"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 854
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v10

    const-string v11, "image"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v10, :cond_8

    .line 856
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 867
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 868
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    const-string v1, "canScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 872
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setCanScaleImage(Z)V

    goto :goto_0

    .line 873
    :cond_2
    const-string v1, "enableZoomControls"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 874
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    goto :goto_0

    .line 875
    :cond_3
    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 876
    const-string v1, "TiUIImageView"

    const-string v2, "The url property of ImageView is deprecated, use image instead."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 878
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 879
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    goto :goto_0

    .line 880
    :cond_4
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 881
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 882
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 883
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V

    goto :goto_0

    .line 884
    :cond_5
    const-string v1, "images"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 885
    instance-of v1, p3, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 886
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 887
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto :goto_0

    .line 890
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 969
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 970
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_0

    .line 971
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 973
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 976
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 977
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 978
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 979
    :try_start_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 984
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 986
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 988
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 990
    :cond_2
    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 991
    return-void

    .line 973
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 984
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 584
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_0

    .line 585
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v1

    .line 586
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 587
    monitor-exit v1

    .line 589
    :cond_0
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOpacity(F)V
    .locals 2
    .param p1, "opacity"    # F

    .prologue
    .line 949
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 950
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 951
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 952
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 954
    :cond_0
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 190
    check-cast p1, Lti/modules/titanium/ui/ImageViewProxy;

    .end local p1    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 191
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .param p1, "reverse"    # Z

    .prologue
    .line 929
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 930
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 538
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 593
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->handler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    goto :goto_0
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 934
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v2

    .line 935
    .local v2, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v2, :cond_0

    .line 936
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 937
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 938
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 939
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 943
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v3

    .line 939
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto :goto_0
.end method
