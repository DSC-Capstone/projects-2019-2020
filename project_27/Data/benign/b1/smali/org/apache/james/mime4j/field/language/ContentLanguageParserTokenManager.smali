.class public Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/language/ContentLanguageParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

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
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ","

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide/32 v1, 0x1f0007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoMore:[J

    return-void

    nop

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
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

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
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/16 v4, 0x13

    const-wide/16 v11, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v2, v3

    :goto_0
    iget v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_b

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v7, v9

    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_15

    :goto_3
    return p2

    :pswitch_1
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    if-le v0, v4, :cond_4

    move v0, v4

    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    if-le v0, v6, :cond_6

    move v0, v6

    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_7
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    if-le v0, v5, :cond_8

    move v0, v5

    :cond_8
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_2
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v0, v5

    goto :goto_1

    :pswitch_3
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    if-le v0, v6, :cond_9

    move v0, v6

    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_4
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    if-le v0, v4, :cond_a

    move v0, v4

    :cond_a
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_b
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_13

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    :pswitch_5
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    if-le v0, v4, :cond_e

    move v0, v4

    :cond_e
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_f
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x12

    if-le v0, v9, :cond_10

    const/16 v0, 0x12

    :cond_10
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_6
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x12

    if-le v0, v9, :cond_11

    const/16 v0, 0x12

    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_7
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    if-le v0, v4, :cond_12

    move v0, v4

    :cond_12
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_13
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_14
    iget-object v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    if-ne v1, v2, :cond_14

    goto/16 :goto_2

    :cond_15
    :try_start_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_4

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x6

    if-le v0, v3, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_8

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v2, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x8

    if-le v0, v3, :cond_7

    const/16 v0, 0x8

    :cond_7
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x6

    if-le v0, v3, :cond_6

    const/4 v0, 0x6

    goto :goto_4

    :pswitch_4
    const/16 v3, 0x8

    if-le v0, v3, :cond_6

    const/16 v0, 0x8

    goto :goto_4

    :cond_8
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v2, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x8

    if-le v0, v6, :cond_a

    const/16 v0, 0x8

    goto :goto_5

    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/4 v6, 0x6

    if-le v0, v6, :cond_a

    const/4 v0, 0x6

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
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

.method private final jjMoveNfa_2(II)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_4

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_b

    :goto_3
    return p2

    :pswitch_0
    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    const/16 v0, 0xc

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x9

    if-le v0, v3, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :cond_4
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_8

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    :cond_6
    :goto_4
    if-ne v1, v2, :cond_5

    goto :goto_2

    :pswitch_2
    const/16 v3, 0xc

    if-le v0, v3, :cond_7

    const/16 v0, 0xc

    :cond_7
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_4

    :pswitch_3
    const/16 v3, 0x9

    if-le v0, v3, :cond_6

    const/16 v0, 0x9

    goto :goto_4

    :pswitch_4
    const/16 v3, 0xc

    if-le v0, v3, :cond_6

    const/16 v0, 0xc

    goto :goto_4

    :cond_8
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_9
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_a
    :goto_5
    if-ne v1, v2, :cond_9

    goto :goto_2

    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0xc

    if-le v0, v6, :cond_a

    const/16 v0, 0xc

    goto :goto_5

    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x9

    if-le v0, v6, :cond_a

    const/16 v0, 0x9

    goto :goto_5

    :cond_b
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
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

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_5

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_f

    :goto_3
    return p2

    :pswitch_0
    const-wide v5, -0x400000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    if-le v0, v5, :cond_4

    const/16 v0, 0xf

    :cond_4
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_1
    const/16 v5, 0xe

    if-le v0, v5, :cond_2

    const/16 v0, 0xe

    goto :goto_1

    :cond_5
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_b

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_6
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_1

    :cond_7
    :goto_4
    if-ne v1, v2, :cond_6

    goto :goto_2

    :pswitch_2
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_9

    const/16 v5, 0xf

    if-le v0, v5, :cond_8

    const/16 v0, 0xf

    :cond_8
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_9
    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_4

    :pswitch_3
    const/16 v5, 0xe

    if-le v0, v5, :cond_7

    const/16 v0, 0xe

    goto :goto_4

    :pswitch_4
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    const/16 v5, 0xf

    if-le v0, v5, :cond_a

    const/16 v0, 0xf

    :cond_a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_c
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    const/16 v6, 0xf

    if-le v0, v6, :cond_e

    const/16 v0, 0xf

    :cond_e
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    const/16 v6, 0xe

    if-le v0, v6, :cond_d

    const/16 v0, 0xe

    goto :goto_5

    :cond_f
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
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
        :pswitch_0
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
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

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
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iput v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/language/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/Token;)V
    .locals 4

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/Token;
    .locals 12

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v6, 0x1

    const v10, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    move-object v1, v5

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    if-eq v0, v10, :cond_6

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/Token;)V

    sget-object v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_1

    sget-object v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    :cond_1
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    goto :goto_3

    :pswitch_0
    iput v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    move v2, v0

    goto :goto_2

    :pswitch_1
    iput v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    move v2, v0

    goto :goto_2

    :pswitch_2
    iput v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    move v2, v0

    goto :goto_2

    :pswitch_3
    iput v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    if-nez v1, :cond_3

    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_d

    sget-object v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v0, v1, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_5

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    :cond_5
    iput v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v2, v7

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v7

    :goto_5
    if-nez v1, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V

    if-gt v2, v6, :cond_b

    const-string v0, ""

    :goto_6
    move-object v5, v0

    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/language/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/language/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_2
    move-exception v0

    if-gt v2, v6, :cond_9

    const-string v0, ""

    :goto_7
    iget-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_8

    iget-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_a

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v1

    goto/16 :goto_4

    :cond_d
    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/Token;
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/language/Token;->newToken(I)Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/language/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
