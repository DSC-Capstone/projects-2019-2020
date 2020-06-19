.class public Luu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lua",
        "<",
        "Lut;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lva;

.field private b:Lvi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi",
            "<",
            "Lvb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lva;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Luu;->a:Lva;

    .line 63
    return-void
.end method

.method public static a()Lua;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Luu;

    new-instance v1, Lva;

    invoke-direct {v1}, Lva;-><init>()V

    invoke-direct {v0, v1}, Luu;-><init>(Lva;)V

    return-object v0
.end method

.method private a(I)Luc;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, p1, v0, v0}, Luu;->a(III)Luc;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Luc;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luu;->a(III)Luc;

    move-result-object v0

    return-object v0
.end method

.method private a(III)Luc;
    .locals 1

    .prologue
    .line 483
    invoke-static {p1, p2, p3}, Luc;->a(III)Luc;

    move-result-object v0

    return-object v0
.end method

.method private a(Luq;)Luq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->m:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 138
    invoke-direct {p0}, Luu;->b()Luq;

    move-result-object v0

    invoke-virtual {p1, v0}, Luq;->a(Lut;)Luq;

    move-result-object p1

    .line 143
    :cond_0
    :goto_0
    return-object p1

    .line 139
    :cond_1
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->n:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Luu;->b()Luq;

    move-result-object v0

    invoke-virtual {p1, v0}, Luq;->b(Lut;)Luq;

    move-result-object p1

    goto :goto_0
.end method

