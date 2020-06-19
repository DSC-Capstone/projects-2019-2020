.class public Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private subType:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    const-string v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v0, "rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    const-string v0, "message"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseContentType(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v0, ""

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x2f

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v8, v1

    move-object v1, v4

    move v4, v8

    :goto_0
    if-nez v4, :cond_6

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_1
    const-string v0, "boundary"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v5, "multipart/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v5, "multipart/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iput-object v4, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    :cond_3
    const-string v0, "charset"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "text"

    iget-object v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v1, "boundary"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v1, v4

    move v4, v3

    move-object v3, v5

    goto/16 :goto_0

    :cond_8
    move v4, v3

    move-object v0, v2

    move-object v1, v2

    move-object v3, v5

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    move-object v3, v2

    move-object v4, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content-transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content-length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "content-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parseContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    return-wide v0
.end method

.method public getContentTypeParameters()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
