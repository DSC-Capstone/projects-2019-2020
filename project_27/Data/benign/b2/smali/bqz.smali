.class public abstract Lbqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqv;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:[Lbqw;

.field private b:[[D

.field private final c:I


# direct methods
.method protected constructor <init>(ID)V
    .locals 2

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lbqz;->a(ID)[D

    move-result-object v0

    invoke-direct {p0, v0}, Lbqz;-><init>([D)V

    .line 79
    return-void
.end method

.method protected constructor <init>([D)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Lbqh;

    invoke-direct {v0}, Lbqh;-><init>()V

    throw v0

    .line 103
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lbqm;

    invoke-direct {v0}, Lbqm;-><init>()V

    throw v0

    .line 106
    :cond_1
    array-length v0, p1

    iput v0, p0, Lbqz;->c:I

    .line 110
    iget v0, p0, Lbqz;->c:I

    iget v2, p0, Lbqz;->c:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lbqz;->b:[[D

    move v0, v1

    .line 111
    :goto_0
    iget v2, p0, Lbqz;->c:I

    if-ge v0, v2, :cond_4

    .line 112
    iget-object v2, p0, Lbqz;->b:[[D

    aget-object v3, v2, v0

    move v2, v1

    .line 113
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-ge v2, v4, :cond_3

    .line 114
    aget-wide v4, p1, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    .line 115
    new-instance v0, Lbqm;

    sget-object v2, Lbqq;->af:Lbqq;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lbqm;-><init>(Lbqp;[Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_4
    return-void
.end method

.method private static a(ID)[D
    .locals 3

    .prologue
    .line 342
    new-array v1, p0, [D

    .line 343
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 344
    aput-wide p1, v1, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lbqz;->c:I

    return v0
.end method

.method public a(I)Lbqw;
    .locals 4

    .prologue
    .line 298
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbqz;->a:[Lbqw;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 300
    :cond_0
    new-instance v0, Lbqk;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lbqz;->a:[Lbqw;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbqk;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(ILbqw;)V
    .locals 4

    .prologue
    .line 313
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbqz;->a:[Lbqw;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 315
    :cond_0
    new-instance v0, Lbqk;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lbqz;->a:[Lbqw;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbqk;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 317
    :cond_1
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    aput-object p2, v0, p1

    .line 318
    return-void
.end method

.method public abstract a(Lbqb;Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqb;",
            "Ljava/util/Comparator",
            "<",
            "Lbqw;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a(Lbqw;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqw;",
            "Ljava/util/Comparator",
            "<",
            "Lbqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbqz;->c:I

    if-ge v0, v1, :cond_1

    .line 271
    iget-object v1, p0, Lbqz;->a:[Lbqw;

    aget-object v1, v1, v0

    invoke-interface {p2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    iget-object v1, p0, Lbqz;->a:[Lbqw;

    aget-object v1, v1, v0

    .line 273
    iget-object v2, p0, Lbqz;->a:[Lbqw;

    aput-object p1, v2, v0

    move-object p1, v1

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    iget v1, p0, Lbqz;->c:I

    aput-object p1, v0, v1

    .line 278
    return-void
.end method

.method public a([D)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    const/4 v1, 0x0

    .line 219
    iget v0, p0, Lbqz;->c:I

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 220
    new-instance v0, Lbqc;

    iget v1, p0, Lbqz;->c:I

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lbqc;-><init>(II)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lbqz;->c:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lbqw;

    iput-object v0, p0, Lbqz;->a:[Lbqw;

    .line 225
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    new-instance v2, Lbqw;

    invoke-direct {v2, p1, v10, v11}, Lbqw;-><init>([DD)V

    aput-object v2, v0, v1

    move v0, v1

    .line 228
    :goto_0
    iget v2, p0, Lbqz;->c:I

    if-ge v0, v2, :cond_2

    .line 229
    iget-object v2, p0, Lbqz;->b:[[D

    aget-object v3, v2, v0

    .line 230
    iget v2, p0, Lbqz;->c:I

    new-array v4, v2, [D

    move v2, v1

    .line 231
    :goto_1
    iget v5, p0, Lbqz;->c:I

    if-ge v2, v5, :cond_1

    .line 232
    aget-wide v6, p1, v2

    aget-wide v8, v3, v2

    add-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_1
    iget-object v2, p0, Lbqz;->a:[Lbqw;

    add-int/lit8 v3, v0, 0x1

    new-instance v5, Lbqw;

    invoke-direct {v5, v4, v10, v11}, Lbqw;-><init>([DD)V

    aput-object v5, v2, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    array-length v0, v0

    return v0
.end method

.method public b(Lbqb;Ljava/util/Comparator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqb;",
            "Ljava/util/Comparator",
            "<",
            "Lbqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 249
    move v1, v2

    :goto_0
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 250
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    aget-object v0, v0, v1

    .line 251
    invoke-virtual {v0}, Lbqw;->b()[D

    move-result-object v3

    .line 252
    invoke-virtual {v0}, Lbqw;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    new-instance v4, Lbqw;

    invoke-interface {p1, v3}, Lbqb;->value([D)D

    move-result-wide v6

    invoke-direct {v4, v3, v6, v7, v2}, Lbqw;-><init>([DDZ)V

    aput-object v4, v0, v1

    .line 249
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    invoke-static {v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 259
    return-void
.end method

.method public c()[Lbqw;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lbqz;->a:[Lbqw;

    array-length v0, v0

    new-array v0, v0, [Lbqw;

    .line 287
    iget-object v1, p0, Lbqz;->a:[Lbqw;

    iget-object v2, p0, Lbqz;->a:[Lbqw;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    return-object v0
.end method
