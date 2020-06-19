.class public Lti/modules/titanium/network/TiHTTPClient;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressListener;,
        Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;,
        Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_MAX_BUFFER_SIZE:I = 0x80000

.field private static final IS_BINARY_THRESHOLD:I = 0x1e

.field private static final LCAT:Ljava/lang/String; = "TiHttpClient"

.field private static final ON_DATA_STREAM:Ljava/lang/String; = "ondatastream"

.field private static final ON_ERROR:Ljava/lang/String; = "onerror"

.field private static final ON_LOAD:Ljava/lang/String; = "onload"

.field private static final ON_READY_STATE_CHANGE:Ljava/lang/String; = "onreadystatechange"

.field private static final ON_SEND_STREAM:Ljava/lang/String; = "onsendstream"

.field private static final PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "ti.android.httpclient.maxbuffersize"

.field private static final PROTOCOL_DEFAULT_PORT:I = -0x1

.field public static final READY_STATE_DONE:I = 0x4

.field public static final READY_STATE_HEADERS_RECEIVED:I = 0x2

.field public static final READY_STATE_LOADING:I = 0x3

.field public static final READY_STATE_OPENED:I = 0x1

.field public static final READY_STATE_UNSENT:I

.field private static httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private aborted:Z

.field private autoEncodeUrl:Z

.field private autoRedirect:Z

.field private charset:Ljava/lang/String;

.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private clientThread:Ljava/lang/Thread;

.field private connected:Z

.field private contentType:Ljava/lang/String;

.field private credentials:Lorg/apache/http/auth/Credentials;

.field private data:Ljava/lang/String;

.field private handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

.field protected headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Lorg/apache/http/HttpHost;

.field private maxBufferSize:J

.field private method:Ljava/lang/String;

.field private needMultipart:Z

.field private nvPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/mime/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/appcelerator/kroll/KrollProxy;

.field private readyState:I

.field private request:Lorg/apache/http/HttpRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field private responseData:Lorg/appcelerator/titanium/TiBlob;

.field private responseOut:Ljava/io/OutputStream;

.field private responseText:Ljava/lang/String;

.field private responseXml:Lti/modules/titanium/xml/DocumentProxy;

.field private status:I

.field private statusText:Ljava/lang/String;

.field private timeout:I

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 136
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 137
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    .line 457
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 458
    invoke-virtual {p0, v1}, Lti/modules/titanium/network/TiHTTPClient;->getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 460
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 463
    :cond_0
    iput v1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 466
    iput-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    .line 469
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.httpclient.maxbuffersize"

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    .line 471
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    return v0
.end method

