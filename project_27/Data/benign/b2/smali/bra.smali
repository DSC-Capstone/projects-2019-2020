.class public abstract Lbra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lbqb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lbrg;

.field private b:Lbqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqs",
            "<",
            "Lbqw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbqt;

.field private d:[D

.field private e:[D

.field private f:[D

.field private g:Lbqb;


# direct methods
.method protected constructor <init>(Lbqs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqs",
            "<",
            "Lbqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lbrg;

    invoke-direct {v0}, Lbrg;-><init>()V

    iput-object v0, p0, Lbra;->a:Lbrg;

    .line 78
    iput-object p1, p0, Lbra;->b:Lbqs;

    .line 79
    return-void
.end method

.method private varargs a([Lbqv;)V
    .locals 4

    .prologue
    .line 222
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    .line 223
    instance-of v3, v0, Lbqu;

    if-eqz v3, :cond_1

    .line 224
    check-cast v0, Lbqu;

    invoke-virtual {v0}, Lbqu;->a()[D

    move-result-object v0

    iput-object v0, p0, Lbra;->d:[D

    .line 222
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_1
    instance-of v3, v0, Lbqx;

    if-eqz v3, :cond_0

    .line 228
    check-cast v0, Lbqx;

    .line 229
    invoke-virtual {v0}, Lbqx;->a()[D

    move-result-object v3

    iput-object v3, p0, Lbra;->e:[D

    .line 230
    invoke-virtual {v0}, Lbqx;->b()[D

    move-result-object v0

    iput-object v0, p0, Lbra;->f:[D

    goto :goto_1

    .line 234
    :cond_2
    return-void
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lbra;->d:[D

    if-eqz v1, :cond_7

    .line 277
    iget-object v1, p0, Lbra;->d:[D

    array-length v2, v1

    .line 278
    iget-object v1, p0, Lbra;->e:[D

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lbra;->e:[D

    array-length v1, v1

    if-eq v1, v2, :cond_0

    .line 280
    new-instance v0, Lbqc;

    iget-object v1, p0, Lbra;->e:[D

    array-length v1, v1

    invoke-direct {v0, v1, v2}, Lbqc;-><init>(II)V

    throw v0

    :cond_0
    move v1, v0

    .line 282
    :goto_0
    if-ge v1, v2, :cond_2

    .line 283
    iget-object v3, p0, Lbra;->d:[D

    aget-wide v4, v3, v1

    .line 284
    iget-object v3, p0, Lbra;->e:[D

    aget-wide v6, v3, v1

    .line 285
    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 286
    new-instance v0, Lbqj;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lbqj;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 282
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lbra;->f:[D

    if-eqz v1, :cond_5

    .line 291
    iget-object v1, p0, Lbra;->f:[D

    array-length v1, v1

    if-eq v1, v2, :cond_3

    .line 292
    new-instance v0, Lbqc;

    iget-object v1, p0, Lbra;->f:[D

    array-length v1, v1

    invoke-direct {v0, v1, v2}, Lbqc;-><init>(II)V

    throw v0

    :cond_3
    move v1, v0

    .line 294
    :goto_1
    if-ge v1, v2, :cond_5

    .line 295
    iget-object v3, p0, Lbra;->d:[D

    aget-wide v4, v3, v1

    .line 296
    iget-object v3, p0, Lbra;->f:[D

    aget-wide v6, v3, v1

    .line 297
    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 298
    new-instance v0, Lbqi;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lbqi;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 294
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_5
    iget-object v1, p0, Lbra;->e:[D

    if-nez v1, :cond_6

    .line 306
    new-array v1, v2, [D

    iput-object v1, p0, Lbra;->e:[D

    move v1, v0

    .line 307
    :goto_2
    if-ge v1, v2, :cond_6

    .line 308
    iget-object v3, p0, Lbra;->e:[D

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v4, v3, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 311
    :cond_6
    iget-object v1, p0, Lbra;->f:[D

    if-nez v1, :cond_7

    .line 312
    new-array v1, v2, [D

    iput-object v1, p0, Lbra;->f:[D

    .line 313
    :goto_3
    if-ge v0, v2, :cond_7

    .line 314
    iget-object v1, p0, Lbra;->f:[D

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v4, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 318
    :cond_7
    return-void
.end method


# virtual methods
.method protected a([D)D
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lbra;->a:Lbrg;

    invoke-virtual {v0}, Lbrg;->a()V
    :try_end_0
    .catch Lbqg; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v0, p0, Lbra;->g:Lbqb;

    invoke-interface {v0, p1}, Lbqb;->value([D)D

    move-result-wide v0

    return-wide v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lbql;

    invoke-virtual {v0}, Lbqg;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {v1, v0}, Lbql;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public a()Lbqs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbqs",
            "<",
            "Lbqw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lbra;->b:Lbqs;

    return-object v0
.end method

.method public a(ILbqb;Lbqt;[D)Lbqw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lbqt;",
            "[D)",
            "Lbqw;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Lbqv;

    const/4 v1, 0x0

    new-instance v2, Lbqu;

    invoke-direct {v2, p4}, Lbqu;-><init>([D)V

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lbra;->a(ILbqb;Lbqt;[Lbqv;)Lbqw;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a(ILbqb;Lbqt;[Lbqv;)Lbqw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lbqt;",
            "[",
            "Lbqv;",
            ")",
            "Lbqw;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lbra;->a:Lbrg;

    invoke-virtual {v0, p1}, Lbrg;->a(I)V

    .line 198
    iget-object v0, p0, Lbra;->a:Lbrg;

    invoke-virtual {v0}, Lbrg;->b()V

    .line 199
    iput-object p2, p0, Lbra;->g:Lbqb;

    .line 200
    iput-object p3, p0, Lbra;->c:Lbqt;

    .line 202
    invoke-direct {p0, p4}, Lbra;->a([Lbqv;)V

    .line 204
    invoke-direct {p0}, Lbra;->e()V

    .line 206
    invoke-virtual {p0}, Lbra;->d()Lbqw;

    move-result-object v0

    return-object v0
.end method

.method public b()Lbqt;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lbra;->c:Lbqt;

    return-object v0
.end method

.method public c()[D
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbra;->d:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbra;->d:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method protected abstract d()Lbqw;
.end method
