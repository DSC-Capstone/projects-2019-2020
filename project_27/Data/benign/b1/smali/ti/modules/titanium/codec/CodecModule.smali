.class public Lti/modules/titanium/codec/CodecModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "CodecModule.java"


# static fields
.field public static final BIG_ENDIAN:I = 0x0

.field public static final CHARSET_ASCII:Ljava/lang/String; = "ascii"

.field public static final CHARSET_ISO_LATIN_1:Ljava/lang/String; = "latin1"

.field public static final CHARSET_UTF16:Ljava/lang/String; = "utf16"

.field public static final CHARSET_UTF16BE:Ljava/lang/String; = "utf16be"

.field public static final CHARSET_UTF16LE:Ljava/lang/String; = "utf16le"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "utf8"

.field public static final LITTLE_ENDIAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiCodec"

.field public static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field public static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field public static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final TYPE_INT:Ljava/lang/String; = "int"

.field public static final TYPE_LONG:Ljava/lang/String; = "long"

.field public static final TYPE_SHORT:Ljava/lang/String; = "short"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    return-void
.end method

.method public static encodeNumber(Ljava/lang/Number;Ljava/lang/String;[BII)I
    .locals 11
    .param p0, "src"    # Ljava/lang/Number;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "dest"    # [B
    .param p3, "position"    # I
    .param p4, "byteOrder"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x8

    const-wide/16 v9, 0xff

    const/16 v6, 0x8

    .line 73
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 74
    .local v3, "l":J
    const-string v7, "byte"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    and-long v6, v3, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p2, p3

    .line 76
    add-int/lit8 p3, p3, 0x1

    .line 105
    .end local p3    # "position":I
    :cond_0
    :goto_0
    return p3

    .line 77
    .restart local p3    # "position":I
    :cond_1
    const-string v7, "short"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 78
    if-nez p4, :cond_2

    move v0, v6

    .line 79
    .local v0, "bits":I
    :cond_2
    if-nez p4, :cond_3

    .line 80
    .local v5, "step":I
    :goto_1
    move v1, p3

    .local v1, "i":I
    :goto_2
    add-int/lit8 v6, p3, 0x2

    if-ge v1, v6, :cond_4

    .line 81
    ushr-long v6, v3, v0

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v5

    goto :goto_2

    .end local v1    # "i":I
    .end local v5    # "step":I
    :cond_3
    move v5, v6

    .line 79
    goto :goto_1

    .line 83
    .restart local v1    # "i":I
    .restart local v5    # "step":I
    :cond_4
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 84
    .end local v0    # "bits":I
    .end local v1    # "i":I
    .end local v5    # "step":I
    :cond_5
    const-string v7, "int"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "float"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 85
    :cond_6
    const-string v7, "float"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 86
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    int-to-long v3, v7

    .line 88
    :cond_7
    if-nez p4, :cond_8

    const/16 v0, 0x18

    .line 89
    .restart local v0    # "bits":I
    :cond_8
    if-nez p4, :cond_9

    .line 90
    .restart local v5    # "step":I
    :goto_3
    move v2, p3

    .local v2, "j":I
    :goto_4
    add-int/lit8 v6, p3, 0x4

    if-ge v2, v6, :cond_a

    .line 91
    ushr-long v6, v3, v0

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v5

    goto :goto_4

    .end local v2    # "j":I
    .end local v5    # "step":I
    :cond_9
    move v5, v6

    .line 89
    goto :goto_3

    .line 93
    .restart local v2    # "j":I
    .restart local v5    # "step":I
    :cond_a
    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 94
    .end local v0    # "bits":I
    .end local v2    # "j":I
    .end local v5    # "step":I
    :cond_b
    const-string v7, "long"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "double"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    :cond_c
    const-string v7, "double"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 96
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 98
    :cond_d
    if-nez p4, :cond_e

    const/16 v0, 0x38

    .line 99
    .restart local v0    # "bits":I
    :cond_e
    if-nez p4, :cond_f

    .line 100
    .restart local v5    # "step":I
    :goto_5
    move v1, p3

    .restart local v1    # "i":I
    :goto_6
    add-int/lit8 v6, p3, 0x8

    if-ge v1, v6, :cond_10

    .line 101
    ushr-long v6, v3, v0

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v5

    goto :goto_6

    .end local v1    # "i":I
    .end local v5    # "step":I
    :cond_f
    move v5, v6

    .line 99
    goto :goto_5

    .line 103
    .restart local v1    # "i":I
    .restart local v5    # "step":I
    :cond_10
    add-int/lit8 p3, p3, 0x8

    goto/16 :goto_0
.end method

.method public static getByteOrder(Ljava/lang/Object;)I
    .locals 2
    .param p0, "byteOrder"    # Ljava/lang/Object;

    .prologue
    .line 271
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 272
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "byteOrder":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 277
    .restart local p0    # "byteOrder":Ljava/lang/Object;
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v0, "ascii"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "US-ASCII"

    .line 298
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const-string v0, "latin1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "utf8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    const-string v0, "UTF-8"

    goto :goto_0

    .line 291
    :cond_2
    const-string v0, "utf16"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    const-string v0, "UTF-16"

    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "utf16le"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const-string v0, "UTF-16LE"

    goto :goto_0

    .line 295
    :cond_4
    const-string v0, "utf16be"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 298
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWidth(Ljava/lang/String;)I
    .locals 1
    .param p0, "dataType"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 259
    :cond_0
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x2

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 266
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodeNumber(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/Object;
    .locals 17
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 111
    const-string v15, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 112
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "src was not specified for encodeNumber"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 114
    :cond_0
    const-string v15, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 115
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "type was not specified for encodeNumber"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_1
    const-string v15, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/BufferProxy;

    .line 119
    .local v3, "buffer":Lti/modules/titanium/BufferProxy;
    const-string v15, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 120
    .local v14, "type":Ljava/lang/String;
    const-string v15, "byteOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v4

    .line 122
    .local v4, "byteOrder":I
    const/4 v8, 0x0

    .line 123
    .local v8, "position":I
    const-string v15, "position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 124
    const-string v15, "position"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    .line 127
    :cond_2
    invoke-virtual {v3}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v12

    .line 128
    .local v12, "src":[B
    const-string v15, "byte"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 129
    aget-byte v15, v12, v8

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    .line 165
    :goto_0
    return-object v15

    .line 131
    :cond_3
    const-string v15, "short"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 132
    aget-byte v15, v12, v8

    and-int/lit16 v15, v15, 0xff

    int-to-short v9, v15

    .line 133
    .local v9, "s1":S
    add-int/lit8 v15, v8, 0x1

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v10, v15

    .line 134
    .local v10, "s2":S
    packed-switch v4, :pswitch_data_0

    .line 165
    .end local v9    # "s1":S
    .end local v10    # "s2":S
    :cond_4
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_0

    .line 136
    .restart local v9    # "s1":S
    .restart local v10    # "s2":S
    :pswitch_0
    shl-int/lit8 v15, v9, 0x8

    add-int/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_0

    .line 138
    :pswitch_1
    shl-int/lit8 v15, v10, 0x8

    add-int/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_0

    .line 140
    .end local v9    # "s1":S
    .end local v10    # "s2":S
    :cond_5
    const-string v15, "int"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "float"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 141
    :cond_6
    const/4 v1, 0x0

    .line 142
    .local v1, "bits":I
    if-nez v4, :cond_7

    const/16 v11, 0x18

    .line 143
    .local v11, "shiftBits":I
    :goto_1
    if-nez v4, :cond_8

    const/4 v13, -0x8

    .line 144
    .local v13, "step":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/4 v15, 0x4

    if-ge v5, v15, :cond_9

    .line 145
    add-int v15, v8, v5

    aget-byte v15, v12, v15

    and-int/lit16 v6, v15, 0xff

    .line 146
    .local v6, "part":I
    shl-int v15, v6, v11

    add-int/2addr v1, v15

    .line 144
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v11, v13

    goto :goto_3

    .line 142
    .end local v5    # "i":I
    .end local v6    # "part":I
    .end local v11    # "shiftBits":I
    .end local v13    # "step":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    .line 143
    .restart local v11    # "shiftBits":I
    :cond_8
    const/16 v13, 0x8

    goto :goto_2

    .line 148
    .restart local v5    # "i":I
    .restart local v13    # "step":I
    :cond_9
    const-string v15, "float"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 149
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto :goto_0

    .line 151
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_0

    .line 152
    .end local v1    # "bits":I
    .end local v5    # "i":I
    .end local v11    # "shiftBits":I
    .end local v13    # "step":I
    :cond_b
    const-string v15, "long"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string v15, "double"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 153
    :cond_c
    const-wide/16 v1, 0x0

    .line 154
    .local v1, "bits":J
    if-nez v4, :cond_d

    const/16 v11, 0x38

    .line 155
    .restart local v11    # "shiftBits":I
    :goto_4
    if-nez v4, :cond_e

    const/4 v13, -0x8

    .line 156
    .restart local v13    # "step":I
    :goto_5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    const/16 v15, 0x8

    if-ge v5, v15, :cond_f

    .line 157
    add-int v15, v8, v5

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v6, v15

    .line 158
    .local v6, "part":J
    shl-long v15, v6, v11

    add-long/2addr v1, v15

    .line 156
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v11, v13

    goto :goto_6

    .line 154
    .end local v5    # "i":I
    .end local v6    # "part":J
    .end local v11    # "shiftBits":I
    .end local v13    # "step":I
    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 155
    .restart local v11    # "shiftBits":I
    :cond_e
    const/16 v13, 0x8

    goto :goto_5

    .line 160
    .restart local v5    # "i":I
    .restart local v13    # "step":I
    :cond_f
    const-string v15, "double"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    goto/16 :goto_0

    .line 163
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decodeString(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 216
    const-string v6, "source"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "source"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 217
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "src was not specified for decodeString"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :cond_1
    const-string v6, "source"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/BufferProxy;

    .line 221
    .local v5, "src":Lti/modules/titanium/BufferProxy;
    invoke-virtual {v5}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v0

    .line 223
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 224
    .local v4, "position":I
    const-string v6, "position"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 225
    const-string v6, "position"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    .line 227
    :cond_2
    array-length v3, v0

    .line 228
    .local v3, "length":I
    const-string v6, "length"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    const-string v6, "length"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    .line 232
    :cond_3
    array-length v6, v0

    invoke-virtual {p0, v4, v3, v6}, Lti/modules/titanium/codec/CodecModule;->validatePositionAndLength(III)V

    .line 233
    invoke-virtual {p0, p1}, Lti/modules/titanium/codec/CodecModule;->validateCharset(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "TiCodec"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported Encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public encodeNumber(Lorg/appcelerator/kroll/KrollDict;)I
    .locals 8
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 47
    const-string v6, "dest"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "dest was not specified for encodeNumber"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_0
    const-string v6, "source"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 51
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "src was not specified for encodeNumber"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_1
    const-string v6, "type"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "type was not specified for encodeNumber"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_2
    const-string v6, "dest"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/BufferProxy;

    .line 58
    .local v2, "dest":Lti/modules/titanium/BufferProxy;
    const-string v6, "source"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 59
    .local v4, "src":Ljava/lang/Number;
    const-string v6, "type"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "type":Ljava/lang/String;
    const-string v6, "byteOrder"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v1

    .line 62
    .local v1, "byteOrder":I
    const/4 v3, 0x0

    .line 63
    .local v3, "position":I
    const-string v6, "position"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const-string v6, "position"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    .line 67
    :cond_3
    invoke-virtual {v2}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v0

    .line 68
    .local v0, "buffer":[B
    invoke-static {v4, v5, v0, v3, v1}, Lti/modules/titanium/codec/CodecModule;->encodeNumber(Ljava/lang/Number;Ljava/lang/String;[BII)I

    move-result v6

    return v6
.end method

.method public encodeString(Lorg/appcelerator/kroll/KrollDict;)I
    .locals 12
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 171
    const-string v9, "dest"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 172
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "dest was not specified for encodeString"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 174
    :cond_0
    const-string v9, "source"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "source"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 175
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "src was not specified for encodeString"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 178
    :cond_2
    const-string v9, "dest"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/BufferProxy;

    .line 179
    .local v1, "dest":Lti/modules/titanium/BufferProxy;
    const-string v9, "source"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 181
    .local v6, "src":Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, "destPosition":I
    const-string v9, "destPosition"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 183
    const-string v9, "destPosition"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    .line 185
    :cond_3
    const/4 v8, 0x0

    .line 186
    .local v8, "srcPosition":I
    const-string v9, "sourcePosition"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 187
    const-string v9, "sourcePosition"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    .line 189
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 190
    .local v7, "srcLength":I
    const-string v9, "sourceLength"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 191
    const-string v9, "sourceLength"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    .line 194
    :cond_5
    invoke-virtual {p0, p1}, Lti/modules/titanium/codec/CodecModule;->validateCharset(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {v1}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v2

    .line 196
    .local v2, "destBuffer":[B
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v7, v9}, Lti/modules/titanium/codec/CodecModule;->validatePositionAndLength(III)V

    .line 198
    if-nez v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v7, v9, :cond_7

    .line 199
    :cond_6
    add-int v9, v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 203
    :cond_7
    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 204
    .local v5, "encoded":[B
    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    array-length v9, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v3

    return v9

    .line 207
    .end local v5    # "encoded":[B
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "TiCodec"

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported Encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getNativeByteOrder()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {v0}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected validateCharset(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;
    .locals 4
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 303
    const-string v0, "UTF-8"

    .line 304
    .local v0, "charset":Ljava/lang/String;
    const-string v1, "charset"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "charset"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lti/modules/titanium/codec/CodecModule;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    if-nez v0, :cond_1

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find a valid charset for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "charset"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_1
    return-object v0
.end method

.method protected validatePositionAndLength(III)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "length"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 315
    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is bigger than the expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    return-void
.end method
