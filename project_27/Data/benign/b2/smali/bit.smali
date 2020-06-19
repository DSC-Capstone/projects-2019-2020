.class Lbit;
.super Lbhh;
.source "SourceFile"


# instance fields
.field n:Z

.field final synthetic o:Lbis;


# direct methods
.method constructor <init>(Lbis;Lbaw;Lbfo;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lbit;->o:Lbis;

    invoke-direct {p0, p2, p3}, Lbhh;-><init>(Lbaw;Lbfo;)V

    return-void
.end method


# virtual methods
.method public a(ZLbii;)V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lbhh;->a(ZLbii;)V

    .line 225
    iget-boolean v0, p0, Lbit;->n:Z

    if-nez v0, :cond_1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lbit;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbit;->n:Z

    .line 233
    iget-object v0, p0, Lbit;->o:Lbis;

    iget-object v0, v0, Lbis;->d:Lbiq;

    iget-object v0, v0, Lbiq;->x:Ljava/util/Hashtable;

    iget-object v1, p0, Lbit;->o:Lbis;

    iget-object v1, v1, Lbis;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz;

    .line 235
    iget-object v1, v0, Lbiz;->c:Lbde;

    invoke-virtual {v1}, Lbde;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lbit;->o:Lbis;

    iget-object v1, v1, Lbis;->a:Lbds;

    iget-object v1, v1, Lbds;->j:Lbea;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using new spdy connection for host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbit;->o:Lbis;

    iget-object v3, v3, Lbis;->a:Lbds;

    iget-object v3, v3, Lbds;->j:Lbea;

    invoke-virtual {v3}, Lbea;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbea;->b(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lbit;->o:Lbis;

    iget-object v1, v1, Lbis;->d:Lbiq;

    iget-object v2, p0, Lbit;->o:Lbis;

    iget-object v2, v2, Lbis;->a:Lbds;

    iget-object v3, p0, Lbit;->o:Lbis;

    iget-object v3, v3, Lbis;->c:Lbcp;

    invoke-static {v1, v2, p0, v3}, Lbiq;->a(Lbiq;Lbds;Lbhh;Lbcp;)V

    .line 240
    :cond_0
    invoke-virtual {v0, p0}, Lbiz;->b(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
