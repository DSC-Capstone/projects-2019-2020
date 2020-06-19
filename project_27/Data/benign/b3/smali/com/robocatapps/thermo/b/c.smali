.class public Lcom/robocatapps/thermo/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/robocatapps/thermo/b/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/b/b/a;)I
    .locals 3

    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/google/b/b/a;->a()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/b/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/b/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avgTempC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/b/b/a;->f()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/b/b/a;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/b/b/a;->b()V

    return v0
.end method

.method private static b(Lcom/google/b/b/a;)Lcom/robocatapps/thermo/model/Temperature;
    .locals 6

    const v1, 0x7fffffff

    invoke-virtual {p0}, Lcom/google/b/b/a;->a()V

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/b/b/a;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/b/b/a;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "avgTempC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/google/b/b/a;->f()D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_0

    :cond_0
    const-string v5, "wspdF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/b/b/a;->g()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v5, "avgTempF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/b/b/a;->f()D

    move-result-wide v4

    double-to-int v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/b/b/a;->h()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/b/b/a;->b()V

    if-eq v0, v1, :cond_4

    if-eq v2, v1, :cond_4

    invoke-static {v2, v0}, Lcom/robocatapps/thermo/model/Temperature;->getFeelslikeFahrenheit(II)I

    move-result v0

    invoke-static {v0}, Lcom/robocatapps/thermo/model/Temperature;->fahrenheitToCelsius(I)I

    move-result v1

    :cond_4
    new-instance v0, Lcom/robocatapps/thermo/model/Temperature;

    invoke-direct {v0, v3, v1}, Lcom/robocatapps/thermo/model/Temperature;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/j;->a(Z)V

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasLatLon()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://api.wt360.com/api/robocat/thermo?key=5t95nzzelezlm4wl92em3oiarleuq58vyg1lfzz2ezn24kmbl2&l=%s,%s&fmt=json"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/b/b/a;

    invoke-direct {v2, v1}, Lcom/google/b/b/a;-><init>(Ljava/io/Reader;)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/robocatapps/thermo/b/c;->a:I

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/google/b/b/a;->a()V

    :goto_2
    invoke-virtual {v2}, Lcom/google/b/b/a;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/b/b/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yesterday"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/robocatapps/thermo/b/c;->a(Lcom/google/b/b/a;)I

    move-result v3

    iput v3, p0, Lcom/robocatapps/thermo/b/c;->a:I

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountryCity()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://api.wt360.com/api/robocat/thermo?key=5t95nzzelezlm4wl92em3oiarleuq58vyg1lfzz2ezn24kmbl2&l=%s,%s&fmt=json"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://api.wt360.com/api/robocat/thermo?key=5t95nzzelezlm4wl92em3oiarleuq58vyg1lfzz2ezn24kmbl2&l=%s&fmt=json"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/robocatapps/thermo/model/Location;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No location information is available, wtf !?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v4, "current"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/robocatapps/thermo/b/c;->b(Lcom/google/b/b/a;)Lcom/robocatapps/thermo/model/Temperature;

    move-result-object v1

    :cond_6
    invoke-virtual {v2}, Lcom/google/b/b/a;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_7
    invoke-virtual {v2}, Lcom/google/b/b/a;->h()V

    goto :goto_2
.end method

.method public b(Lcom/robocatapps/thermo/model/Location;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/robocatapps/thermo/b/c;->a(Lcom/robocatapps/thermo/model/Location;)Lcom/robocatapps/thermo/model/Temperature;

    iget v0, p0, Lcom/robocatapps/thermo/b/c;->a:I

    return v0
.end method
