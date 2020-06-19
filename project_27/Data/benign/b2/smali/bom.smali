.class Lbom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbdg;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lbob;

.field final synthetic g:Lbol;


# direct methods
.method constructor <init>(Lbol;Ljava/lang/String;Lbdg;IILjava/lang/String;Lbob;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lbom;->g:Lbol;

    iput-object p2, p0, Lbom;->a:Ljava/lang/String;

    iput-object p3, p0, Lbom;->b:Lbdg;

    iput p4, p0, Lbom;->c:I

    iput p5, p0, Lbom;->d:I

    iput-object p6, p0, Lbom;->e:Ljava/lang/String;

    iput-object p7, p0, Lbom;->f:Lbob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbom;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 60
    iget-object v1, p0, Lbom;->b:Lbdg;

    invoke-virtual {v1}, Lbdg;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Lbol;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :goto_1
    if-nez v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "video bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lbom;->b:Lbdg;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lbdg;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 70
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbol;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lbom;->c:I

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lbom;->d:I

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    .line 76
    iget v2, p0, Lbom;->c:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 77
    iget v3, p0, Lbom;->d:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 79
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_4
    new-instance v2, Lbmm;

    iget-object v3, p0, Lbom;->e:Ljava/lang/String;

    iget-object v4, p0, Lbom;->f:Lbob;

    iget-object v4, v4, Lbob;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 83
    sget-object v0, Lbmi;->b:Lbmi;

    iput-object v0, v2, Lbmm;->d:Lbmi;

    .line 84
    iget-object v0, p0, Lbom;->b:Lbdg;

    invoke-virtual {v0, v2}, Lbdg;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    iget-object v1, p0, Lbom;->b:Lbdg;

    invoke-virtual {v1, v0}, Lbdg;->a(Ljava/lang/Exception;)Z

    goto/16 :goto_0
.end method
