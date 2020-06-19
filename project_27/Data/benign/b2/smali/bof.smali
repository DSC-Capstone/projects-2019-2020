.class Lbof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbku;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lbdg;

.field final synthetic i:Lboe;


# direct methods
.method constructor <init>(Lboe;Landroid/content/Context;Ljava/lang/String;Lbku;IIZLjava/lang/String;Lbdg;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lbof;->i:Lboe;

    iput-object p2, p0, Lbof;->a:Landroid/content/Context;

    iput-object p3, p0, Lbof;->b:Ljava/lang/String;

    iput-object p4, p0, Lbof;->c:Lbku;

    iput p5, p0, Lbof;->d:I

    iput p6, p0, Lbof;->e:I

    iput-boolean p7, p0, Lbof;->f:Z

    iput-object p8, p0, Lbof;->g:Ljava/lang/String;

    iput-object p9, p0, Lbof;->h:Lbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lbof;->a:Landroid/content/Context;

    iget-object v1, p0, Lbof;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lboe;->b(Landroid/content/Context;Ljava/lang/String;)Lboh;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lbof;->c:Lbku;

    invoke-virtual {v1}, Lbku;->h()Lbmo;

    move-result-object v1

    iget-object v2, v0, Lboh;->a:Landroid/content/res/Resources;

    iget v3, v0, Lboh;->b:I

    iget v4, p0, Lbof;->d:I

    iget v5, p0, Lbof;->e:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lbmo;->a(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 77
    iget-boolean v3, p0, Lbof;->f:Z

    if-eqz v3, :cond_0

    const-string v3, "image/gif"

    iget-object v4, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v0, Lboh;->a:Landroid/content/res/Resources;

    iget v0, v0, Lboh;->b:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 80
    :try_start_1
    iget-object v0, p0, Lbof;->i:Lboe;

    iget-object v4, p0, Lbof;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3, v1}, Lboe;->a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lbmm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    .line 92
    :goto_0
    sget-object v1, Lbmi;->b:Lbmi;

    iput-object v1, v0, Lbmm;->d:Lbmi;

    .line 93
    iget-object v1, p0, Lbof;->h:Lbdg;

    invoke-virtual {v1, v0}, Lbdg;->b(Ljava/lang/Object;)Z

    .line 101
    :goto_1
    return-void

    .line 83
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lbof;->h:Lbdg;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_0
    :try_start_3
    iget-object v3, v0, Lboh;->a:Landroid/content/res/Resources;

    iget v0, v0, Lboh;->b:I

    invoke-static {v3, v0, v1}, Lbmo;->a(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 88
    if-nez v3, :cond_1

    .line 89
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    iget-object v1, p0, Lbof;->h:Lbdg;

    invoke-virtual {v1, v0}, Lbdg;->a(Ljava/lang/Exception;)Z

    goto :goto_1

    .line 90
    :cond_1
    :try_start_4
    new-instance v0, Lbmm;

    iget-object v4, p0, Lbof;->g:Ljava/lang/String;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v0, v4, v1, v3, v2}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
