.class Lbem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbq;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lbel;


# direct methods
.method constructor <init>(Lbel;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lbem;->b:Lbel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->b:Lbek;

    iget-object v0, v0, Lbek;->c:Lbds;

    iget-object v0, v0, Lbds;->j:Lbea;

    invoke-virtual {v0, p1}, Lbea;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lbem;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbem;->a:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lbem;->a:Ljava/lang/String;

    const-string v1, "HTTP/1.\\d 2\\d\\d .*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->a:Lbaw;

    invoke-interface {v0, v2}, Lbaw;->a(Lbcr;)V

    .line 125
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->a:Lbaw;

    invoke-interface {v0, v2}, Lbaw;->b(Lbcn;)V

    .line 126
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->b:Lbek;

    iget-object v0, v0, Lbek;->a:Lbcp;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non 2xx status line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbem;->b:Lbel;

    iget-object v2, v2, Lbel;->a:Lbaw;

    invoke-interface {v0, v1, v2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->a:Lbaw;

    invoke-interface {v0, v2}, Lbaw;->a(Lbcr;)V

    .line 131
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->a:Lbaw;

    invoke-interface {v0, v2}, Lbaw;->b(Lbcn;)V

    .line 132
    iget-object v0, p0, Lbem;->b:Lbel;

    iget-object v0, v0, Lbel;->b:Lbek;

    iget-object v0, v0, Lbek;->f:Lbei;

    iget-object v1, p0, Lbem;->b:Lbel;

    iget-object v1, v1, Lbel;->a:Lbaw;

    iget-object v2, p0, Lbem;->b:Lbel;

    iget-object v2, v2, Lbel;->b:Lbek;

    iget-object v2, v2, Lbek;->c:Lbds;

    iget-object v3, p0, Lbem;->b:Lbel;

    iget-object v3, v3, Lbel;->b:Lbek;

    iget-object v3, v3, Lbek;->d:Landroid/net/Uri;

    iget-object v4, p0, Lbem;->b:Lbel;

    iget-object v4, v4, Lbel;->b:Lbek;

    iget v4, v4, Lbek;->e:I

    iget-object v5, p0, Lbem;->b:Lbel;

    iget-object v5, v5, Lbel;->b:Lbek;

    iget-object v5, v5, Lbek;->a:Lbcp;

    invoke-virtual/range {v0 .. v5}, Lbei;->a(Lbaw;Lbds;Landroid/net/Uri;ILbcp;)V

    goto :goto_0
.end method
