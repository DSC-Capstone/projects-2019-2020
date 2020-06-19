.class Lbek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcp;


# instance fields
.field final synthetic a:Lbcp;

.field final synthetic b:Z

.field final synthetic c:Lbds;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:I

.field final synthetic f:Lbei;


# direct methods
.method constructor <init>(Lbei;Lbcp;ZLbds;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbek;->f:Lbei;

    iput-object p2, p0, Lbek;->a:Lbcp;

    iput-boolean p3, p0, Lbek;->b:Z

    iput-object p4, p0, Lbek;->c:Lbds;

    iput-object p5, p0, Lbek;->d:Landroid/net/Uri;

    iput p6, p0, Lbek;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbaw;)V
    .locals 6

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lbek;->a:Lbcp;

    invoke-interface {v0, p1, p2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 149
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-boolean v0, p0, Lbek;->b:Z

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lbek;->f:Lbei;

    iget-object v2, p0, Lbek;->c:Lbds;

    iget-object v3, p0, Lbek;->d:Landroid/net/Uri;

    iget v4, p0, Lbek;->e:I

    iget-object v5, p0, Lbek;->a:Lbcp;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lbei;->a(Lbaw;Lbds;Landroid/net/Uri;ILbcp;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbek;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lbek;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lbek;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lbek;->c:Lbds;

    iget-object v1, v1, Lbds;->j:Lbea;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbea;->b(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lbel;

    invoke-direct {v1, p0, p2}, Lbel;-><init>(Lbek;Lbaw;)V

    invoke-static {p2, v0, v1}, Lbch;->a(Lbbf;[BLbcn;)V

    goto :goto_0
.end method
