.class Lbgk;
.super Ljava/net/CacheResponse;
.source "SourceFile"


# instance fields
.field private final a:Lbgj;

.field private final b:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lbgj;Ljava/io/FileInputStream;)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 692
    iput-object p1, p0, Lbgk;->a:Lbgj;

    .line 693
    iput-object p2, p0, Lbgk;->b:Ljava/io/FileInputStream;

    .line 694
    return-void
.end method


# virtual methods
.method public a()Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lbgk;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public synthetic getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lbgk;->a()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lbgk;->a:Lbgj;

    invoke-static {v0}, Lbgj;->b(Lbgj;)Lbfx;

    move-result-object v0

    invoke-virtual {v0}, Lbfx;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
