.class public Lcom/novioplan/pollennieuws/http/GetVideosXMLSaxParser;
.super Ljava/lang/Object;
.source "GetVideosXMLSaxParser.java"


# static fields
.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "GetVideosXMLHandler"

    sput-object v0, Lcom/novioplan/pollennieuws/http/GetVideosXMLSaxParser;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParsedXmlResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "xmlSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v3, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;

    invoke-direct {v3}, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;-><init>()V

    .line 29
    .local v3, "restaurantHandler":Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 30
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 33
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 35
    .local v6, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v6, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 38
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 39
    .local v2, "isrc":Lorg/xml/sax/InputSource;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 40
    .local v0, "bs":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 41
    invoke-interface {v6, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v2    # "isrc":Lorg/xml/sax/InputSource;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->getVideoList()Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 43
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    goto :goto_0
.end method
