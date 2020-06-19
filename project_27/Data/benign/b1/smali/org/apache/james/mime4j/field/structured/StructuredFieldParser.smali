.class public Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/StructuredFieldParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/structured/Token;

.field private jj_ntk:I

.field private preserveFolding:Z

.field public token:Lorg/apache/james/mime4j/field/structured/Token;

.field public token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    new-instance v1, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final doParse()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/ParseException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0x32

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    move v2, v3

    :cond_0
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    if-ne v4, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk()I

    move-result v4

    :goto_1
    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    aput v1, v0, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk()I

    move-result v4

    :goto_2
    packed-switch v4, :pswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    aput v2, v0, v1

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/structured/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/structured/ParseException;-><init>()V

    throw v0

    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    goto :goto_2

    :pswitch_1
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v4

    if-eqz v0, :cond_4

    move v0, v3

    :cond_3
    :goto_3
    iget-object v4, v4, Lorg/apache/james/mime4j/field/structured/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_3

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_3

    :pswitch_2
    const/16 v4, 0xb

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/james/mime4j/field/structured/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v4

    if-eqz v0, :cond_6

    move v0, v3

    :cond_5
    :goto_4
    iget-object v4, v4, Lorg/apache/james/mime4j/field/structured/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_5

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_4

    :pswitch_4
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    iget-boolean v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    if-eqz v4, :cond_0

    const-string v4, "\r\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;

    move v2, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/structured/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/structured/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->generateParseException()Lorg/apache/james/mime4j/field/structured/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1_0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf800
        0xf800
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_nt:Lorg/apache/james/mime4j/field/structured/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/structured/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_nt:Lorg/apache/james/mime4j/field/structured/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/structured/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/structured/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_input_stream:Lorg/apache/james/mime4j/field/structured/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/structured/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/structured/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/structured/ParseException;
    .locals 8

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_kind:I

    :cond_1
    move v2, v0

    :goto_1
    const/4 v1, 0x2

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    if-ne v1, v4, :cond_3

    move v1, v0

    :goto_2
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_la1_0:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    aput-boolean v6, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_6

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_5

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/structured/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/structured/ParseException;-><init>(Lorg/apache/james/mime4j/field/structured/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/structured/Token;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/structured/Token;
    .locals 3

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token:Lorg/apache/james/mime4j/field/structured/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, v2, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->token_source:Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/structured/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/structured/Token;->next:Lorg/apache/james/mime4j/field/structured/Token;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public isFoldingPreserved()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    return v0
.end method

.method public parse()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/structured/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->doParse()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/structured/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/structured/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/structured/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFoldingPreserved(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/structured/StructuredFieldParser;->preserveFolding:Z

    return-void
.end method
