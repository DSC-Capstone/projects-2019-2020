.class public Lti/modules/titanium/media/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiMedia.Android"

.field protected static _instance:Lti/modules/titanium/media/android/AndroidModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/android/AndroidModule;->_instance:Lti/modules/titanium/media/android/AndroidModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 37
    sput-object p0, Lti/modules/titanium/media/android/AndroidModule;->_instance:Lti/modules/titanium/media/android/AndroidModule;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 42
    invoke-direct {p0}, Lti/modules/titanium/media/android/AndroidModule;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public scanMediaFiles([Ljava/lang/Object;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 5
    .param p1, "paths"    # [Ljava/lang/Object;
    .param p2, "mimeTypes"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 48
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 49
    .local v2, "mediaPaths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 50
    const/4 v3, 0x0

    aget-object v4, p1, v1

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/android/AndroidModule;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;

    invoke-direct {v3, v0, v2, p2, p3}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-virtual {v3}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->scan()V

    .line 55
    return-void
.end method

.method public setSystemWallpaper(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 7
    .param p1, "image"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "scale"    # Z

    .prologue
    .line 60
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 61
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 62
    .local v4, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lti/modules/titanium/media/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    .line 63
    .local v3, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    const/4 v0, 0x0

    .line 64
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    return-void

    .line 67
    :cond_0
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TiMedia.Android"

    const-string v6, "Unable to set wallpaper bitmap"

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const-string v5, "TiMedia.Android"

    const-string v6, "Unable to get bitmap to set wallpaper"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
