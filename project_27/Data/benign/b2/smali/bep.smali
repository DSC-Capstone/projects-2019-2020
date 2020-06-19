.class Lbep;
.super Lbdi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdi",
        "<",
        "Lbaw;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lbds;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic m:I

.field final synthetic n:Lbeo;


# direct methods
.method constructor <init>(Lbeo;Lbds;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lbep;->n:Lbeo;

    iput-object p2, p0, Lbep;->b:Lbds;

    iput-object p3, p0, Lbep;->c:Landroid/net/Uri;

    iput p4, p0, Lbep;->m:I

    invoke-direct {p0}, Lbdi;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lbep;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 206
    new-instance v2, Lbcw;

    new-instance v0, Lbeq;

    invoke-direct {v0, p0}, Lbeq;-><init>(Lbep;)V

    invoke-direct {v2, v0}, Lbcw;-><init>(Lbcn;)V

    .line 218
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 219
    const-string v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v7, 0x1

    iget v8, p0, Lbep;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 220
    new-instance v6, Lber;

    invoke-direct {v6, p0, v5, v4}, Lber;-><init>(Lbep;Ljava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {v2, v6}, Lbcw;->a(Lbcq;)Lbcw;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v2}, Lbcw;->c()Lbcw;

    .line 259
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 200
    invoke-super {p0, p1}, Lbdi;->b(Ljava/lang/Exception;)V

    .line 201
    iget-object v0, p0, Lbep;->n:Lbeo;

    iget-object v1, p0, Lbep;->b:Lbds;

    iget-object v2, p0, Lbep;->c:Landroid/net/Uri;

    iget v3, p0, Lbep;->m:I

    const/4 v4, 0x0

    iget-object v5, p0, Lbep;->b:Lbds;

    iget-object v5, v5, Lbds;->a:Lbcp;

    invoke-virtual/range {v0 .. v5}, Lbeo;->a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 202
    return-void
.end method
