.class public Lti/modules/titanium/xml/XMLModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "XMLModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "XMLModule"

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 39
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 40
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v2, "XMLModule"

    const-string v3, "Error finding DOM implementation"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 53
    invoke-direct {p0}, Lti/modules/titanium/xml/XMLModule;-><init>()V

    .line 54
    return-void
.end method

.method private nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 177
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "ns":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 169
    const-string v0, ""

    .line 171
    .end local v0    # "ns":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 5
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v1, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    new-instance v1, Lti/modules/titanium/xml/DocumentProxy;

    sget-object v2, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v1, v2}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v1, "XMLModule"

    const-string v2, "Error parsing XML"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    throw v0

    .line 84
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "XMLModule"

    const-string v2, "Error reading XML"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    throw v0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .param p0, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .param p0, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1, p2}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method private serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 160
    :pswitch_0
    const-string v6, "XMLModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unrecognized node of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local p2    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-void

    .line 118
    .restart local p2    # "node":Lorg/w3c/dom/Node;
    :pswitch_1
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_4
    check-cast p2, Lorg/w3c/dom/Document;

    .end local p2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 130
    .restart local p2    # "node":Lorg/w3c/dom/Node;
    :pswitch_5
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "ns":Ljava/lang/String;
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 135
    .local v0, "attribs":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 137
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 138
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 143
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 144
    .restart local v3    # "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 145
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    :cond_1
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 151
    .end local v0    # "attribs":Lorg/w3c/dom/NamedNodeMap;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "ns":Ljava/lang/String;
    :pswitch_6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_8
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public serializeToString(Lti/modules/titanium/xml/NodeProxy;)Ljava/lang/String;
    .locals 5
    .param p1, "node"    # Lti/modules/titanium/xml/NodeProxy;

    .prologue
    .line 101
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 102
    .local v2, "writer":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 104
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 105
    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 106
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 107
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    :goto_0
    return-object v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "XMLModule"

    const-string v4, "Error serializing XML"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v3, 0x0

    goto :goto_0
.end method