.method private varargs a([Lvc;)Lvb;
    .locals 2

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0, p1}, Lvi;->a([Lvk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;
    :try_end_0
    .catch Lvl; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Lvh;

    invoke-direct {v1, v0}, Lvh;-><init>(Lvl;)V

    throw v1
.end method

.method private a(Lvk;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvk",
            "<",
            "Lvb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 439
    sget-object v0, Lvc;->a:Lvc;

    sget-object v1, Lvc;->b:Lvc;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 440
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 441
    const/4 v0, 0x0

    .line 442
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;

    .line 444
    iget-object v3, v0, Lvb;->a:Lvc;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    :cond_1
    invoke-interface {p1, v0}, Lvk;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Luq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->o:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 110
    new-array v0, v4, [Lvc;

    sget-object v1, Lvc;->p:Lvc;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    .line 111
    invoke-direct {p0}, Luu;->b()Luq;

    move-result-object v0

    invoke-static {v0}, Lur;->a(Lut;)Luq;

    move-result-object v0

    .line 112
    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->q:Lvc;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 120
    :goto_0
    invoke-direct {p0, v0}, Luu;->a(Luq;)Luq;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->p:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-array v0, v4, [Lvc;

    sget-object v1, Lvc;->p:Lvc;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    .line 115
    invoke-direct {p0}, Luu;->b()Luq;

    move-result-object v0

    .line 116
    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->q:Lvc;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Luu;->c()Luq;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c()Luq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->j:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Luu;->e()Luq;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v4, [Lvc;

    sget-object v2, Lvc;->l:Lvc;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Luu;->f()Luq;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Luu;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Luu;->h()Luq;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Luu;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    invoke-direct {p0}, Luu;->j()Luq;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0}, Luu;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-direct {p0}, Luu;->l()Luq;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_4
    invoke-direct {p0}, Luu;->d()Luq;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Luq;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb;

    .line 191
    sget-object v1, Luv;->a:[I

    iget-object v0, v0, Lvb;->a:Lvc;

    invoke-virtual {v0}, Lvc;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->a(Luc;)Luq;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->a(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 198
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->b(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 202
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->c(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->d(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_5
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->f(Luc;)Luq;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private e()Luq;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    new-array v0, v6, [Lvc;

    sget-object v1, Lvc;->j:Lvc;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    .line 235
    new-array v0, v6, [Lvc;

    sget-object v1, Lvc;->a:Lvc;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v0

    .line 236
    iget-object v1, p0, Luu;->b:Lvi;

    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v1

    invoke-static {v1}, Lur;->d(Luc;)Luq;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v1, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 239
    :cond_0
    new-array v1, v6, [Lvc;

    sget-object v2, Lvc;->b:Lvc;

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 240
    new-array v1, v6, [Lvc;

    sget-object v2, Lvc;->a:Lvc;

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    move-result-object v1

    iget-object v1, v1, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Luu;->c(Ljava/lang/String;)I

    move-result v1

    .line 241
    iget-object v2, p0, Luu;->b:Lvi;

    new-array v3, v6, [Lvc;

    sget-object v4, Lvc;->b:Lvc;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lvi;->b([Lvk;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v2

    invoke-static {v2}, Lur;->d(Luc;)Luq;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v2, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    .line 245
    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->a:Lvc;

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    move-result-object v2

    iget-object v2, v2, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Luu;->c(Ljava/lang/String;)I

    move-result v2

    .line 246
    invoke-direct {p0, v0, v1, v2}, Luu;->a(III)Luc;

    move-result-object v2

    invoke-static {v2}, Lur;->d(Luc;)Luq;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v2, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0
.end method

.method private f()Luq;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    new-array v0, v6, [Lvc;

    sget-object v1, Lvc;->l:Lvc;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    .line 262
    new-array v0, v6, [Lvc;

    sget-object v1, Lvc;->a:Lvc;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v0

    .line 263
    iget-object v1, p0, Luu;->b:Lvi;

    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v1

    invoke-static {v1}, Lur;->d(Luc;)Luq;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v1, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 266
    :cond_0
    new-array v1, v6, [Lvc;

    sget-object v2, Lvc;->b:Lvc;

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 267
    new-array v1, v6, [Lvc;

    sget-object v2, Lvc;->a:Lvc;

    aput-object v2, v1, v5

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    move-result-object v1

    iget-object v1, v1, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Luu;->c(Ljava/lang/String;)I

    move-result v1

    .line 268
    iget-object v2, p0, Luu;->b:Lvi;

    new-array v3, v6, [Lvc;

    sget-object v4, Lvc;->b:Lvc;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lvi;->b([Lvk;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v1

    .line 270
    if-lez v0, :cond_1

    invoke-virtual {v1}, Luc;->a()Luc;

    move-result-object v0

    .line 271
    :goto_1
    invoke-static {v1}, Lur;->d(Luc;)Luq;

    move-result-object v1

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v1, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v1}, Luc;->b()Luc;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_2
    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    .line 274
    new-array v2, v6, [Lvc;

    sget-object v3, Lvc;->a:Lvc;

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    move-result-object v2

    iget-object v2, v2, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Luu;->c(Ljava/lang/String;)I

    move-result v2

    .line 275
    invoke-direct {p0, v0, v1, v2}, Luu;->a(III)Luc;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lur;->d(Luc;)Luq;

    move-result-object v4

    .line 277
    if-lez v0, :cond_3

    .line 278
    invoke-virtual {v3}, Luc;->a()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v4, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_3
    if-lez v1, :cond_4

    .line 280
    invoke-virtual {v3}, Luc;->b()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v4, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :cond_4
    if-lez v2, :cond_5

    .line 282
    invoke-virtual {v3}, Luc;->c()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v4, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :cond_5
    invoke-static {v3}, Lur;->a(Luc;)Luq;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lvc;->k:Lvc;

    invoke-direct {p0, v0}, Luu;->a(Lvk;)Z

    move-result v0

    return v0
.end method

.method private h()Luq;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v1, v5, [Lvc;

    sget-object v2, Lvc;->k:Lvc;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 317
    invoke-direct {p0, v4, v4, v4}, Luu;->a(III)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->d(Luc;)Luq;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-array v0, v5, [Lvc;

    sget-object v1, Lvc;->a:Lvc;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v0

    .line 321
    new-array v1, v5, [Lvc;

    sget-object v2, Lvc;->b:Lvc;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 322
    iget-object v1, p0, Luu;->b:Lvi;

    new-array v2, v5, [Lvc;

    sget-object v3, Lvc;->k:Lvc;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Luu;->b:Lvi;

    invoke-virtual {v1}, Lvi;->a()Ljava/lang/Object;

    .line 324
    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v1

    invoke-static {v1}, Lur;->d(Luc;)Luq;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v1, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    new-array v1, v5, [Lvc;

    sget-object v2, Lvc;->a:Lvc;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    move-result-object v1

    iget-object v1, v1, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Luu;->c(Ljava/lang/String;)I

    move-result v1

    .line 328
    new-array v2, v5, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    .line 329
    new-array v2, v5, [Lvc;

    sget-object v3, Lvc;->k:Lvc;

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Luu;->a([Lvc;)Lvb;

    .line 330
    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v2

    invoke-static {v2}, Lur;->d(Luc;)Luq;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v2, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lvc;->c:Lvc;

    invoke-direct {p0, v0}, Luu;->a(Lvk;)Z

    move-result v0

    return v0
.end method

.method private j()Luq;
    .locals 4

    .prologue
    .line 357
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->d(Luc;)Luq;

    move-result-object v0

    .line 358
    const/4 v1, 0x1

    new-array v1, v1, [Lvc;

    const/4 v2, 0x0

    sget-object v3, Lvc;->c:Lvc;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 359
    invoke-direct {p0}, Luu;->m()Luc;

    move-result-object v1

    invoke-static {v1}, Lur;->f(Luc;)Luq;

    move-result-object v1

    invoke-virtual {v0, v1}, Luq;->a(Lut;)Luq;

    move-result-object v0

    return-object v0
.end method

.method private k()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Luu;->b:Lvi;

    const/4 v2, 0x1

    new-array v2, v2, [Lvc;

    sget-object v3, Lvc;->a:Lvc;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return v0

    .line 374
    :cond_0
    sget-object v0, Lvc;->a:Lvc;

    sget-object v1, Lvc;->b:Lvc;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 375
    iget-object v1, p0, Luu;->b:Lvi;

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v3

    new-array v3, v3, [Lvc;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvk;

    invoke-virtual {v1, v2, v0}, Lvi;->a(I[Lvk;)Z

    move-result v0

    goto :goto_0
.end method

.method private l()Luq;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    new-array v0, v5, [Lvc;

    sget-object v1, Lvc;->a:Lvc;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v0

    .line 391
    iget-object v1, p0, Luu;->b:Lvi;

    new-array v2, v5, [Lvc;

    sget-object v3, Lvc;->b:Lvc;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lvi;->b([Lvk;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v1

    invoke-static {v1}, Lur;->d(Luc;)Luq;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Luu;->a(I)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v1, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 394
    :cond_0
    new-array v1, v5, [Lvc;

    sget-object v2, Lvc;->b:Lvc;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 395
    new-array v1, v5, [Lvc;

    sget-object v2, Lvc;->a:Lvc;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    move-result-object v1

    iget-object v1, v1, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Luu;->c(Ljava/lang/String;)I

    move-result v1

    .line 396
    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v2

    invoke-static {v2}, Lur;->d(Luc;)Luq;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Luu;->a(II)Luc;

    move-result-object v0

    invoke-static {v0}, Lur;->e(Luc;)Luq;

    move-result-object v0

    invoke-virtual {v2, v0}, Luq;->a(Lut;)Luq;

    move-result-object v0

    goto :goto_0
.end method

.method private m()Luc;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 413
    new-array v0, v6, [Lvc;

    sget-object v2, Lvc;->a:Lvc;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v2

    .line 415
    iget-object v0, p0, Luu;->b:Lvi;

    new-array v3, v6, [Lvc;

    sget-object v4, Lvc;->b:Lvc;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lvi;->b([Lvk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Luu;->b:Lvi;

    invoke-virtual {v0}, Lvi;->a()Ljava/lang/Object;

    .line 417
    new-array v0, v6, [Lvc;

    sget-object v3, Lvc;->a:Lvc;

    aput-object v3, v0, v1

    invoke-direct {p0, v0}, Luu;->a([Lvc;)Lvb;

    move-result-object v0

    iget-object v0, v0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Luu;->c(Ljava/lang/String;)I

    move-result v0

    .line 420
    :goto_0
    iget-object v3, p0, Luu;->b:Lvi;

    new-array v4, v6, [Lvc;

    sget-object v5, Lvc;->b:Lvc;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lvi;->b([Lvk;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Luu;->b:Lvi;

    invoke-virtual {v3}, Lvi;->a()Ljava/lang/Object;

    .line 422
    new-array v3, v6, [Lvc;

    sget-object v4, Lvc;->a:Lvc;

    aput-object v4, v3, v1

    invoke-direct {p0, v3}, Luu;->a([Lvc;)Lvb;

    move-result-object v1

    iget-object v1, v1, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Luu;->c(Ljava/lang/String;)I

    move-result v1

    .line 424
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Luu;->a(III)Luc;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Luu;->b(Ljava/lang/String;)Lut;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lut;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Luu;->a:Lva;

    invoke-virtual {v0, p1}, Lva;->a(Ljava/lang/String;)Lvi;

    move-result-object v0

    iput-object v0, p0, Luu;->b:Lvi;

    .line 87
    invoke-direct {p0}, Luu;->b()Luq;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    new-array v1, v1, [Lvc;

    const/4 v2, 0x0

    sget-object v3, Lvc;->s:Lvc;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Luu;->a([Lvc;)Lvb;

    .line 89
    return-object v0
.end method
