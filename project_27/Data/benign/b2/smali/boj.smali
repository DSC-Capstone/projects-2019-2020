.class public Lboj;
.super Lboi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lboi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbku;Ljava/lang/String;Ljava/lang/String;IIZ)Lbda;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbku;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lbda",
            "<",
            "Lbmm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v9, Lbdg;

    invoke-direct {v9}, Lbdg;-><init>()V

    .line 44
    invoke-static {}, Lbku;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v0, Lbok;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lbok;-><init>(Lboj;Landroid/content/Context;Ljava/lang/String;Lbku;IIZLjava/lang/String;Lbdg;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-object v9
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Point;Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lbmm;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lbni;

    invoke-static {p3}, Lbka;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lbni;-><init>(Ljava/nio/ByteBuffer;)V

    .line 29
    invoke-virtual {v0}, Lbni;->c()Lbnj;

    move-result-object v1

    .line 30
    new-instance v2, Lbmm;

    iget-object v3, p4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v1, v1, Lbnj;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, p1, v3, v1, p2}, Lbmm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 31
    iput-object v0, v2, Lbmm;->g:Lbni;

    .line 32
    return-object v2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method
