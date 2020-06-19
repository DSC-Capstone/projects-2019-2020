.class Lbkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmm;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lbkf;


# direct methods
.method constructor <init>(Lbkf;Lbmm;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lbkh;->c:Lbkf;

    iput-object p2, p0, Lbkh;->a:Lbmm;

    iput-object p3, p0, Lbkh;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lbkh;->a:Lbmm;

    .line 109
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lbmm;

    iget-object v1, p0, Lbkh;->c:Lbkf;

    iget-object v1, v1, Lbkf;->a:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-direct {v0, v1, v3, v3, v2}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 112
    iget-object v1, p0, Lbkh;->b:Ljava/lang/Exception;

    iput-object v1, v0, Lbmm;->f:Ljava/lang/Exception;

    .line 113
    iget-object v1, p0, Lbkh;->b:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    .line 114
    iget-object v1, p0, Lbkh;->c:Lbkf;

    iget-object v1, v1, Lbkf;->b:Lbku;

    invoke-virtual {v1}, Lbku;->h()Lbmo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmo;->a(Lbmm;)V

    move-object v1, v0

    .line 122
    :goto_0
    iget-object v0, p0, Lbkh;->c:Lbkf;

    iget-object v0, v0, Lbkf;->b:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v2, p0, Lbkh;->c:Lbkf;

    iget-object v2, v2, Lbkf;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbjy;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 124
    :cond_0
    iget-object v0, p0, Lbkh;->c:Lbkf;

    invoke-virtual {v0}, Lbkf;->b()V

    .line 132
    :goto_1
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lbkh;->c:Lbkf;

    invoke-virtual {v1}, Lbkf;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lbkh;->c:Lbkf;

    iget-object v1, v1, Lbkf;->b:Lbku;

    invoke-virtual {v1}, Lbku;->h()Lbmo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmo;->a(Lbmm;)V

    move-object v1, v0

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lbkh;->c:Lbkf;

    iget-object v1, v1, Lbkf;->b:Lbku;

    invoke-virtual {v1}, Lbku;->h()Lbmo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmo;->b(Lbmm;)V

    move-object v1, v0

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdb;

    .line 129
    iget-object v3, p0, Lbkh;->b:Ljava/lang/Exception;

    invoke-interface {v0, v3, v1}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_4
    iget-object v0, p0, Lbkh;->c:Lbkf;

    invoke-virtual {v0}, Lbkf;->b()V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
