.class public Lti/modules/titanium/media/MediaModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MediaModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    }
.end annotation

.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field public static final DEVICE_BUSY:I = 0x1

.field private static final FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field private static final LCAT:Ljava/lang/String; = "TiMedia"

.field public static final MEDIA_TYPE_PHOTO:Ljava/lang/String; = "public.image"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "public.video"

.field public static final NO_CAMERA:I = 0x2

.field public static final NO_VIDEO:I = 0x3

.field private static final PHOTO_DCIM_CAMERA:Ljava/lang/String; = "/sdcard/dcim/Camera"

.field public static final UNKNOWN_ERROR:I = 0x0

.field public static final VIDEO_CONTROL_DEFAULT:I = 0x0

.field public static final VIDEO_CONTROL_EMBEDDED:I = 0x1

.field public static final VIDEO_CONTROL_FULLSCREEN:I = 0x2

.field public static final VIDEO_CONTROL_HIDDEN:I = 0x4

.field public static final VIDEO_CONTROL_NONE:I = 0x3

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ENDED:I = 0x0

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ERROR:I = 0x1

.field public static final VIDEO_FINISH_REASON_USER_EXITED:I = 0x2

.field public static final VIDEO_LOAD_STATE_PLAYABLE:I = 0x1

.field public static final VIDEO_LOAD_STATE_PLAYTHROUGH_OK:I = 0x2

.field public static final VIDEO_LOAD_STATE_STALLED:I = 0x4

.field public static final VIDEO_LOAD_STATE_UNKNOWN:I = 0x0

.field public static final VIDEO_PLAYBACK_STATE_INTERRUPTED:I = 0x3

.field public static final VIDEO_PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final VIDEO_PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD:I = 0x5

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_FORWARD:I = 0x4

.field public static final VIDEO_PLAYBACK_STATE_STOPPED:I = 0x0

.field public static final VIDEO_SCALING_ASPECT_FILL:I = 0x1

.field public static final VIDEO_SCALING_ASPECT_FIT:I = 0x2

.field public static final VIDEO_SCALING_MODE_FILL:I = 0x3

.field public static final VIDEO_SCALING_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/MediaModule;->DBG:Z

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xfa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 111
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lti/modules/titanium/media/MediaModule;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/media/MediaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 566
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 568
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 574
    .local v0, "cropRect":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v2, "mediaType"

    const-string v3, "public.image"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-object v1
.end method

