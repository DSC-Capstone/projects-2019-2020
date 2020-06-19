.class Lbix;
.super Lbdi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdi",
        "<",
        "Lbfb;",
        "Ljava/util/List",
        "<",
        "Lbhs;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbdu;

.field final synthetic b:Lbiq;


# direct methods
.method constructor <init>(Lbiq;Lbdu;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lbix;->b:Lbiq;

    iput-object p2, p0, Lbix;->a:Lbdu;

    invoke-direct {p0}, Lbdi;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbix;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 407
    new-instance v1, Lbfb;

    invoke-direct {v1}, Lbfb;-><init>()V

    .line 408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhs;

    .line 409
    iget-object v3, v0, Lbhs;->h:Lbhn;

    invoke-virtual {v3}, Lbhn;->a()Ljava/lang/String;

    move-result-object v3

    .line 410
    iget-object v0, v0, Lbhs;->i:Lbhn;

    invoke-virtual {v0}, Lbhn;->a()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v3, v0}, Lbfb;->b(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    goto :goto_0

    .line 413
    :cond_0
    sget-object v0, Lbhs;->a:Lbhn;

    invoke-virtual {v0}, Lbhn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbfb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v2, " "

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v2, p0, Lbix;->a:Lbdu;

    iget-object v2, v2, Lbdu;->f:Lbdz;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lbdz;->a(I)Lbdz;

    .line 416
    array-length v2, v0

    if-ne v2, v4, :cond_1

    .line 417
    iget-object v2, p0, Lbix;->a:Lbdu;

    iget-object v2, v2, Lbdu;->f:Lbdz;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v2, v0}, Lbdz;->b(Ljava/lang/String;)Lbdz;

    .line 418
    :cond_1
    iget-object v0, p0, Lbix;->a:Lbdu;

    iget-object v0, v0, Lbdu;->f:Lbdz;

    sget-object v2, Lbhs;->g:Lbhn;

    invoke-virtual {v2}, Lbhn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbfb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lbdz;->a(Ljava/lang/String;)Lbdz;

    .line 419
    iget-object v0, p0, Lbix;->a:Lbdu;

    iget-object v0, v0, Lbdu;->f:Lbdz;

    invoke-interface {v0, v1}, Lbdz;->a(Lbfb;)Lbdz;

    .line 420
    invoke-virtual {p0, v1}, Lbix;->b(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method
