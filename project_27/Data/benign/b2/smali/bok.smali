.class Lbok;
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

.field final synthetic i:Lboj;


# direct methods
.method constructor <init>(Lboj;Landroid/content/Context;Ljava/lang/String;Lbku;IIZLjava/lang/String;Lbdg;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lbok;->i:Lboj;

    iput-object p2, p0, Lbok;->a:Landroid/content/Context;

    iput-object p3, p0, Lbok;->b:Ljava/lang/String;

    iput-object p4, p0, Lbok;->c:Lbku;

    iput p5, p0, Lbok;->d:I

    iput p6, p0, Lbok;->e:I

    iput-boolean p7, p0, Lbok;->f:Z

    iput-object p8, p0, Lbok;->g:Ljava/lang/String;

    iput-object p9, p0, Lbok;->h:Lbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    .line 49
    :try_start_0
    iget-object v0, p0, Lbok;->i:Lboj;

    iget-object v2, p0, Lbok;->a:Landroid/content/Context;

    iget-object v3, p0, Lbok;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lboj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lbok;->c:Lbku;

    invoke-virtual {v0}, Lbku;->h()Lbmo;

    move-result-object v0

    iget v2, p0, Lbok;->d:I

    iget v3, p0, Lbok;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lbmo;->a(Ljava/io/InputStream;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 52
    new-instance v3, Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    iget-object v0, p0, Lbok;->i:Lboj;

    iget-object v4, p0, Lbok;->a:Landroid/content/Context;

    iget-object v5, p0, Lbok;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lboj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 55
    iget-boolean v0, p0, Lbok;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "image/gif"

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lbok;->i:Lboj;

    iget-object v4, p0, Lbok;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v2}, Lboj;->a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lbmm;

    move-result-object v0

    .line 64
    :goto_0
    sget-object v2, Lbmi;->b:Lbmi;

    iput-object v2, v0, Lbmm;->d:Lbmi;

    .line 65
    iget-object v2, p0, Lbok;->h:Lbdg;

    invoke-virtual {v2, v0}, Lbdg;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 76
    :goto_1
    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {v1, v2}, Lbmo;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Bitmap failed to load"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    iget-object v2, p0, Lbok;->h:Lbdg;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    goto :goto_1

    .line 62
    :cond_1
    :try_start_3
    new-instance v0, Lbmm;

    iget-object v5, p0, Lbok;->g:Ljava/lang/String;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v0, v5, v2, v4, v3}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :try_start_4
    iget-object v2, p0, Lbok;->h:Lbdg;

    invoke-virtual {v2, v0}, Lbdg;->a(Ljava/lang/Exception;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lbka;->a([Ljava/io/Closeable;)V

    throw v0
.end method
