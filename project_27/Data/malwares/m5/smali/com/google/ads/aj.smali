.class public abstract Lcom/google/ads/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/ai;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Landroid/util/DisplayMetrics;

.field private c:Lcom/google/ads/au;

.field private d:Ljava/io/ByteArrayOutputStream;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/google/ads/aj;->c:Lcom/google/ads/au;

    .line 119
    iput-object v0, p0, Lcom/google/ads/aj;->d:Ljava/io/ByteArrayOutputStream;

    .line 122
    iput-object v0, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    .line 125
    iput-object v0, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;

    .line 138
    iget-object v0, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/aj;->a()V

    .line 219
    if-eqz p3, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/ads/aj;->c(Landroid/content/Context;)V

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/aj;->b()[B

    move-result-object v0

    .line 226
    array-length v1, v0

    if-nez v1, :cond_1

    .line 227
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_1
    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/ads/aj;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 229
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/google/ads/aj;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 237
    :catch_2
    move-exception v0

    .line 239
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/ads/aj;->d:Ljava/io/ByteArrayOutputStream;

    .line 272
    iget-object v0, p0, Lcom/google/ads/aj;->d:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/google/ads/au;->a(Ljava/io/OutputStream;)Lcom/google/ads/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/aj;->c:Lcom/google/ads/au;

    .line 273
    return-void
.end method

.method private b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/ads/aj;->c:Lcom/google/ads/au;

    invoke-virtual {v0}, Lcom/google/ads/au;->a()V

    .line 283
    iget-object v0, p0, Lcom/google/ads/aj;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0xf0

    const/16 v3, 0xef

    .line 313
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/google/ads/aj;->a()V

    .line 316
    const/16 v0, 0x14

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/aj;->a(IJ)V

    .line 317
    invoke-direct {p0}, Lcom/google/ads/aj;->b()[B

    move-result-object p1

    .line 321
    :cond_0
    array-length v0, p1

    if-ge v0, v3, :cond_2

    .line 323
    array-length v0, p1

    rsub-int v0, v0, 0xef

    new-array v0, v0, [B

    .line 324
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 325
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 339
    :goto_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 340
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 341
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 344
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 348
    new-array v1, v5, [B

    .line 352
    new-instance v2, Lcom/google/ads/ag;

    invoke-direct {v2}, Lcom/google/ads/ag;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/ag;->a([B[B)V

    .line 355
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 356
    invoke-virtual {p0, p2, v1}, Lcom/google/ads/aj;->a(Ljava/lang/String;[B)V

    .line 360
    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/ads/aq;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public a(III)V
    .locals 15

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 188
    :cond_0
    const-wide/16 v1, 0x0

    move/from16 v0, p3

    int-to-long v3, v0

    const/4 v5, 0x1

    move/from16 v0, p1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    move/from16 v0, p2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/google/ads/aj;->b:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    .line 202
    return-void
.end method

.method protected a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/ads/aj;->c:Lcom/google/ads/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/au;->a(IJ)V

    .line 254
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/ads/aj;->c:Lcom/google/ads/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/au;->a(ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/aj;->a:Landroid/view/MotionEvent;

    .line 181
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 369
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 370
    new-instance v1, Lcom/google/ads/ar;

    invoke-direct {v1, v0}, Lcom/google/ads/ar;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/google/ads/ar;->a([B)V

    .line 371
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected abstract c(Landroid/content/Context;)V
.end method
