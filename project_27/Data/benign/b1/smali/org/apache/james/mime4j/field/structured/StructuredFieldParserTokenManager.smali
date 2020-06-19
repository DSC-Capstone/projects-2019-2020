.class public Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/StructuredFieldParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    new-array v0, v3, [I

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v3

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v4

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    new-array v0, v4, [J

    const-wide/32 v1, 0xf801

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjtoToken:[J

    new-array v0, v4, [J

    const-wide/16 v1, 0x3fe

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjtoSkip:[J

    new-array v0, v4, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        0x0
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjrounds:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    const/4 v0, 0x6

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_7

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    :goto_3
    return p2

    :pswitch_0
    const-wide v5, -0x10500002601L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    const/16 v5, 0xf

    if-le v0, v5, :cond_4

    const/16 v0, 0xf

    :cond_4
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_5
    const-wide v5, 0x100002600L    # 2.122000597E-314

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v5, 0xe

    if-le v0, v5, :cond_6

    const/16 v0, 0xe

    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_1
    const-wide v5, 0x100002600L    # 2.122000597E-314

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v0, 0xe

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_2
    const-wide v5, -0x10500002601L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v0, 0xf

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_7
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_9

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_8
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    :goto_4
    if-ne v1, v2, :cond_8

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0xf

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_9
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_b
    :goto_5
    if-ne v1, v2, :cond_a

    goto/16 :goto_2

    :pswitch_4
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    const/16 v6, 0xf

    if-le v0, v6, :cond_c

    const/16 v0, 0xf

    :cond_c
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_d
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_4

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_9

    :goto_3
    return p2

    :pswitch_0
    const-wide v5, -0x30000000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_6

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    :goto_4
    if-ne v1, v2, :cond_5

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_7
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_8
    :goto_5
    if-ne v1, v2, :cond_7

    goto :goto_2

    :pswitch_2
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    const/4 v6, 0x4

    if-le v0, v6, :cond_8

    const/4 v0, 0x4

    goto :goto_5

    :cond_9
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_5

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_e

    :goto_3
    return p2

    :pswitch_0
    const-wide v5, -0x30000000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    if-le v0, v5, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x7

    if-le v0, v5, :cond_4

    const/4 v0, 0x7

    :cond_4
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_1

    :cond_5
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_a

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    :cond_7
    :goto_4
    if-ne v1, v2, :cond_6

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x8

    if-le v0, v3, :cond_8

    const/16 v0, 0x8

    :cond_8
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x7

    if-le v0, v3, :cond_9

    const/4 v0, 0x7

    :cond_9
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_4
    const/16 v3, 0x8

    if-le v0, v3, :cond_7

    const/16 v0, 0x8

    goto :goto_4

    :cond_a
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_b
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_c
    :goto_5
    if-ne v1, v2, :cond_b

    goto/16 :goto_2

    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    const/16 v6, 0x8

    if-le v0, v6, :cond_c

    const/16 v0, 0x8

    goto :goto_5

    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    const/4 v6, 0x7

    if-le v0, v6, :cond_d

    const/4 v0, 0x7

    :cond_d
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_5

    :cond_e
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_a

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x6

    if-ne v1, v2, :cond_16

    :goto_3
    return p2

    :pswitch_0
    const-wide v5, -0x400002001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    const/16 v5, 0xb

    if-le v0, v5, :cond_4

    const/16 v0, 0xb

    :cond_4
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_5
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x3

    aput v7, v5, v6

    goto :goto_1

    :pswitch_1
    const/16 v5, 0xa

    if-le v0, v5, :cond_6

    const/16 v0, 0xa

    :cond_6
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_1

    :pswitch_2
    const-wide v5, -0x400002001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    if-le v0, v5, :cond_7

    const/16 v0, 0xb

    :cond_7
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_3
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    const/16 v5, 0xc

    if-le v0, v5, :cond_8

    const/16 v0, 0xc

    :cond_8
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_4
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v5, 0xc

    if-le v0, v5, :cond_9

    const/16 v0, 0xc

    :cond_9
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x3

    aput v7, v5, v6

    goto/16 :goto_1

    :cond_a
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_11

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_b
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_1

    :cond_c
    :goto_4
    if-ne v1, v2, :cond_b

    goto/16 :goto_2

    :pswitch_6
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    const/16 v5, 0xb

    if-le v0, v5, :cond_d

    const/16 v0, 0xb

    :cond_d
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_e
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_7
    const/16 v5, 0xa

    if-le v0, v5, :cond_f

    const/16 v0, 0xa

    :cond_f
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_8
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_c

    const/16 v5, 0xb

    if-le v0, v5, :cond_10

    const/16 v0, 0xb

    :cond_10
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_11
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_12
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_13
    :goto_5
    if-ne v1, v2, :cond_12

    goto/16 :goto_2

    :pswitch_9
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_13

    const/16 v6, 0xb

    if-le v0, v6, :cond_14

    const/16 v0, 0xb

    :cond_14
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_a
    sget-object v6, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_13

    const/16 v6, 0xa

    if-le v0, v6, :cond_15

    const/16 v0, 0xa

    :cond_15
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_5

    :cond_16
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/Token;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/structured/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/structured/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/Token;)V
    .locals 4

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/structured/Token;->image:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/structured/Token;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v2, 0x1

    const v9, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->BeginToken()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjimageLen:I

    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    packed-switch v3, :pswitch_data_0

    :goto_2
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    if-eq v3, v9, :cond_6

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->backup(I)V

    :cond_1
    sget-object v3, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjtoToken:[J

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    iget v8, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v5, v8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/Token;)V

    sget-object v1, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v10, :cond_2

    sget-object v1, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    :cond_2
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    goto :goto_2

    :pswitch_1
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    goto :goto_2

    :pswitch_2
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    goto :goto_2

    :pswitch_3
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjtoSkip:[J

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    iget v8, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v5, v8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/Token;)V

    sget-object v3, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v3, v3, v4

    if-eq v3, v10, :cond_0

    sget-object v3, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v3

    if-eq v0, v10, :cond_5

    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    :cond_5
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v0, v7

    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_2
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->readChar()C

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v1

    move v1, v7

    :goto_4
    if-nez v1, :cond_7

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v5, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->backup(I)V

    if-gt v0, v2, :cond_b

    const-string v0, ""

    :goto_5
    move-object v5, v0

    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/structured/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/structured/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_2
    move-exception v1

    if-gt v0, v2, :cond_9

    const-string v1, ""

    :goto_6
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xa

    if-eq v5, v6, :cond_8

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_a

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    move v4, v7

    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    move v1, v2

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/structured/Token;
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/structured/Token;->newToken(I)Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
