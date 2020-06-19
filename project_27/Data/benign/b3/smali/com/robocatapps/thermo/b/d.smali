.class public Lcom/robocatapps/thermo/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/robocatapps/thermo/b/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/robocatapps/thermo/b/d;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/robocatapps/thermo/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/io/Reader;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private b(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=%f,%f"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Lcom/robocatapps/thermo/b/d;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/robocatapps/thermo/b/d;->a(Ljava/net/HttpURLConnection;)Ljava/io/Reader;

    move-result-object v4

    :try_start_0
    new-instance v0, Lcom/robocatapps/thermo/b/e;

    invoke-direct {v0, p0, v1, v2}, Lcom/robocatapps/thermo/b/e;-><init>(Lcom/robocatapps/thermo/b/d;[I[Ljava/lang/String;)V

    invoke-static {v4, v0}, Landroid/util/Xml;->parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-boolean v0, p0, Lcom/robocatapps/thermo/b/d;->b:Z

    if-eqz v0, :cond_0

    aget-object v0, v2, v5

    aget-object v2, v2, v6

    invoke-virtual {p1, v0, v2}, Lcom/robocatapps/thermo/model/Location;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    aget v0, v1, v6

    aget v2, v1, v7

    invoke-static {v0, v2}, Lcom/robocatapps/thermo/model/Temperature;->getFeelslikeFahrenheit(II)I

    move-result v0

    new-instance v2, Lcom/robocatapps/thermo/model/Temperature;

    aget v1, v1, v5

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->fahrenheitToCelsius(I)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/robocatapps/thermo/model/Temperature;-><init>(II)V

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCity()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=%s,%s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Location object contains neither gps coordinates nor country and city."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/robocatapps/thermo/b/b;

    invoke-direct {v1, v0}, Lcom/robocatapps/thermo/b/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private c(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;
    .locals 1

    iget-object v0, p0, Lcom/robocatapps/thermo/b/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/b/d;->c(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/b/d;->b(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/robocatapps/thermo/b/d;->b:Z

    return-void
.end method
