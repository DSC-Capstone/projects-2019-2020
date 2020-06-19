.class public Lbrb;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final d:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 59
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lbrb;-><init>(ID)V

    .line 60
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 12

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 72
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v10, v8

    invoke-direct/range {v0 .. v11}, Lbrb;-><init>(IDDDDD)V

    .line 74
    return-void
.end method

.method public constructor <init>(IDDDDD)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lbqz;-><init>(ID)V

    .line 93
    iput-wide p4, p0, Lbrb;->a:D

    .line 94
    iput-wide p6, p0, Lbrb;->b:D

    .line 95
    iput-wide p8, p0, Lbrb;->c:D

    .line 96
    iput-wide p10, p0, Lbrb;->d:D

    .line 97
    return-void
.end method


# virtual methods
.method public a(Lbqb;Ljava/util/Comparator;)V
    .locals 18
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
    .line 192
    invoke-virtual/range {p0 .. p0}, Lbrb;->a()I

    move-result v4

    .line 195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbrb;->a(I)Lbqw;

    move-result-object v5

    .line 196
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbrb;->a(I)Lbqw;

    move-result-object v6

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbrb;->a(I)Lbqw;

    move-result-object v7

    .line 198
    invoke-virtual {v7}, Lbqw;->b()[D

    move-result-object v8

    .line 202
    new-array v9, v4, [D

    .line 203
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbrb;->a(I)Lbqw;

    move-result-object v2

    invoke-virtual {v2}, Lbqw;->b()[D

    move-result-object v10

    .line 205
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 206
    aget-wide v12, v9, v2

    aget-wide v14, v10, v2

    add-double/2addr v12, v14

    aput-wide v12, v9, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 209
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v4

    div-double v10, v2, v10

    .line 210
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    .line 211
    aget-wide v12, v9, v2

    mul-double/2addr v12, v10

    aput-wide v12, v9, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    :cond_2
    new-array v3, v4, [D

    .line 216
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 217
    aget-wide v10, v9, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbrb;->a:D

    aget-wide v14, v9, v2

    aget-wide v16, v8, v2

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v3, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 219
    :cond_3
    new-instance v10, Lbqw;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lbqb;->value([D)D

    move-result-wide v12

    const/4 v2, 0x0

    invoke-direct {v10, v3, v12, v13, v2}, Lbqw;-><init>([DDZ)V

    .line 222
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_4

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lbrb;->a(Lbqw;Ljava/util/Comparator;)V

    .line 283
    :goto_4
    return-void

    .line 226
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_7

    .line 228
    new-array v5, v4, [D

    .line 229
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 230
    aget-wide v6, v9, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbrb;->b:D

    aget-wide v14, v3, v2

    aget-wide v16, v9, v2

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    aput-wide v6, v5, v2

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 232
    :cond_5
    new-instance v2, Lbqw;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lbqb;->value([D)D

    move-result-wide v6

    const/4 v3, 0x0

    invoke-direct {v2, v5, v6, v7, v3}, Lbqw;-><init>([DDZ)V

    .line 235
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lbrb;->a(Lbqw;Ljava/util/Comparator;)V

    goto :goto_4

    .line 240
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lbrb;->a(Lbqw;Ljava/util/Comparator;)V

    goto :goto_4

    .line 243
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    .line 245
    new-array v5, v4, [D

    .line 246
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_8

    .line 247
    aget-wide v6, v9, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbrb;->c:D

    aget-wide v14, v3, v2

    aget-wide v16, v9, v2

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    aput-wide v6, v5, v2

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 249
    :cond_8
    new-instance v2, Lbqw;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lbqb;->value([D)D

    move-result-wide v6

    const/4 v3, 0x0

    invoke-direct {v2, v5, v6, v7, v3}, Lbqw;-><init>([DDZ)V

    .line 251
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_b

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lbrb;->a(Lbqw;Ljava/util/Comparator;)V

    goto :goto_4

    .line 258
    :cond_9
    new-array v3, v4, [D

    .line 259
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_a

    .line 260
    aget-wide v10, v9, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbrb;->c:D

    aget-wide v14, v9, v2

    aget-wide v16, v8, v2

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    aput-wide v10, v3, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 262
    :cond_a
    new-instance v2, Lbqw;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lbqb;->value([D)D

    move-result-wide v8

    const/4 v5, 0x0

    invoke-direct {v2, v3, v8, v9, v5}, Lbqw;-><init>([DDZ)V

    .line 265
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_b

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lbrb;->a(Lbqw;Ljava/util/Comparator;)V

    goto/16 :goto_4

    .line 273
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbrb;->a(I)Lbqw;

    move-result-object v2

    invoke-virtual {v2}, Lbqw;->b()[D

    move-result-object v5

    .line 274
    const/4 v2, 0x1

    move v3, v2

    :goto_8
    if-gt v3, v4, :cond_d

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbrb;->a(I)Lbqw;

    move-result-object v2

    invoke-virtual {v2}, Lbqw;->a()[D

    move-result-object v6

    .line 276
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_c

    .line 277
    aget-wide v8, v5, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lbrb;->d:D

    aget-wide v12, v6, v2

    aget-wide v14, v5, v2

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 279
    :cond_c
    new-instance v2, Lbqw;

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const/4 v7, 0x0

    invoke-direct {v2, v6, v8, v9, v7}, Lbqw;-><init>([DDZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lbrb;->a(ILbqw;)V

    .line 274
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    .line 281
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lbrb;->b(Lbqb;Ljava/util/Comparator;)V

    goto/16 :goto_4
.end method
