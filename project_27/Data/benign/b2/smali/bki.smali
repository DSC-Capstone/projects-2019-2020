.class Lbki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lblv;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbmt;",
            ">;"
        }
    .end annotation
.end field

.field e:Lble;

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbmr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lbku;)Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lbku;->x:Lbjy;

    invoke-virtual {v0}, Lbjy;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v5, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    iget-object v0, p0, Lbku;->x:Lbjy;

    invoke-virtual {v0}, Lbjy;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lbku;->x:Lbjy;

    invoke-virtual {v4, v0}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v0, v0, Lbly;

    if-eqz v0, :cond_2

    .line 84
    add-int/lit8 v0, v1, 0x1

    .line 85
    if-le v0, v5, :cond_3

    .line 86
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    .line 88
    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lbki;->e:Lble;

    iget-object v2, v0, Lble;->a:Lbku;

    .line 40
    iget-boolean v0, p0, Lbki;->i:Z

    if-eqz v0, :cond_3

    .line 41
    if-eqz p1, :cond_0

    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v10

    .line 43
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lboa;->a(Ljava/lang/String;)Lbob;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    iget v0, v0, Lbob;->a:I

    invoke-static {v0}, Lboa;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    :cond_2
    new-instance v6, Lbma;

    iget-object v0, p0, Lbki;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lbki;->h:Z

    invoke-direct {v6, v2, v0, v3, v1}, Lbma;-><init>(Lbku;Ljava/lang/String;ZLbjs;)V

    .line 49
    new-instance v0, Lbmh;

    sget-object v2, Lbmi;->b:Lbmi;

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lbmh;-><init>(Lbea;Lbmi;Lbkt;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v0}, Lbma;->a(Ljava/lang/Exception;Lbmh;)V

    move v10, v9

    .line 51
    goto :goto_0

    .line 56
    :cond_3
    iget-boolean v0, p0, Lbki;->c:Z

    if-nez v0, :cond_5

    move v8, v9

    .line 58
    :goto_1
    invoke-virtual {v2}, Lbku;->g()Lbkx;

    move-result-object v0

    invoke-virtual {v0}, Lbkx;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmc;

    .line 59
    iget-object v1, p0, Lbki;->e:Lble;

    iget-object v1, v1, Lble;->b:Lbkm;

    invoke-virtual {v1}, Lbkm;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lbki;->a:Ljava/lang/String;

    iget v5, p0, Lbki;->f:I

    iget v6, p0, Lbki;->g:I

    iget-boolean v7, p0, Lbki;->h:Z

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lbmc;->a(Landroid/content/Context;Lbku;Ljava/lang/String;Ljava/lang/String;IIZ)Lbda;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    new-instance v1, Lbly;

    iget-object v3, p0, Lbki;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v8}, Lbly;-><init>(Lbku;Ljava/lang/String;Z)V

    .line 62
    new-instance v2, Lbkj;

    invoke-direct {v2, p0, v1}, Lbkj;-><init>(Lbki;Lbkf;)V

    invoke-interface {v0, v2}, Lbda;->a(Lbdb;)Lbda;

    move v10, v9

    .line 69
    goto :goto_0

    :cond_5
    move v8, v10

    .line 56
    goto :goto_1
.end method

.method private b(Lbku;)V
    .locals 8

    .prologue
    .line 100
    iget-boolean v0, p0, Lbki;->c:Z

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p1, Lbku;->x:Lbjy;

    iget-object v1, p0, Lbki;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    iget-object v6, p1, Lbku;->x:Lbjy;

    iget-object v7, p0, Lbki;->a:Ljava/lang/String;

    new-instance v0, Lbmj;

    iget-object v2, p0, Lbki;->b:Ljava/lang/String;

    iget-object v3, p0, Lbki;->a:Ljava/lang/String;

    iget-object v4, p0, Lbki;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lbki;->j:Ljava/util/ArrayList;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbmj;-><init>(Lbku;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v0}, Lbjy;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 117
    iget-object v0, p0, Lbki;->e:Lble;

    iget-object v1, v0, Lble;->a:Lbku;

    .line 122
    iget-object v0, v1, Lbku;->i:Lbgb;

    invoke-virtual {v0}, Lbgb;->a()Lbjs;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lbki;->e:Lble;

    iget-boolean v2, v2, Lble;->h:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lbki;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbjs;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lbki;->i:Z

    if-nez v2, :cond_0

    .line 124
    iget-object v0, p0, Lbki;->b:Ljava/lang/String;

    iget-object v2, p0, Lbki;->j:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lbkf;->a(Lbku;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, v1, Lbku;->x:Lbjy;

    iget-object v3, p0, Lbki;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lbjy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lbki;->e:Lble;

    iget-object v2, v2, Lble;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lbki;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v2, p0, Lbki;->e:Lble;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lble;->a(Landroid/os/Handler;)Lble;

    .line 131
    iget-object v2, p0, Lbki;->e:Lble;

    iput-object p0, v2, Lble;->m:Lblv;

    .line 133
    iget-boolean v2, p0, Lbki;->i:Z

    if-nez v2, :cond_3

    .line 134
    iget-object v0, p0, Lbki;->e:Lble;

    new-instance v2, Lbje;

    invoke-direct {v2}, Lbje;-><init>()V

    new-instance v3, Lbkk;

    invoke-direct {v3, p0, v1}, Lbkk;-><init>(Lbki;Lbku;)V

    invoke-virtual {v0, v2, v3}, Lble;->a(Lbjd;Ljava/lang/Runnable;)Lbnh;

    move-result-object v0

    invoke-interface {v0}, Lbnh;->l()Lbda;

    move-result-object v7

    .line 146
    new-instance v0, Lblw;

    iget-object v2, p0, Lbki;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lbki;->c:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget v4, p0, Lbki;->f:I

    iget v5, p0, Lbki;->g:I

    iget-boolean v6, p0, Lbki;->h:Z

    invoke-direct/range {v0 .. v6}, Lblw;-><init>(Lbku;Ljava/lang/String;ZIIZ)V

    invoke-interface {v7, v0}, Lbda;->a(Lbdb;)Lbda;

    .line 157
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lbki;->b(Lbku;)V

    goto :goto_0

    .line 146
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v0}, Lbjs;->a()Ljava/io/File;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lbki;->e:Lble;

    invoke-virtual {v3, v2}, Lble;->a(Ljava/io/File;)Lblp;

    move-result-object v2

    invoke-virtual {v2}, Lblp;->l()Lbda;

    move-result-object v2

    .line 152
    new-instance v3, Lbma;

    iget-object v4, p0, Lbki;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lbki;->h:Z

    invoke-direct {v3, v1, v4, v5, v0}, Lbma;-><init>(Lbku;Ljava/lang/String;ZLbjs;)V

    .line 153
    invoke-interface {v2, v3}, Lbda;->a(Lbdb;)Lbda;

    goto :goto_2
.end method

.method public a(Lbea;)Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Lbea;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbki;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
