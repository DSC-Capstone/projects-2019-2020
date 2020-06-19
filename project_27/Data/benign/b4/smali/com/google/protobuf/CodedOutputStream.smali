.class public final Lcom/google/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 85
    iput-object p2, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 87
    array-length v0, p2

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    .line 88
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 78
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    .line 79
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 80
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    .line 81
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static computeBytesSize(ILcom/google/protobuf/ByteString;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I
    .locals 2
    .param p0, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D

    .prologue
    .line 430
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .param p0, "value"    # D

    .prologue
    .line 624
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 556
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 754
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 480
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 677
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 669
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F

    .prologue
    .line 438
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 632
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 707
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 656
    if-ltz p0, :cond_0

    .line 657
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 454
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 648
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 2
    .param p0, "value"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 728
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 729
    .local v0, "size":I
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computePreferredBufferSize(I)I
    .locals 1
    .param p0, "dataLength"    # I

    .prologue
    const/16 v0, 0x1000

    .line 71
    if-le p0, v0, :cond_0

    move p0, v0

    .line 72
    .end local p0    # "dataLength":I
    :cond_0
    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 942
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 946
    :goto_0
    return v0

    .line 943
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 944
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 945
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 946
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .param p0, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 964
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 973
    :goto_0
    return v0

    .line 965
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 966
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 967
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 968
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 969
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 970
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 971
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 972
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 973
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 565
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 762
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 574
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 770
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 582
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 590
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 786
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 694
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 695
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    return v2

    .line 697
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static computeTagSize(I)I
    .locals 1
    .param p0, "fieldNumber"    # I

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 746
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 446
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSize(ILcom/google/protobuf/MessageLite;)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 720
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1012
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 1027
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 95
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "bufferSize"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/google/protobuf/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedOutputStream;
    .locals 2
    .param p0, "flatArray"    # [B

    .prologue
    .line 115
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->newInstance([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedOutputStream;
    .locals 1
    .param p0, "flatArray"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 128
    new-instance v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 805
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 815
    :cond_0
    return-void
.end method

.method public spaceLeft()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 823
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 187
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 228
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 229
    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 385
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 386
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 387
    return-void
.end method

.method public writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 137
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 138
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 307
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 245
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 246
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 400
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 180
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 342
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 172
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 173
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 337
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 145
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 312
    return-void
.end method

.method public writeGroup(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 200
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 201
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 202
    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 362
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 166
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    if-ltz p1, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 158
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 159
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 322
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 222
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 379
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 380
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 283
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 284
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 285
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 286
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 287
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 866
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    .line 871
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    .line 876
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_0

    .line 883
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 907
    :goto_0
    return-void

    .line 888
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int v0, v1, v2

    .line 889
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    add-int/2addr p2, v0

    .line 891
    sub-int/2addr p3, v0

    .line 892
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 893
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 898
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    iput p3, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 979
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 980
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 981
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 982
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 989
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 990
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 991
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 992
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 993
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 994
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 995
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 996
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 297
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 298
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 299
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 300
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 927
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 928
    return-void

    .line 930
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 931
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 953
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 954
    return-void

    .line 956
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 957
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 252
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 253
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 405
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 259
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 260
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 410
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 266
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 267
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 415
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 273
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 274
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 420
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 355
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 357
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 913
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 235
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 236
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 392
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 152
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 317
    return-void
.end method

.method public writeUnknownGroup(ILcom/google/protobuf/MessageLite;)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 215
    return-void
.end method

.method public writeUnknownGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 374
    return-void
.end method