.method createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 527
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 529
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    const/4 v7, -0x1

    .line 530
    .local v7, "width":I
    const/4 v4, -0x1

    .line 533
    .local v4, "height":I
    move-object v3, p1

    .line 534
    .local v3, "fpath":Ljava/lang/String;
    :try_start_0
    const-string v8, "file://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "content://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 538
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 539
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 540
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 541
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    const-string v8, "x"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v8, "y"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v8, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 552
    .local v0, "cropRect":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v8, "y"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v8, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v8, "cropRect"

    invoke-virtual {v1, v8, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-array v6, v12, [Ljava/lang/String;

    aput-object p1, v6, v11

    .line 559
    .local v6, "parts":[Ljava/lang/String;
    const-string v8, "mediaType"

    const-string v9, "public.image"

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v8, "media"

    invoke-static {v6, v11}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    invoke-static {v9, p2}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-object v1

    .line 542
    .end local v0    # "cropRect":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "TiMedia"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmap not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getIsCameraSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 701
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 702
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_1

    .line 703
    const-string v3, "TiMedia"

    const-string v4, "Could not retrieve application instance, returning false for isCameraSupported."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return v2

    .line 707
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 708
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_2

    .line 709
    const-string v3, "TiMedia"

    const-string v4, "Could not retrieve PackageManager instance, returning false for isCameraSupported."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_2
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public openPhotoGallery(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 455
    const/4 v9, 0x0

    .line 456
    .local v9, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v2, 0x0

    .line 457
    .local v2, "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v4, 0x0

    .line 459
    .local v4, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v10, "success"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 460
    const-string v10, "success"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v9, Lorg/appcelerator/kroll/KrollFunction;

    .line 462
    .restart local v9    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v10, "cancel"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 463
    const-string v10, "cancel"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 465
    .restart local v2    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v10, "error"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 466
    const-string v10, "error"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .line 469
    .restart local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    move-object v7, v9

    .line 470
    .local v7, "fSuccessCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v5, v2

    .line 471
    .local v5, "fCancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v6, v4

    .line 473
    .local v6, "fErrorCallback":Lorg/appcelerator/kroll/KrollFunction;
    sget-boolean v10, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v10, :cond_3

    .line 474
    const-string v10, "TiMedia"

    const-string v11, "openPhotoGallery called"

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, v0

    .line 478
    check-cast v1, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 480
    .local v1, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v8, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-direct {v8, v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 481
    .local v8, "galleryIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.action.PICK"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "image/*"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v10, "GALLERY"

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 486
    invoke-interface {v1}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 487
    .local v3, "code":I
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Lti/modules/titanium/media/MediaModule$1;

    invoke-direct {v11, p0, v5, v7, v6}, Lti/modules/titanium/media/MediaModule$1;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v1, v10, v3, v11}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 524
    return-void
.end method

.method public previewImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 588
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 589
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 590
    const-string v13, "TiMedia"

    const-string v14, "Unable to get current activity for previewImage."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v12, 0x0

    .line 595
    .local v12, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v4, 0x0

    .line 596
    .local v4, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 598
    .local v8, "image":Lorg/appcelerator/titanium/TiBlob;
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 599
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v12, Lorg/appcelerator/kroll/KrollFunction;

    .line 601
    .restart local v12    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 602
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .line 604
    .restart local v4    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 605
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "image":Lorg/appcelerator/titanium/TiBlob;
    check-cast v8, Lorg/appcelerator/titanium/TiBlob;

    .line 608
    .restart local v8    # "image":Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    if-nez v8, :cond_4

    .line 609
    if-eqz v4, :cond_4

    .line 610
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "Missing image property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 614
    :cond_4
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 616
    .local v5, "f":Lorg/appcelerator/titanium/io/TiBaseFile;
    move-object v7, v12

    .line 617
    .local v7, "fSuccessCallback":Lorg/appcelerator/kroll/KrollFunction;
    move-object v6, v4

    .line 619
    .local v6, "fErrorCallback":Lorg/appcelerator/kroll/KrollFunction;
    sget-boolean v13, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v13, :cond_5

    .line 620
    const-string v13, "TiMedia"

    const-string v14, "openPhotoGallery called"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v2, v1

    .line 623
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 625
    .local v2, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v9, "intent":Landroid/content/Intent;
    new-instance v11, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    invoke-direct {v11, v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 627
    .local v11, "previewIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "mimeType":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 630
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    :goto_1
    const-string v13, "PREVIEW"

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 637
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 638
    .local v3, "code":I
    new-instance v13, Lti/modules/titanium/media/MediaModule$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v6}, Lti/modules/titanium/media/MediaModule$2;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v2, v9, v3, v13}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    goto/16 :goto_0

    .line 632
    .end local v3    # "code":I
    :cond_6
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public showCamera(Ljava/util/HashMap;)V
    .locals 30
    .param p1, "options"    # Ljava/util/HashMap;

    .prologue
    .line 129
    const/16 v22, 0x0

    .line 130
    .local v22, "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 131
    .local v8, "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    const/4 v10, 0x0

    .line 133
    .local v10, "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    const-string v25, "success"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 134
    const-string v25, "success"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v22, Lorg/appcelerator/kroll/KrollFunction;

    .line 136
    .restart local v22    # "successCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v25, "cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 137
    const-string v25, "cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v8, Lorg/appcelerator/kroll/KrollFunction;

    .line 139
    .restart local v8    # "cancelCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v25, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 140
    const-string v25, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .line 142
    .restart local v10    # "errorCallback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v25, "overlay"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 143
    const-string v25, "overlay"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    sput-object v25, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 146
    :cond_3
    sget-boolean v25, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v25, :cond_4

    .line 147
    const-string v25, "TiMedia"

    const-string v26, "showCamera called"

    invoke-static/range {v25 .. v26}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4
    const/4 v6, 0x0

    .line 151
    .local v6, "camera":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_5

    .line 153
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v6, 0x0

    .line 169
    :cond_5
    const/16 v21, 0x0

    .line 170
    .local v21, "saveToPhotoGallery":Z
    const-string v25, "saveToPhotoGallery"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 171
    const-string v25, "saveToPhotoGallery"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v21

    .line 174
    :cond_6
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .local v4, "activity":Landroid/app/Activity;
    move-object v5, v4

    .line 175
    check-cast v5, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 176
    .local v5, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v24

    .line 178
    .local v24, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v12, 0x0

    .line 179
    .local v12, "imageDir":Ljava/io/File;
    const/4 v14, 0x0

    .line 182
    .local v14, "imageFile":Ljava/io/File;
    if-eqz v21, :cond_c

    .line 183
    :try_start_1
    new-instance v13, Ljava/io/File;

    const-string v25, "/sdcard/dcim/Camera"

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v12    # "imageDir":Ljava/io/File;
    .local v13, "imageDir":Ljava/io/File;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_10

    .line 185
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v12, v13

    .line 204
    .end local v13    # "imageDir":Ljava/io/File;
    .restart local v12    # "imageDir":Ljava/io/File;
    :goto_0
    :try_start_3
    const-string v25, ".jpg"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    .line 215
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 216
    .local v15, "imageUrl":Ljava/lang/String;
    new-instance v7, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 218
    .local v7, "cameraIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    sget-object v25, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v25, :cond_f

    .line 219
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "android.intent.category.DEFAULT"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :goto_1
    const-string v25, "CAMERA"

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 228
    .local v18, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const/high16 v26, 0x10000

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v16, 0x0

    .line 233
    .local v16, "isHTCCameraApp":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 235
    .local v20, "rs":Landroid/content/pm/ResolveInfo;
    :try_start_4
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "HTC"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v25

    if-eqz v25, :cond_7

    .line 236
    const/16 v16, 0x1

    .line 244
    .end local v20    # "rs":Landroid/content/pm/ResolveInfo;
    :cond_8
    if-nez v16, :cond_9

    .line 245
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "output"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    :cond_9
    new-instance v19, Lti/modules/titanium/media/MediaModule$CameraResultHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;-><init>(Lti/modules/titanium/media/MediaModule;)V

    .line 249
    .local v19, "resultHandler":Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    move-object/from16 v0, v19

    iput-object v14, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    .line 250
    move-object/from16 v0, v19

    iput-object v15, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    .line 251
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    .line 252
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 253
    move-object/from16 v0, v19

    iput-object v8, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 254
    move-object/from16 v0, v19

    iput-object v10, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 255
    move-object/from16 v0, v19

    iput-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 256
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    .line 257
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    .end local v7    # "cameraIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "imageDir":Ljava/io/File;
    .end local v14    # "imageFile":Ljava/io/File;
    .end local v15    # "imageUrl":Ljava/lang/String;
    .end local v16    # "isHTCCameraApp":Z
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "resultHandler":Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    .end local v21    # "saveToPhotoGallery":Z
    .end local v24    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_a
    :goto_3
    return-void

    .line 157
    :catch_0
    move-exception v23

    .line 158
    .local v23, "t":Ljava/lang/Throwable;
    if-eqz v6, :cond_b

    .line 159
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 162
    :cond_b
    if-eqz v10, :cond_a

    .line 163
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x2

    const-string v29, "Camera not available."

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 189
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    .restart local v12    # "imageDir":Ljava/io/File;
    .restart local v14    # "imageFile":Ljava/io/File;
    .restart local v21    # "saveToPhotoGallery":Z
    .restart local v24    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_c
    :try_start_5
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 190
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "name":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v25, "/sdcard/dcim/Camera"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    .end local v12    # "imageDir":Ljava/io/File;
    .restart local v13    # "imageDir":Ljava/io/File;
    :try_start_6
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_d

    .line 193
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 194
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_d

    .line 195
    const-string v25, "TiMedia"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Attempt to create \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' failed silently."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_d
    move-object v12, v13

    .line 199
    .end local v13    # "imageDir":Ljava/io/File;
    .restart local v12    # "imageDir":Ljava/io/File;
    goto/16 :goto_0

    .line 200
    .end local v17    # "name":Ljava/lang/String;
    :cond_e
    const/16 v25, 0x0

    :try_start_7
    invoke-virtual/range {v24 .. v25}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v12

    goto/16 :goto_0

    .line 206
    :catch_1
    move-exception v9

    .line 207
    .local v9, "e":Ljava/io/IOException;
    :goto_4
    const-string v25, "TiMedia"

    const-string v26, "Unable to create temp file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    if-eqz v10, :cond_a

    .line 209
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 222
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "cameraIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .restart local v15    # "imageUrl":Ljava/lang/String;
    :cond_f
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/appcelerator/titanium/TiApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v26

    const-class v27, Lti/modules/titanium/media/TiCameraActivity;

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 239
    .restart local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "isHTCCameraApp":Z
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "rs":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v25

    goto/16 :goto_2

    .line 206
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "cameraIntent":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "imageDir":Ljava/io/File;
    .end local v15    # "imageUrl":Ljava/lang/String;
    .end local v16    # "isHTCCameraApp":Z
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "rs":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "imageDir":Ljava/io/File;
    :catch_3
    move-exception v9

    move-object v12, v13

    .end local v13    # "imageDir":Ljava/io/File;
    .restart local v12    # "imageDir":Ljava/io/File;
    goto :goto_4

    .end local v12    # "imageDir":Ljava/io/File;
    .restart local v13    # "imageDir":Ljava/io/File;
    :cond_10
    move-object v12, v13

    .end local v13    # "imageDir":Ljava/io/File;
    .restart local v12    # "imageDir":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 691
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->takePicture()V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    const-string v0, "TiMedia"

    const-string v1, "camera preview is not open, unable to take photo"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshot(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 8
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 663
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 665
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 666
    const-string v3, "TiMedia"

    const-string v4, "Could not get current activity for takeScreenshot."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v7, v4, v5

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 672
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 677
    .local v2, "w":Landroid/view/Window;
    :goto_2
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 678
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    goto :goto_2

    .line 681
    :cond_3
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v7, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 682
    .local v1, "image":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public vibrate([J)V
    .locals 3
    .param p1, "pattern"    # [J
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 117
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    sget-object p1, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    .line 120
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 121
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    .line 122
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 124
    :cond_2
    return-void
.end method
