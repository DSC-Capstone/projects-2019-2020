.class Lbmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmm;

.field final synthetic b:Lbmj;


# direct methods
.method constructor <init>(Lbmj;Lbmm;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbmk;->b:Lbmj;

    iput-object p2, p0, Lbmk;->a:Lbmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 56
    iget-object v0, p0, Lbmk;->b:Lbmj;

    iget-object v0, v0, Lbmj;->b:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v1, p0, Lbmk;->b:Lbmj;

    iget-object v1, v1, Lbmj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbmk;->b:Lbmj;

    if-eq v0, v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbmk;->a:Lbmm;

    iget-object v0, v0, Lbmm;->e:Landroid/graphics/Bitmap;

    .line 64
    iget-object v1, p0, Lbmk;->b:Lbmj;

    iget-object v1, v1, Lbmj;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmt;

    .line 65
    invoke-interface {v0, v1}, Lbmt;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "failed to transform bitmap"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lbmk;->b:Lbmj;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v5}, Lbmj;->a(Ljava/lang/Exception;Lbmm;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 67
    goto :goto_1

    .line 69
    :cond_2
    :try_start_1
    new-instance v2, Lbmm;

    iget-object v0, p0, Lbmk;->b:Lbmj;

    iget-object v0, v0, Lbmj;->a:Ljava/lang/String;

    iget-object v3, p0, Lbmk;->a:Lbmm;

    iget-object v3, v3, Lbmm;->j:Ljava/lang/String;

    iget-object v4, p0, Lbmk;->a:Lbmm;

    iget-object v4, v4, Lbmm;->a:Landroid/graphics/Point;

    invoke-direct {v2, v0, v3, v1, v4}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 70
    iget-object v0, p0, Lbmk;->a:Lbmm;

    iget-object v0, v0, Lbmm;->d:Lbmi;

    iput-object v0, v2, Lbmm;->d:Lbmi;

    .line 72
    iget-object v0, p0, Lbmk;->b:Lbmj;

    iget-object v0, v0, Lbmj;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lbmk;->b:Lbmj;

    iget-object v0, v0, Lbmj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmr;

    .line 74
    invoke-interface {v0, v2}, Lbmr;->a(Lbmm;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 83
    :catch_1
    move-exception v0

    .line 84
    iget-object v1, p0, Lbmk;->b:Lbmj;

    invoke-virtual {v1, v0, v5}, Lbmj;->a(Ljava/lang/Exception;Lbmm;)V

    goto :goto_0

    .line 78
    :cond_3
    :try_start_2
    iget-object v0, p0, Lbmk;->b:Lbmj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lbmj;->a(Ljava/lang/Exception;Lbmm;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
