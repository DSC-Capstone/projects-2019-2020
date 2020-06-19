.class public Lorg/apache/james/mime4j/field/language/ContentLanguageParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/language/ContentLanguageParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/language/Token;

.field private jj_ntk:I

.field private languages:Ljava/util/ArrayList;

.field public token:Lorg/apache/james/mime4j/field/language/Token;

.field public token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->languages:Ljava/util/ArrayList;

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

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

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->languages:Ljava/util/ArrayList;

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    new-instance v1, Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->languages:Ljava/util/ArrayList;

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final doParse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->language()Ljava/lang/String;

    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->languages:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->language()Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/language/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->generateParseException()Lorg/apache/james/mime4j/field/language/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1_0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x80004
        0x80004
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/language/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/language/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

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

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

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

.method public generateParseException()Lorg/apache/james/mime4j/field/language/ParseException;
    .locals 8

    const/16 v7, 0x17

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_kind:I

    :cond_1
    move v2, v0

    :goto_1
    const/4 v1, 0x3

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    if-ne v1, v4, :cond_3

    move v1, v0

    :goto_2
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1_0:[I

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

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/language/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/language/ParseException;-><init>(Lorg/apache/james/mime4j/field/language/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/language/Token;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/language/Token;
    .locals 3

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, v2, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public final language()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/ParseException;
        }
    .end annotation

    const/16 v5, 0x2d

    const/16 v4, 0x12

    const/4 v3, 0x2

    const/4 v2, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    aput v3, v0, v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->languages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_la1:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_gen:I

    aput v1, v0, v3

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/language/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/language/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_ntk:I

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public parse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/ParseException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParser;->doParse()Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/language/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/language/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/language/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
