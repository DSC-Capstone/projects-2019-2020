.class public Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetVideosXMLHandler.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private allPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private buff:Ljava/lang/StringBuffer;

.field private buffering:Z

.field private isKey:Z

.field private key:Ljava/lang/String;

.field private nameValuePair:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "GetVideosXMLHandler"

    sput-object v0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    .line 37
    iput-boolean v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    .line 38
    iput-boolean v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->isKey:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 76
    iget-boolean v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->isKey:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->key:Ljava/lang/String;

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 52
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v1, "key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iput-boolean v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    .line 90
    iget-object v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v1, "string"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iput-boolean v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    .line 93
    iget-object v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->nameValuePair:Ljava/util/Map;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->pairList:Ljava/util/List;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->nameValuePair:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    const-string v1, "dict"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->allPairs:Ljava/util/List;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->pairList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 104
    iget-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->allPairs:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->allPairs:Ljava/util/List;

    .line 46
    sget-object v0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 57
    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    .line 59
    iput-boolean v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->isKey:Z

    .line 60
    iput-boolean v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->nameValuePair:Ljava/util/Map;

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buff:Ljava/lang/StringBuffer;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->isKey:Z

    .line 65
    iput-boolean v2, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->buffering:Z

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "dict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/http/GetVideosXMLHandler;->pairList:Ljava/util/List;

    goto :goto_0
.end method
