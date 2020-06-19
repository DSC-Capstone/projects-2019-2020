.class final Lio/senseai/kelvinsdk/If;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ʻ:Z

.field private static ˊ:Landroid/content/Context;

.field private static ˋ:Ljava/lang/String;

.field private static ˎ:Lio/senseai/kelvinsdk/Session;

.field private static ˏ:Landroid/os/Handler;

.field private static ᐝ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    .line 38
    sput-object v0, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    .line 39
    sput-object v0, Lio/senseai/kelvinsdk/If;->ˎ:Lio/senseai/kelvinsdk/Session;

    .line 40
    sput-object v0, Lio/senseai/kelvinsdk/If;->ˏ:Landroid/os/Handler;

    .line 41
    sput-boolean v1, Lio/senseai/kelvinsdk/If;->ᐝ:Z

    .line 42
    sput-boolean v1, Lio/senseai/kelvinsdk/If;->ʻ:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    sput-object p1, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {p1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    .line 56
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˏ:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lio/senseai/kelvinsdk/If;->ˏ:Landroid/os/Handler;

    .line 59
    :cond_1
    return-void
.end method

.method static synthetic ˊ()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/If;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lio/senseai/kelvinsdk/If;

    invoke-direct {v0, p0}, Lio/senseai/kelvinsdk/If;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/Session;)Lio/senseai/kelvinsdk/Session;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lio/senseai/kelvinsdk/If;->ˎ:Lio/senseai/kelvinsdk/Session;

    return-object p0
.end method

