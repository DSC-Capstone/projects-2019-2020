.class final Lbfz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lbfx;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lbfx;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lbfz;->d:I

    .line 37
    iput v0, p0, Lbfz;->e:I

    .line 38
    iput v0, p0, Lbfz;->f:I

    .line 56
    iput v0, p0, Lbfz;->i:I

    .line 68
    iput-object p1, p0, Lbfz;->a:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Lbfz;->b:Lbfx;

    .line 71
    new-instance v1, Lbga;

    invoke-direct {v1, p0}, Lbga;-><init>(Lbfz;)V

    .line 87
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lbfx;->d()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Lbfx;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p2, v0}, Lbfx;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-static {v3, v1}, Lbfu;->a(Ljava/lang/String;Lbfv;)V

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    const-string v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iput-boolean v5, p0, Lbfz;->c:Z

    goto :goto_1

    .line 96
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    iput-object v3, p0, Lbfz;->q:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    iput-object v3, p0, Lbfz;->p:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    iput-boolean v5, p0, Lbfz;->h:Z

    goto :goto_1

    .line 102
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lbfz;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    goto :goto_1

    .line 107
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    iput-object v3, p0, Lbfz;->j:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 110
    iput-object v3, p0, Lbfz;->k:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 112
    iput-object v3, p0, Lbfz;->l:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 114
    iput-object v3, p0, Lbfz;->m:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 116
    iput-object v3, p0, Lbfz;->n:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 118
    iput-object v3, p0, Lbfz;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 119
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iput-object v3, p0, Lbfz;->r:Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :cond_d
    return-void
.end method

.method static synthetic a(Lbfz;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lbfz;->d:I

    return p1
.end method

.method static synthetic a(Lbfz;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbfz;->c:Z

    return p1
.end method

.method static synthetic b(Lbfz;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lbfz;->e:I

    return p1
.end method

.method static synthetic b(Lbfz;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbfz;->g:Z

    return p1
.end method

.method static synthetic c(Lbfz;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lbfz;->f:I

    return p1
.end method


# virtual methods
.method public a()Lbfx;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbfz;->b:Lbfx;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lbfz;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lbfz;->b:Lbfx;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lbfx;->c(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lbfz;->b:Lbfx;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lbfx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lbfz;->q:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lbfz;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lbfz;->b:Lbfx;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lbfx;->c(Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-static {p1}, Lbfd;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lbfz;->b:Lbfx;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lbfx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object v0, p0, Lbfz;->p:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lbfz;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lbfz;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lbfz;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lbfz;->f:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lbfz;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lbfz;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfz;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
