.class public Lcom/google/ads/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/an$a;
    }
.end annotation


# direct methods
.method static a([B)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 68
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/ap;,
            Lcom/google/ads/an$a;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 127
    invoke-static {p0}, Lcom/google/ads/aq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 129
    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 130
    new-instance v0, Lcom/google/ads/an$a;

    invoke-direct {v0}, Lcom/google/ads/an$a;-><init>()V

    throw v0

    .line 134
    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    new-array v1, v3, [B

    .line 137
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 140
    invoke-static {v1}, Lcom/google/ads/an;->a([B)V

    .line 141
    return-object v1
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/an$a;,
            Lcom/google/ads/ap;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 205
    array-length v0, p0

    if-eq v0, v2, :cond_0

    .line 206
    new-instance v0, Lcom/google/ads/an$a;

    invoke-direct {v0}, Lcom/google/ads/an$a;-><init>()V

    throw v0

    .line 211
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/aq;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 212
    array-length v1, v0

    if-gt v1, v2, :cond_1

    .line 213
    new-instance v0, Lcom/google/ads/an$a;

    invoke-direct {v0}, Lcom/google/ads/an$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :cond_1
    :try_start_1
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 219
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 220
    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 221
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 225
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 226
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 230
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    return-object v0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    :catch_2
    move-exception v0

    .line 236
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    :catch_3
    move-exception v0

    .line 238
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :catch_4
    move-exception v0

    .line 240
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 241
    :catch_5
    move-exception v0

    .line 242
    new-instance v1, Lcom/google/ads/an$a;

    invoke-direct {v1, v0}, Lcom/google/ads/an$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