.method static synthetic access$1002(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return p1
.end method

.method static synthetic access$1100(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object p1
.end method

.method static synthetic access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p1
.end method

.method static synthetic access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method static synthetic access$1302(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object p1
.end method

.method static synthetic access$1400(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method static synthetic access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    return v0
.end method

.method static synthetic access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V

    return-void
.end method

.method static synthetic access$202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method static synthetic access$2100(Lti/modules/titanium/network/TiHTTPClient;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    return v0
.end method

.method static synthetic access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$2300(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object p1
.end method

.method static synthetic access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$702(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 92
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$800(Lti/modules/titanium/network/TiHTTPClient;)J
    .locals 2
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient;

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method private static getCleanUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x40

    .line 746
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 748
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 749
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&="

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 750
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/:@"

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "encodedAuthority":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 752
    .local v3, "firstAt":I
    if-ltz v3, :cond_0

    .line 753
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 754
    .local v4, "lastAt":I
    if-le v4, v3, :cond_0

    .line 760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/:"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    .end local v4    # "lastAt":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 764
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 765
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 7
    .param p1, "form"    # Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .prologue
    .line 1197
    const/4 v1, 0x0

    .line 1198
    .local v1, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1200
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    .local v2, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    move-object v1, v2

    .line 1211
    .end local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    if-eqz v1, :cond_0

    .line 1212
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 1213
    .local v4, "header":Lorg/apache/http/Header;
    if-nez v4, :cond_2

    .line 1214
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 1219
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1220
    .local v0, "e":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1222
    .end local v0    # "e":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_0
    return-void

    .line 1202
    :catch_0
    move-exception v3

    .line 1204
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "TiHttpClient"

    const-string v6, "Exception, implement recovery: "

    invoke-static {v5, v6, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1208
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v1, p1

    goto :goto_0

    .line 1217
    .restart local v4    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    if-lez v0, :cond_2

    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 656
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 658
    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 660
    :cond_0
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 661
    sput-object v2, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 662
    :cond_1
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_2

    .line 663
    sput-object v2, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 665
    :cond_2
    return-void
.end method

.method public addPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 865
    if-nez p2, :cond_0

    .line 866
    const-string p2, ""

    .line 869
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    if-eqz v1, :cond_1

    .line 875
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addStringData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 860
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 893
    :try_start_0
    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v8, :cond_0

    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-nez v8, :cond_0

    .line 894
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    move-object v1, v0

    .line 895
    .local v1, "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 896
    .local v3, "body":Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    .line 928
    .end local v1    # "baseFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v3    # "body":Lorg/apache/http/entity/mime/content/FileBody;
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v8

    .line 899
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v8, p2, Lorg/appcelerator/titanium/TiBlob;

    if-nez v8, :cond_1

    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-eqz v8, :cond_3

    .line 901
    :cond_1
    instance-of v8, p2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v8, :cond_2

    .line 902
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 906
    .end local p2    # "value":Ljava/lang/Object;
    .local v2, "blob":Lorg/appcelerator/titanium/TiBlob;
    :goto_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 907
    .local v6, "mimeType":Ljava/lang/String;
    const-string v8, "tixhr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "txt"

    invoke-static {v6, v10}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 908
    .local v7, "tmpFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 909
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 910
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 912
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v3, v7, v6}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 913
    .restart local v3    # "body":Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v8

    goto :goto_0

    .line 904
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v3    # "body":Lorg/apache/http/entity/mime/content/FileBody;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "tmpFile":Ljava/io/File;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/io/TiResourceFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .restart local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    goto :goto_1

    .line 917
    .end local v2    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    if-eqz p2, :cond_4

    .line 918
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local p2    # "value":Ljava/lang/Object;
    :goto_2
    const/4 v8, 0x0

    goto :goto_0

    .line 921
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 925
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 926
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error adding post data ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 691
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 692
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "lower_url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 696
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 700
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_1
    return-void
.end method

.method protected createClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 933
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 934
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 936
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 937
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 938
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 939
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 941
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 942
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 944
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method public fireCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 494
    .local v0, "eventProperties":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "source"

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method public fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getCallback(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;

    move-result-object v0

    .line 502
    .local v0, "cb":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v0, :cond_1

    .line 505
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string v1, "onerror"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "TiHttpClient"

    const-string v2, "No onerror callback specified; it would be called if it were."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 8

    .prologue
    .line 669
    const-string v4, ""

    .line 670
    .local v4, "result":Ljava/lang/String;
    iget v6, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    if-eqz v6, :cond_1

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 674
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 675
    .local v1, "headers":[Lorg/apache/http/Header;
    array-length v3, v1

    .line 676
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 677
    aget-object v0, v1, v2

    .line 678
    .local v0, "h":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "h":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v4
.end method

.method protected getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    return v0
.end method

.method protected getAutoRedirect()Z
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    return v0
.end method

.method public getCallback(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 486
    check-cast v0, Lorg/appcelerator/kroll/KrollFunction;

    .line 488
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5
    .param p1, "validating"    # Z

    .prologue
    const/16 v4, 0x1bb

    .line 949
    if-eqz p1, :cond_1

    .line 950
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 951
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 965
    :goto_0
    return-object v0

    .line 954
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->createClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 955
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 956
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_0

    .line 959
    :cond_1
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_2

    .line 960
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_0

    .line 963
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->createClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 964
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;

    invoke-direct {v3}, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 965
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 477
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    return v0

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string v7, ""

    .line 716
    .local v7, "result":Ljava/lang/String;
    iget v8, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 717
    const-string v1, ""

    .line 718
    .local v1, "delimiter":Ljava/lang/String;
    const/4 v2, 0x1

    .line 721
    .local v2, "firstPass":Z
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v8, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 722
    .local v4, "headers":[Lorg/apache/http/Header;
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 724
    .local v3, "header":Lorg/apache/http/Header;
    if-nez v2, :cond_0

    .line 726
    const-string v1, ", "

    .line 728
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 729
    const/4 v2, 0x0

    .line 722
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 732
    .end local v3    # "header":Lorg/apache/http/Header;
    :cond_1
    array-length v8, v4

    if-nez v8, :cond_2

    .line 734
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No value for response header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_2
    return-object v7

    .line 738
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "delimiter":Ljava/lang/String;
    .end local v2    # "firstPass":Z
    .end local v4    # "headers":[Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "getResponseHeader can only be called when readyState > 1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 554
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 556
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    .line 557
    .local v2, "data":[B
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "binaryCount":I
    array-length v5, v2

    .line 562
    .local v5, "len":I
    if-lez v5, :cond_3

    .line 563
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 564
    aget-byte v0, v2, v4

    .line 565
    .local v0, "b":B
    const/16 v6, 0x20

    if-lt v0, v6, :cond_0

    const/16 v6, 0x7f

    if-le v0, v6, :cond_1

    .line 566
    :cond_0
    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    const/16 v6, 0xd

    if-eq v0, v6, :cond_1

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    .line 567
    add-int/lit8 v1, v1, 0x1

    .line 563
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "b":B
    :cond_2
    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v5

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_3

    .line 573
    const/4 v6, 0x0

    .line 588
    .end local v1    # "binaryCount":I
    .end local v2    # "data":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    :goto_1
    return-object v6

    .line 577
    .restart local v1    # "binaryCount":I
    .restart local v2    # "data":[B
    .restart local v5    # "len":I
    :cond_3
    const-string v6, "ISO-8859-1"

    iput-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    .line 581
    .end local v1    # "binaryCount":I
    .end local v5    # "len":I
    :cond_4
    :try_start_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v2    # "data":[B
    :cond_5
    :goto_2
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_1

    .line 583
    .restart local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 584
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "TiHttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to convert to String using charset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-object v2

    .line 604
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    if-nez v3, :cond_3

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 606
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 612
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-static {v1, v2}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    goto :goto_0

    .line 615
    .restart local v1    # "text":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 618
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TiHttpClient"

    const-string v3, "Error parsing XML"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1236
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 770
    sget-boolean v4, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v4, :cond_0

    .line 771
    const-string v4, "TiHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open request method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    if-nez p2, :cond_1

    .line 776
    const-string v4, "TiHttpClient"

    const-string v5, "unable to open a null URL"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "URL cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    :cond_1
    const-string v4, "http://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 787
    :cond_2
    iget-boolean v4, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v4, :cond_5

    .line 788
    invoke-static {p2}, Lti/modules/titanium/network/TiHTTPClient;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 800
    :goto_0
    iget-boolean v4, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v4, :cond_6

    const-string v4, ".*\\?.*\\%\\d\\d.*$"

    invoke-virtual {p2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 801
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 807
    :goto_1
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    .line 808
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "hostString":Ljava/lang/String;
    const/4 v3, -0x1

    .line 823
    .local v3, "port":I
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 826
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 827
    .local v2, "javaUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 838
    .end local v2    # "javaUrl":Ljava/net/URL;
    :goto_2
    sget-boolean v4, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v4, :cond_3

    .line 839
    const-string v4, "TiHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiating host with hostString=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', port=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', scheme=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_3
    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    .line 843
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 844
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 846
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 847
    const-string v5, "User-Agent"

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v6, "userAgent"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v4, "twitter.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 851
    const-string v4, "X-Requested-With"

    const-string v5, "XMLHttpRequest"

    invoke-virtual {p0, v4, v5}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :goto_3
    return-void

    .line 791
    .end local v1    # "hostString":Ljava/lang/String;
    .end local v3    # "port":I
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 804
    :cond_6
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 830
    .restart local v1    # "hostString":Ljava/lang/String;
    .restart local v3    # "port":I
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v4, "TiHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error attempting to derive Java url from uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 835
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_7
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v3

    goto/16 :goto_2

    .line 854
    :cond_8
    const-string v4, "TiHttpClient"

    const-string v5, "Twitter: not sending X-Requested-With header"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public send(Ljava/lang/Object;)V
    .locals 16
    .param p1, "userData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 971
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 974
    const-wide/16 v9, 0x0

    .line 975
    .local v9, "totalLength":D
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 977
    if-eqz p1, :cond_d

    .line 979
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/HashMap;

    if-eqz v12, :cond_f

    move-object/from16 v1, p1

    .line 980
    check-cast v1, Ljava/util/HashMap;

    .line 981
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v13, "POST"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v13, "PUT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_0
    const/4 v5, 0x1

    .line 982
    .local v5, "isPostOrPut":Z
    :goto_0
    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v4, 0x1

    .line 985
    .local v4, "isGet":Z
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 986
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 988
    .local v11, "value":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 990
    instance-of v12, v11, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v12, :cond_2

    .line 991
    check-cast v11, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v11

    .line 994
    :cond_2
    instance-of v12, v11, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v12, :cond_3

    instance-of v12, v11, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v12, :cond_1

    .line 995
    :cond_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 1001
    .end local v6    # "key":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 1002
    .local v7, "queryStringAltered":Z
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1003
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1005
    .restart local v11    # "value":Ljava/lang/Object;
    if-eqz v5, :cond_b

    if-eqz v11, :cond_b

    .line 1007
    instance-of v12, v11, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v12, :cond_6

    .line 1008
    check-cast v11, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v11

    .line 1011
    :cond_6
    instance-of v12, v11, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v12, :cond_7

    instance-of v12, v11, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v12, :cond_a

    .line 1012
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lti/modules/titanium/network/TiHTTPClient;->addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v9, v12

    goto :goto_2

    .line 981
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isGet":Z
    .end local v5    # "isPostOrPut":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "queryStringAltered":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 982
    .restart local v5    # "isPostOrPut":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 1015
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "isGet":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "queryStringAltered":Z
    :cond_a
    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1016
    .local v8, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lti/modules/titanium/network/TiHTTPClient;->addPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v9, v12

    .line 1018
    goto :goto_2

    .line 1020
    .end local v8    # "str":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_b
    if-eqz v4, :cond_5

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 1023
    const/4 v7, 0x1

    goto :goto_2

    .line 1027
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_c
    if-eqz v7, :cond_d

    .line 1028
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 1036
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isGet":Z
    .end local v5    # "isPostOrPut":Z
    .end local v7    # "queryStringAltered":Z
    :cond_d
    :goto_3
    sget-boolean v12, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v12, :cond_e

    .line 1037
    const-string v12, "TiHttpClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Instantiating http request with method=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' and this url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v12, "TiHttpClient"

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_e
    new-instance v12, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v12}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    .line 1042
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1043
    .local v2, "header":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v13, v2, v12}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1032
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->addStringData(Ljava/lang/String;)V

    goto :goto_3

    .line 1046
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_10
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v10}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;-><init>(Lti/modules/titanium/network/TiHTTPClient;D)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TiHttpClient-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setPriority(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1050
    sget-boolean v12, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v12, :cond_11

    .line 1051
    const-string v12, "TiHttpClient"

    const-string v13, "Leaving send()"

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_11
    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v1, "TiHttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 547
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "source"

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "onerror"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    return-void
.end method

.method protected setAutoEncodeUrl(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1246
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 1247
    return-void
.end method

.method protected setAutoRedirect(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1256
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 1257
    return-void
.end method

.method public setReadyState(I)V
    .locals 3
    .param p1, "readyState"    # I

    .prologue
    .line 531
    sget-boolean v0, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ready state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 536
    const-string v0, "onreadystatechange"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 539
    const-string v0, "onload"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;)V

    .line 541
    :cond_1
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 704
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-void

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRequestHeader can only be called before invoking send."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResponseText(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseText"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 638
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    .line 639
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 648
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    .line 649
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 1241
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 1242
    return-void
.end method

.method public validatesSecureCertificate()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    .line 521
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
