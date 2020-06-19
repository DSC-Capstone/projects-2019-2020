.class final Lbkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbku;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbkf;

.field final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lbku;Ljava/lang/String;Lbkf;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lbkg;->a:Lbku;

    iput-object p2, p0, Lbkg;->b:Ljava/lang/String;

    iput-object p3, p0, Lbkg;->c:Lbkf;

    iput-object p4, p0, Lbkg;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lbkg;->a:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v1, p0, Lbkg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbkg;->c:Lbkf;

    if-eq v0, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbkg;->a:Lbku;

    iget-object v0, v0, Lbku;->i:Lbgb;

    invoke-virtual {v0}, Lbgb;->a()Lbjs;

    move-result-object v0

    iget-object v1, p0, Lbkg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjs;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbmo;->a(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bitmap failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lbkg;->c:Lbkf;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v5}, Lbkf;->a(Ljava/lang/Exception;Lbmm;)V

    goto :goto_0

    .line 61
    :cond_1
    :try_start_1
    new-instance v1, Lbmm;

    iget-object v2, p0, Lbkg;->b:Ljava/lang/String;

    const-string v3, "image/jpeg"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 62
    sget-object v0, Lbmi;->b:Lbmi;

    iput-object v0, v1, Lbmm;->d:Lbmi;

    .line 64
    iget-object v0, p0, Lbkg;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lbkg;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmr;

    .line 66
    invoke-interface {v0, v1}, Lbmr;->a(Lbmm;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    iget-object v1, p0, Lbkg;->c:Lbkf;

    invoke-virtual {v1, v0, v5}, Lbkf;->a(Ljava/lang/Exception;Lbmm;)V

    .line 78
    :try_start_2
    iget-object v0, p0, Lbkg;->a:Lbku;

    iget-object v0, v0, Lbku;->i:Lbgb;

    invoke-virtual {v0}, Lbgb;->a()Lbjs;

    move-result-object v0

    iget-object v1, p0, Lbkg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjs;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    goto :goto_0

    .line 70
    :cond_2
    :try_start_3
    iget-object v0, p0, Lbkg;->c:Lbkf;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lbkf;->a(Ljava/lang/Exception;Lbmm;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
