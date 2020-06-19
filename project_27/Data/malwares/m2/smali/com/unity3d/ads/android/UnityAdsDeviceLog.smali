.class public Lcom/unity3d/ads/android/UnityAdsDeviceLog;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLog.java"


# static fields
.field public static LOGLEVEL_DEBUG:I

.field public static LOGLEVEL_ERROR:I

.field public static LOGLEVEL_INFO:I

.field public static LOGLEVEL_NONE:I

.field public static LOGLEVEL_WARNING:I

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 11
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 12
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 13
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 14
    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 16
    sput v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_NONE:I

    .line 17
    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_ERROR:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_WARNING:I

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    .line 20
    const/16 v0, 0x8

    sput v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    .line 26
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "i"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "d"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "w"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    sget-object v3, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    const-string v4, "UnityAds"

    const-string v5, "e"

    invoke-direct {v2, v3, v4, v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const-string p0, "DO NOT USE EMPTY MESSAGES, use UnityAdsDeviceLog.entered() instead"

    .line 151
    :cond_1
    return-object p0
.end method

.method private static a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 119
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a:Z

    .line 121
    if-eqz v0, :cond_0

    .line 122
    sget-object v3, Lcom/unity3d/ads/android/l;->a:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    if-eqz v0, :cond_5

    move v3, v1

    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    goto :goto_0

    .line 127
    :pswitch_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0

    .line 130
    :pswitch_2
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    goto :goto_0

    .line 133
    :pswitch_3
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    goto :goto_0

    .line 141
    :cond_3
    array-length v1, v5

    if-ge v3, v1, :cond_6

    aget-object v1, v5, v3

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    new-instance v1, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    invoke-direct {v1, v0, p1, v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 142
    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-class v0, Landroid/util/Log;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :cond_4
    :goto_5
    return-void

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_5
    move-object v1, v4

    goto :goto_3

    :cond_6
    move-object v2, v4

    goto :goto_2

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0xc00

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7800

    if-ge v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static entered()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_DEBUG:I

    if-lt p0, v0, :cond_0

    .line 43
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 44
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 45
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 46
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    .line 68
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_INFO:I

    if-lt p0, v0, :cond_1

    .line 48
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 49
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 50
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 51
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_WARNING:I

    if-lt p0, v0, :cond_2

    .line 53
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 54
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 55
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 56
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0

    .line 57
    :cond_2
    sget v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOGLEVEL_ERROR:I

    if-lt p0, v0, :cond_3

    .line 58
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 59
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 60
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 61
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0

    .line 63
    :cond_3
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->b:Z

    .line 64
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->c:Z

    .line 65
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->e:Z

    .line 66
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->d:Z

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->a(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 108
    return-void
.end method
