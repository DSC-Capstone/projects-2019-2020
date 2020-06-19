.class public Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserConstants;


# static fields
.field public static final INITIAL_VERSION_VALUE:I = -0x1

.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/mimeversion/Token;

.field private jj_ntk:I

.field private major:I

.field private minor:I

.field public token:Lorg/apache/james/mime4j/field/mimeversion/Token;

.field public token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->major:I

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->minor:I

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

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

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->major:I

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->minor:I

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-direct {v1, p1, v4, v4}, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->major:I

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->minor:I

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/mimeversion/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->generateParseException()Lorg/apache/james/mime4j/field/mimeversion/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1_0:[I

    return-void
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/mimeversion/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    aput v5, v1, v0

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
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-virtual {v1, p1, v3, v3}, Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

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

.method public generateParseException()Lorg/apache/james/mime4j/field/mimeversion/ParseException;
    .locals 8

    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_kind:I

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_4

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    if-ne v1, v4, :cond_3

    move v1, v0

    :goto_2
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1_0:[I

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

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/ParseException;-><init>(Lorg/apache/james/mime4j/field/mimeversion/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->minor:I

    return v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/mimeversion/Token;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/mimeversion/Token;
    .locals 3

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/Token;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public final parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/ParseException;
        }
    .end annotation

    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    move-result-object v1

    :try_start_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->major:I

    iget-object v0, v1, Lorg/apache/james/mime4j/field/mimeversion/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->minor:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/ParseException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->parse()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->parse()V

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_gen:I

    aput v2, v0, v1

    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/Token;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