.method static synthetic ˊ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;ILio/senseai/kelvinsdk/ˋ;I)V
    .locals 4

    .prologue
    .line 1366
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˏ:Landroid/os/Handler;

    new-instance v1, Lio/senseai/kelvinsdk/If$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/senseai/kelvinsdk/If$4;-><init>(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V

    mul-int v2, p1, p1

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;Lbmh;)V
    .locals 3

    .prologue
    .line 1377
    invoke-virtual {p1}, Lbmh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauw;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lauw;->c(Ljava/lang/String;)Lauw;

    move-result-object v0

    const-string v1, "processed"

    invoke-virtual {v0, v1}, Lauw;->b(Ljava/lang/String;)Laur;

    move-result-object v0

    .line 1378
    new-instance v1, Lauj;

    invoke-direct {v1}, Lauj;-><init>()V

    .line 1379
    new-instance v2, Lio/senseai/kelvinsdk/If$5;

    invoke-direct {v2, p0}, Lio/senseai/kelvinsdk/If$5;-><init>(Lio/senseai/kelvinsdk/If;)V

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/If$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1380
    invoke-virtual {v1, v0, v2}, Lauj;->a(Laut;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1381
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    sget-object v1, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v1}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˋ(Ljava/util/List;)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/ˋ;I)V

    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/ˋ;II)V

    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;Ljava/lang/String;ILio/senseai/kelvinsdk/ˋ;)V
    .locals 4

    .prologue
    .line 1222
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˏ:Landroid/os/Handler;

    new-instance v1, Lio/senseai/kelvinsdk/If$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lio/senseai/kelvinsdk/If$2;-><init>(Lio/senseai/kelvinsdk/If;Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V

    mul-int v2, p2, p2

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method static synthetic ˊ(Lio/senseai/kelvinsdk/If;Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V

    return-void
.end method

.method private ˊ(Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 391
    const-string v0, "https://senseai.io/api/v2/identify"

    .line 393
    new-instance v1, Lio/senseai/kelvinsdk/If$6;

    invoke-direct {v1, p0, p1, p2}, Lio/senseai/kelvinsdk/If$6;-><init>(Lio/senseai/kelvinsdk/If;Lio/senseai/kelvinsdk/ˋ;I)V

    .line 451
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 452
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    .line 455
    :cond_0
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v2}, Lbku;->a(Landroid/content/Context;)Lbnd;

    move-result-object v2

    const-string v3, "POST"

    invoke-interface {v2, v3, v0}, Lbnd;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmx;

    const v2, 0xea60

    invoke-interface {v0, v2}, Lbmx;->b(I)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v0, v2, v3}, Lbmx;->e(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lbmx;->e(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    invoke-interface {v0}, Lbmx;->a()Lbnh;

    move-result-object v0

    invoke-interface {v0}, Lbnh;->l()Lbda;

    move-result-object v0

    invoke-interface {v0, v1}, Lbda;->a(Lbdb;)Lbda;

    .line 463
    return-void
.end method

.method private ˊ(Lio/senseai/kelvinsdk/ˋ;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 237
    sget-boolean v0, Lio/senseai/kelvinsdk/If;->ᐝ:Z

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lio/senseai/kelvinsdk/If;->ᐝ:Z

    .line 242
    const-string v0, "https://senseai.io/api/v2/data"

    .line 243
    new-instance v1, Lio/senseai/kelvinsdk/If$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/senseai/kelvinsdk/If$3;-><init>(Lio/senseai/kelvinsdk/If;ILio/senseai/kelvinsdk/ˋ;I)V

    .line 345
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 346
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ʽ()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    .line 349
    :cond_1
    sget-object v2, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v2}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v2

    invoke-virtual {v2}, Lio/senseai/kelvinsdk/ᐝ;->ʿ()Laur;

    move-result-object v2

    .line 353
    sget-object v3, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v3}, Lbku;->a(Landroid/content/Context;)Lbnd;

    move-result-object v3

    const-string v4, "POST"

    invoke-interface {v3, v4, v0}, Lbnd;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmx;

    const v3, 0xea60

    invoke-interface {v0, v3}, Lbmx;->b(I)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v0, v3, v4}, Lbmx;->e(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lio/senseai/kelvinsdk/If;->ˋ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lbmx;->e(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v0

    check-cast v0, Lbmx;

    invoke-interface {v0, v2}, Lbmx;->b(Laur;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmy;

    invoke-interface {v0}, Lbmy;->a()Lbnh;

    move-result-object v0

    invoke-interface {v0}, Lbnh;->l()Lbda;

    move-result-object v0

    invoke-interface {v0, v1}, Lbda;->a(Lbdb;)Lbda;

    goto :goto_0
.end method

.method private ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Lio/senseai/kelvinsdk/Session;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 70
    sget-boolean v0, Lio/senseai/kelvinsdk/If;->ʻ:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lio/senseai/kelvinsdk/If;->ʻ:Z

    .line 75
    const-string v7, "https://senseai.io/api/v2/access"

    .line 76
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˊ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v0, Lio/senseai/kelvinsdk/If$1;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/senseai/kelvinsdk/If$1;-><init>(Lio/senseai/kelvinsdk/If;ILjava/lang/String;Lio/senseai/kelvinsdk/ˋ;Ljava/lang/String;)V

    .line 200
    :try_start_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    .line 206
    :goto_1
    sget-object v1, Lio/senseai/kelvinsdk/If;->ˊ:Landroid/content/Context;

    invoke-static {v1}, Lbku;->a(Landroid/content/Context;)Lbnd;

    move-result-object v1

    const-string v4, "POST"

    invoke-interface {v1, v4, v7}, Lbnd;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmx;

    const v4, 0xea60

    invoke-interface {v1, v4}, Lbmx;->b(I)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v4, "api_key"

    invoke-interface {v1, v4, p1}, Lbmx;->d(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v4, "sdk_version"

    const-string v6, "0.3.3"

    invoke-interface {v1, v4, v6}, Lbmx;->d(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v4, "device_id"

    invoke-interface {v1, v4, v5}, Lbmx;->d(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v4, "os_version"

    invoke-interface {v1, v4, v2}, Lbmx;->d(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v2, "model"

    invoke-interface {v1, v2, v3}, Lbmx;->d(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Lbmx;->e(Ljava/lang/String;Ljava/lang/String;)Lbne;

    move-result-object v1

    check-cast v1, Lbmx;

    invoke-interface {v1}, Lbmx;->a()Lbnh;

    move-result-object v1

    invoke-interface {v1}, Lbnh;->l()Lbda;

    move-result-object v1

    invoke-interface {v1, v0}, Lbda;->a(Lbdb;)Lbda;

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v6

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_2
.end method

.method public static ˋ(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x0

    const-wide/32 v4, 0x2932e00

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 553
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/senseai/kelvinsdk/DeviceFetchRetryReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 555
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 557
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic ˋ()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lio/senseai/kelvinsdk/If;->ʻ:Z

    return v0
.end method

.method public static ˎ(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 567
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/senseai/kelvinsdk/DeviceFetchRetryReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 569
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 570
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 571
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 572
    return-void
.end method

.method static synthetic ˎ()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lio/senseai/kelvinsdk/If;->ᐝ:Z

    return v0
.end method

.method static synthetic ˏ()Lio/senseai/kelvinsdk/Session;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lio/senseai/kelvinsdk/If;->ˎ:Lio/senseai/kelvinsdk/Session;

    return-object v0
.end method


# virtual methods
.method public final ˊ(Lio/senseai/kelvinsdk/KelvinInit$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/ˋ;I)V

    .line 388
    return-void
.end method

.method public final ˊ(Lio/senseai/kelvinsdk/OnlineService$1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, v0, v0}, Lio/senseai/kelvinsdk/If;->ˊ(Lio/senseai/kelvinsdk/ˋ;II)V

    .line 234
    return-void
.end method

.method public final ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/senseai/kelvinsdk/\u02cb",
            "<",
            "Lio/senseai/kelvinsdk/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/senseai/kelvinsdk/If;->ˊ(Ljava/lang/String;Lio/senseai/kelvinsdk/ˋ;I)V

    .line 67
    return-void
.end method
