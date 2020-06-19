.class public Lti/modules/titanium/network/HTTPClientProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "HTTPClientProxy.java"


# static fields
.field public static final DONE:I = 0x4

.field public static final HEADERS_RECEIVED:I = 0x2

.field public static final LOADING:I = 0x3

.field public static final OPENED:I = 0x1

.field public static final UNSENT:I


# instance fields
.field private client:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 37
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/TiHTTPClient;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 42
    invoke-direct {p0}, Lti/modules/titanium/network/HTTPClientProxy;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->abort()V

    .line 49
    return-void
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->clearCookies(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAllResponseHeaders()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoEncodeUrl()Z

    move-result v0

    return v0
.end method

.method public getAutoRedirect()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoRedirect()Z

    move-result v0

    return v0
.end method

.method public getConnected()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getReadyState()I

    move-result v0

    return v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseData()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseXML()Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatesSecureCertificate()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->send(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public setAutoEncodeUrl(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoEncodeUrl(Z)V

    .line 158
    return-void
.end method

.method public setAutoRedirect(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoRedirect(Z)V

    .line 170
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 128
    return-void
.end method

.method setValidatesSecureCertificate(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 181
    const-string v0, "validatesSecureCertificate"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    return-void
.end method
