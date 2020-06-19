.class abstract Lbkf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lbku;

.field final c:Z


# direct methods
.method protected constructor <init>(Lbku;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lbkf;->a:Ljava/lang/String;

    .line 88
    iput-boolean p3, p0, Lbkf;->c:Z

    .line 89
    iput-object p1, p0, Lbkf;->b:Lbku;

    .line 91
    iget-object v0, p1, Lbku;->x:Lbjy;

    invoke-virtual {v0, p2, p0}, Lbjy;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static a(Lbku;Lbmm;)V
    .locals 6

    .prologue
    .line 23
    iget-object v0, p1, Lbmm;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lbku;->i:Lbgb;

    invoke-virtual {v0}, Lbgb;->a()Lbjs;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lbjs;->a()Ljava/io/File;

    move-result-object v2

    .line 30
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 31
    iget-object v0, p1, Lbmm;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 32
    :goto_1
    iget-object v4, p1, Lbmm;->e:Landroid/graphics/Bitmap;

    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 33
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 34
    iget-object v0, p1, Lbmm;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lbjs;->a(Ljava/lang/String;[Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 31
    :cond_2
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static a(Lbku;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lbmr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lbku;->x:Lbjy;

    invoke-virtual {v0, p1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lbly;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lbly;-><init>(Lbku;Ljava/lang/String;Z)V

    .line 48
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lbkg;

    invoke-direct {v2, p0, p1, v0, p2}, Lbkg;-><init>(Lbku;Ljava/lang/String;Lbkf;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;Lbmm;)V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    new-instance v1, Lbkh;

    invoke-direct {v1, p0, p2, p1}, Lbkh;-><init>(Lbkf;Lbmm;Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 136
    if-eqz p2, :cond_0

    iget-object v0, p2, Lbmm;->a:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lbmm;->h:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbkf;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lbmm;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lbmm;->g:Lbni;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lbmm;->a()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lbkf;->b:Lbku;

    invoke-static {v0, p2}, Lbkf;->a(Lbku;Lbmm;)V

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lbkf;->c:Z

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbkf;->b:Lbku;

    invoke-virtual {v0}, Lbku;->b()V

    .line 102
    return-void
.end method
