.class final Lbgj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbfx;

.field private final c:Ljava/lang/String;

.field private final d:Lbfx;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lbfx;Lbea;Lbfx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgj;->a:Ljava/lang/String;

    .line 588
    iput-object p2, p0, Lbgj;->b:Lbfx;

    .line 589
    invoke-virtual {p3}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgj;->c:Ljava/lang/String;

    .line 590
    iput-object p4, p0, Lbgj;->d:Lbfx;

    .line 603
    iput-object v1, p0, Lbgj;->e:Ljava/lang/String;

    .line 604
    iput-object v1, p0, Lbgj;->f:[Ljava/security/cert/Certificate;

    .line 605
    iput-object v1, p0, Lbgj;->g:[Ljava/security/cert/Certificate;

    .line 607
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    :try_start_0
    new-instance v1, Lbgp;

    sget-object v0, Lbjr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Lbgp;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :try_start_1
    invoke-virtual {v1}, Lbgp;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgj;->a:Ljava/lang/String;

    .line 554
    invoke-virtual {v1}, Lbgp;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgj;->c:Ljava/lang/String;

    .line 555
    new-instance v0, Lbfx;

    invoke-direct {v0}, Lbfx;-><init>()V

    iput-object v0, p0, Lbgj;->b:Lbfx;

    .line 556
    invoke-virtual {v1}, Lbgp;->b()I

    move-result v2

    move v0, v3

    .line 557
    :goto_0
    if-ge v0, v2, :cond_0

    .line 558
    iget-object v4, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v1}, Lbgp;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbfx;->b(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    new-instance v0, Lbfx;

    invoke-direct {v0}, Lbfx;-><init>()V

    iput-object v0, p0, Lbgj;->d:Lbfx;

    .line 562
    iget-object v0, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v1}, Lbgp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbfx;->a(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Lbgp;->b()I

    move-result v2

    move v0, v3

    .line 564
    :goto_1
    if-ge v0, v2, :cond_1

    .line 565
    iget-object v4, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v1}, Lbgp;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbfx;->b(Ljava/lang/String;)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->e:Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->f:[Ljava/security/cert/Certificate;

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->g:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 582
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    aput-object p1, v0, v6

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 584
    return-void

    .line 582
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    aput-object p1, v2, v6

    invoke-static {v2}, Lbka;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 662
    if-nez p2, :cond_1

    .line 663
    const-string v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 676
    :cond_0
    return-void

    .line 667
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 668
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 669
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 670
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lbgj;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lbgj;)Z
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lbgj;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lbgj;)Lbfx;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lbgj;->d:Lbfx;

    return-object v0
.end method


# virtual methods
.method public a(Lbgl;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 610
    invoke-virtual {p1, v1}, Lbgl;->a(I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 611
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lbjr;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v3}, Lbfx;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 616
    :goto_0
    iget-object v3, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v3}, Lbfx;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v4, v0}, Lbfx;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v4, v0}, Lbfx;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v3}, Lbfx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v3}, Lbfx;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    :goto_1
    iget-object v0, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v0}, Lbfx;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v3, v1}, Lbfx;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lbgj;->d:Lbfx;

    invoke-virtual {v3, v1}, Lbfx;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 628
    :cond_1
    invoke-direct {p0}, Lbgj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbgj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lbgj;->f:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lbgj;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 632
    iget-object v0, p0, Lbgj;->g:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lbgj;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 634
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 635
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lbgj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbgm;

    iget-object v1, p0, Lbgj;->d:Lbfx;

    invoke-direct {v0, p1, v1}, Lbgm;-><init>(Landroid/net/Uri;Lbfx;)V

    iget-object v1, p0, Lbgj;->b:Lbfx;

    invoke-virtual {v1}, Lbfx;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lbgm;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
