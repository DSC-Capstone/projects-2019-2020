.class public Lorg/appcelerator/titanium/util/TiPlatformHelper;
.super Ljava/lang/Object;
.source "TiPlatformHelper.java"


# static fields
.field public static final DBG:Z

.field public static final LCAT:Ljava/lang/String; = "TiPlatformHelper"

.field private static applicationDisplayInfoInitialized:Z

.field public static applicationLogicalDensity:I

.field public static applicationScaleFactor:F

.field private static final currencyCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbolsByCode:Ljava/util/Map;
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

.field private static final locales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static platformId:Ljava/lang/String;

.field public static sb:Ljava/lang/StringBuilder;

.field public static sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    .line 53
    const/16 v0, 0xa0

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "s":Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 312
    :try_start_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    monitor-exit v2

    .line 316
    return-object v0

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getArchitecture()Ljava/lang/String;
    .locals 7

    .prologue
    .line 320
    const-string v0, "Unknown"

    .line 322
    .local v0, "arch":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 325
    .local v2, "l":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 326
    const-string v5, "Processor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "values":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 333
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 340
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v0

    .line 333
    .restart local v2    # "l":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiPlatformHelper"

    const-string v6, "Error while trying to access processor info in /proc/cpuinfo"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAvailableMemory()D
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 276
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "code":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 279
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "code":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "symbol":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 303
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "symbol":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 288
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "symbol":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 291
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0    # "symbol":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 401
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 402
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 403
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_2

    .line 404
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 405
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 406
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 408
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 411
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access WifiInfo, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "localeCode"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 270
    :goto_0
    return-object v6

    .line 225
    :cond_0
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "code":Ljava/lang/String;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    goto :goto_0

    .line 230
    :cond_1
    const-string v3, ""

    .local v3, "language":Ljava/lang/String;
    const-string v1, ""

    .local v1, "country":Ljava/lang/String;
    const-string v5, ""

    .line 231
    .local v5, "variant":Ljava/lang/String;
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v4, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 268
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v2, "l":Ljava/util/Locale;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 270
    goto :goto_0

    .line 237
    .end local v2    # "l":Ljava/util/Locale;
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_3
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "_"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 243
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 246
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_5
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 248
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 250
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 252
    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 256
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_7
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 258
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 260
    :cond_8
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 261
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getMacaddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "macaddr":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 348
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 349
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 350
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 352
    .local v2, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 354
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 355
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found mac address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 391
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_1
    return-object v0

    .line 358
    .restart local v2    # "wi":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_3

    .line 359
    const-string v4, "TiPlatformHelper"

    const-string v5, "no WifiInfo, enabling Wifi to get macaddr"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 362
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 363
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 364
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_4
    :goto_1
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_5

    .line 371
    const-string v4, "TiPlatformHelper"

    const-string v5, "disabling wifi because we enabled it."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 366
    :cond_6
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_4

    .line 367
    const-string v4, "TiPlatformHelper"

    const-string v5, "still no WifiInfo, assuming no macaddr"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_7
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 376
    const-string v4, "TiPlatformHelper"

    const-string v5, "enabling wifi failed, assuming no macaddr"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_8
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 381
    const-string v4, "TiPlatformHelper"

    const-string v5, "wifi already enabled, assuming no macaddr"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_9
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMobileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "android"

    return-object v0
.end method

.method public static getNetmask()Ljava/lang/String;
    .locals 7

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "netmask":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 427
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 428
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 429
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 431
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_1

    .line 432
    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 434
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found netmask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v1

    .line 437
    .restart local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access DhcpInfo, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNetworkType()I
    .locals 7

    .prologue
    .line 454
    const/4 v3, -0x1

    .line 456
    .local v3, "type":I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 458
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 461
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 471
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 464
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 466
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "32bit"

    return-object v0
.end method

.method public static getProcessorCount()I
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 9

    .prologue
    .line 57
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 59
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 63
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 64
    const-string v7, "TiPlatformHelper"

    const-string v8, "platformId is null, setting to empty string"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v7, ""

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v3, Lorg/appcelerator/titanium/util/TiDatabaseHelper;

    invoke-direct {v3, v0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, "db":Lorg/appcelerator/titanium/util/TiDatabaseHelper;
    const-string v7, "unique_machine_id"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "storedMachineId":Ljava/lang/String;
    const-string v7, "hardware_machine_id"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "hardwareMachineId":Ljava/lang/String;
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 75
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 81
    .local v2, "currentMachineId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "9774d56d682e549c"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "1234567890ABCDEF"

    aput-object v8, v1, v7

    .line 85
    .local v1, "badIds":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 86
    aget-object v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    const-string v7, "TiPlatformHelper"

    const-string v8, "renaming ID"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_1
    if-eq v2, v6, :cond_2

    .line 95
    const-string v7, "unique_machine_id"

    invoke-virtual {v3, v7, v2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v7, "hardware_machine_id"

    sget-object v8, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v7, "previous_machine_id"

    invoke-virtual {v3, v7, v6}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    sput-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 101
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    .line 102
    return-void

    .line 77
    .end local v1    # "badIds":[Ljava/lang/String;
    .end local v2    # "currentMachineId":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3
    move-object v2, v6

    .restart local v2    # "currentMachineId":Ljava/lang/String;
    goto :goto_0

    .line 85
    .restart local v1    # "badIds":[Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized intializeDisplayMetrics(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 111
    const-class v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    if-nez v4, :cond_0

    .line 112
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    const-class v4, Landroid/content/res/Resources;

    const-string v6, "getCompatibilityInfo"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 118
    .local v3, "gciMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "compatInfo":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "applicationScale"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v0    # "compatInfo":Ljava/lang/Object;
    .end local v3    # "gciMethod":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1

    .line 125
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 132
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    monitor-exit v5

    return-void

    .line 120
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "TiPlatformHelper"

    const-string v6, "Unable to get application scale factor, using reported density and it\'s factor"

    invoke-static {v4, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 126
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_4
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    .line 127
    const/16 v4, 0xa0

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    goto :goto_1

    .line 129
    :cond_2
    const/16 v4, 0x78

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 476
    packed-switch p0, :pswitch_data_0

    .line 482
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 478
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 479
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 480
    :pswitch_3
    const-string v0, "MOBILE"

    goto :goto_0

    .line 481
    :pswitch_4
    const-string v0, "LAN"

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static resetSid()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    .line 107
    return-void
.end method
