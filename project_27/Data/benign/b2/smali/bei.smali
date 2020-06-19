.class public Lbei;
.super Lbeo;
.source "SourceFile"


# instance fields
.field protected a:Ljavax/net/ssl/SSLContext;

.field protected b:[Ljavax/net/ssl/TrustManager;

.field protected c:Ljavax/net/ssl/HostnameVerifier;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbeh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbdj;)V
    .locals 2

    .prologue
    .line 25
    const-string v0, "https"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lbeo;-><init>(Lbdj;Ljava/lang/String;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbei;->d:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lbds;Lbcp;)Lbae;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lbej;

    invoke-direct {v0, p0, p2}, Lbej;-><init>(Lbei;Lbcp;)V

    return-object v0
.end method

.method protected a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;
    .locals 7

    .prologue
    .line 89
    new-instance v0, Lbek;

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbek;-><init>(Lbei;Lbcp;ZLbds;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbei;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbei;->a:Ljavax/net/ssl/SSLContext;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lazx;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lbds;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lbei;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lbei;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeh;

    .line 65
    invoke-interface {v0, v1, p1, p2, p3}, Lbeh;->a(Ljavax/net/ssl/SSLEngine;Lbds;Ljava/lang/String;I)V

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method protected a(Lbaw;Lbds;Landroid/net/Uri;ILbcp;)V
    .locals 8

    .prologue
    .line 81
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p4}, Lbei;->a(Lbds;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    iget-object v4, p0, Lbei;->b:[Ljavax/net/ssl/TrustManager;

    iget-object v5, p0, Lbei;->c:Ljavax/net/ssl/HostnameVerifier;

    const/4 v6, 0x1

    invoke-virtual {p0, p2, p5}, Lbei;->a(Lbds;Lbcp;)Lbae;

    move-result-object v7

    move-object v0, p1

    move v2, p4

    invoke-static/range {v0 .. v7}, Lazx;->a(Lbaw;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLbae;)V

    .line 85
    return-void
.end method

.method public a(Lbeh;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbei;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbei;->c:Ljavax/net/ssl/HostnameVerifier;

    .line 48
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lbei;->a:Ljavax/net/ssl/SSLContext;

    .line 32
    return-void
.end method
