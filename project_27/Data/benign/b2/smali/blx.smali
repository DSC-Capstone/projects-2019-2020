.class Lblx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbaz;

.field final synthetic b:Lbmh;

.field final synthetic c:Lblw;


# direct methods
.method constructor <init>(Lblw;Lbaz;Lbmh;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lblx;->c:Lblw;

    iput-object p2, p0, Lblx;->a:Lbaz;

    iput-object p3, p0, Lblx;->b:Lbmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v0, p0, Lblx;->c:Lblw;

    iget-object v0, v0, Lblw;->b:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v1, p0, Lblx;->c:Lblw;

    iget-object v1, v1, Lblw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lblx;->c:Lblw;

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lblx;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->m()V

    .line 88
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lblx;->a:Lbaz;

    invoke-virtual {v0}, Lbaz;->k()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 56
    :try_start_1
    iget-object v0, p0, Lblx;->c:Lblw;

    iget-object v0, v0, Lblw;->b:Lbku;

    iget-object v0, v0, Lbku;->z:Lbmo;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lblx;->c:Lblw;

    iget v4, v4, Lblw;->d:I

    iget-object v5, p0, Lblx;->c:Lblw;

    iget v5, v5, Lblw;->e:I

    invoke-virtual/range {v0 .. v5}, Lbmo;->a([BIIII)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 57
    new-instance v3, Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 58
    iget-object v0, p0, Lblx;->c:Lblw;

    iget-boolean v0, v0, Lblw;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "image/gif"

    iget-object v1, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lbni;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v1, v4, v5}, Lbni;-><init>([BII)V

    .line 61
    invoke-virtual {v0}, Lbni;->c()Lbnj;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lbnj;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v7

    move-object v7, v8

    .line 73
    :goto_1
    :try_start_2
    new-instance v4, Lbmm;

    iget-object v5, p0, Lblx;->c:Lblw;

    iget-object v5, v5, Lblw;->a:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v0, v3}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 74
    iput-object v7, v4, Lbmm;->g:Lbni;

    .line 75
    iget-object v0, p0, Lblx;->b:Lbmh;

    invoke-virtual {v0}, Lbmh;->a()Lbmi;

    move-result-object v0

    iput-object v0, v4, Lbmm;->d:Lbmi;

    .line 77
    iget-object v0, p0, Lblx;->c:Lblw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lblw;->a(Ljava/lang/Exception;Lbmm;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    invoke-static {v1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 67
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v4, v2}, Lbmo;->a([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "failed to load bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 80
    :goto_2
    :try_start_4
    iget-object v2, p0, Lblx;->c:Lblw;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Lblw;->a(Ljava/lang/Exception;Lbmm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    invoke-static {v1}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 83
    :goto_3
    :try_start_5
    iget-object v1, p0, Lblx;->c:Lblw;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lblw;->a(Ljava/lang/Exception;Lbmm;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    invoke-static {v6}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v7

    :goto_4
    invoke-static {v6}, Lbaz;->c(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 82
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 79
    :catch_4
    move-exception v0

    move-object v1, v7

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v6

    goto :goto_1
.end method
