.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3

.field private static final fieldChars:Ljava/util/BitSet;


# instance fields
.field protected final body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private endOfHeader:Z

.field protected final endState:I

.field private field:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private fieldValue:Ljava/lang/String;

.field private final fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

.field private headerCount:I

.field private lineCount:I

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

.field protected final startState:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 3

    const/16 v2, 0x40

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->startState:I

    iput p3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endState:I

    iput-object p4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    new-instance v0, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    iput v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    iput-boolean v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    iput v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    return-void
.end method

.method private fillFieldBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v1, :cond_2

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v3, v1, :cond_2

    new-instance v0, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez v0, :cond_3

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v3, v4, v6, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;II)V

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    iput-boolean v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    if-lez v0, :cond_6

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    if-nez v0, :cond_7

    iput-boolean v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    goto/16 :goto_0
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "End of stream"

    goto :goto_0

    :pswitch_1
    const-string v0, "Start message"

    goto :goto_0

    :pswitch_2
    const-string v0, "End message"

    goto :goto_0

    :pswitch_3
    const-string v0, "Raw entity"

    goto :goto_0

    :pswitch_4
    const-string v0, "Start header"

    goto :goto_0

    :pswitch_5
    const-string v0, "Field"

    goto :goto_0

    :pswitch_6
    const-string v0, "End header"

    goto :goto_0

    :pswitch_7
    const-string v0, "Start multipart"

    goto :goto_0

    :pswitch_8
    const-string v0, "End multipart"

    goto :goto_0

    :pswitch_9
    const-string v0, "Preamble"

    goto :goto_0

    :pswitch_a
    const-string v0, "Epilogue"

    goto :goto_0

    :pswitch_b
    const-string v0, "Start bodypart"

    goto :goto_0

    :pswitch_c
    const-string v0, "End bodypart"

    goto :goto_0

    :pswitch_d
    const-string v0, "Body"

    goto :goto_0

    :pswitch_e
    const-string v0, "Bodypart"

    goto :goto_0

    :pswitch_f
    const-string v0, "In message"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected debug(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
.end method

.method public getField()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getLineNumber()I
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    return v0
.end method

.method protected message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, "Event is unexpectedly null."

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/Event;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected monitor(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/parser/Event;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->warn(Lorg/apache/james/mime4j/parser/Event;)V

    return-void
.end method

.method protected newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isMaximalBodyDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_0
.end method

.method protected parseField()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxHeaderCount()I

    move-result v3

    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    if-lt v0, v3, :cond_2

    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v1, "Maximum header limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->fillFieldBuffer()V

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-lez v0, :cond_4

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->indexOf(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_5

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v0, v1, v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    move v0, v1

    :goto_2
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    sget-object v5, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    move v0, v1

    :goto_3
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
