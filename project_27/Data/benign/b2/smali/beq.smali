.class Lbeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbep;


# direct methods
.method constructor <init>(Lbep;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lbeq;->a:Lbep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p0, Lbeq;->a:Lbep;

    iget-object v0, v0, Lbep;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lbeq;->a:Lbep;

    new-instance v1, Lbfa;

    const-string v2, "Unable to connect to remote address"

    invoke-direct {v1, v2}, Lbfa;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lbep;->a:Ljava/lang/Exception;

    .line 212
    :cond_0
    iget-object v0, p0, Lbeq;->a:Lbep;

    iget-object v1, p0, Lbeq;->a:Lbep;

    iget-object v1, v1, Lbep;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lbep;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lbeq;->a:Lbep;

    iget-object v0, v0, Lbep;->n:Lbeo;

    iget-object v1, p0, Lbeq;->a:Lbep;

    iget-object v1, v1, Lbep;->b:Lbds;

    iget-object v2, p0, Lbeq;->a:Lbep;

    iget-object v2, v2, Lbep;->c:Landroid/net/Uri;

    iget-object v3, p0, Lbeq;->a:Lbep;

    iget v3, v3, Lbep;->m:I

    const/4 v4, 0x0

    iget-object v5, p0, Lbeq;->a:Lbep;

    iget-object v5, v5, Lbep;->b:Lbds;

    iget-object v5, v5, Lbds;->a:Lbcp;

    invoke-virtual/range {v0 .. v5}, Lbeo;->a(Lbds;Landroid/net/Uri;IZLbcp;)Lbcp;

    move-result-object v0

    iget-object v1, p0, Lbeq;->a:Lbep;

    iget-object v1, v1, Lbep;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 215
    :cond_1
    return-void
.end method
