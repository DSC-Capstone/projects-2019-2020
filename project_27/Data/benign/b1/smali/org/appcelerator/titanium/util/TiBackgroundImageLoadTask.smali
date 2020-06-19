.class public abstract Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;
.super Landroid/os/AsyncTask;
.source "TiBackgroundImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiBackgroundImageLoadTask"


# instance fields
.field protected imageHeight:Lorg/appcelerator/titanium/TiDimension;

.field protected imageWidth:Lorg/appcelerator/titanium/TiDimension;

.field protected parent:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "imageWidth"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "imageHeight"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    .line 37
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 38
    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 44
    array-length v6, p1

    if-nez v6, :cond_1

    .line 45
    const-string v6, "TiBackgroundImageLoadTask"

    const-string v8, "url argument is missing.  Returning null drawable"

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 93
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :cond_1
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 50
    .local v5, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 52
    sget-boolean v6, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    if-eqz v6, :cond_2

    .line 53
    const-string v6, "TiBackgroundImageLoadTask"

    const-string v8, "doInBackground exiting early because context already gc\'d"

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v7

    .line 55
    goto :goto_0

    .line 59
    :cond_3
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    .line 61
    .local v2, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    const/4 v3, 0x1

    .line 62
    .local v3, "retry":Z
    const/4 v4, 0x3

    .line 64
    .local v4, "retryCount":I
    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    .line 65
    const/4 v3, 0x0

    .line 67
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->parent:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v9, p0, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->imageHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, v6, v8, v9}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 69
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->outOfMemoryOccurred()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 71
    const-string v6, "TiBackgroundImageLoadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not enough memory left to load image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    add-int/lit8 v4, v4, -0x1

    .line 73
    if-lez v4, :cond_4

    .line 74
    const/4 v3, 0x1

    .line 75
    const-string v6, "TiBackgroundImageLoadTask"

    const-string v8, "Signalling a GC, will retry load."

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 78
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_2
    const-string v6, "TiBackgroundImageLoadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rsub-int/lit8 v9, v4, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_6
    sget-boolean v6, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->DBG:Z

    if-eqz v6, :cond_7

    .line 87
    const-string v6, "TiBackgroundImageLoadTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TiDrawableReference.getBitmap() (url \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\') returned null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v1, v7

    .line 89
    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "TiBackgroundImageLoadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread pool rejected attempt to load image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "TiBackgroundImageLoadTask"

    const-string v2, "ADD Handler for retry"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
