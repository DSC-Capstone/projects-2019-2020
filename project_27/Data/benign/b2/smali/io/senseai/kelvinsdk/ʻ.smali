.class Lio/senseai/kelvinsdk/ʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˊ:Ljava/lang/String;

.field private static final ˋ:[C

.field private static final ˎ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/senseai/kelvinsdk/ʻ;->ˎ:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/senseai/kelvinsdk/ʻ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LOG_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/ʻ;->ˊ:Ljava/lang/String;

    .line 77
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/senseai/kelvinsdk/ʻ;->ˋ:[C

    return-void

    .line 32
    nop

    :array_0
    .array-data 1
        0x6et
        0x30t
        -0x35t
        0x59t
        -0x17t
        -0x2t
        0x3ct
        -0x1dt
        0x16t
        -0x12t
        -0x1dt
        0x3et
        -0x40t
        0x4ft
        -0x4ft
        0x3dt
        -0x15t
        -0x17t
        0x8t
        0xbt
        0x11t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static ʻ(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/WatchdogAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 352
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 353
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 354
    return-void
.end method

.method public static ʼ(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    const-string v1, "KelvinInit.ACTION_DEVICE_NOT_SUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-static {p0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lay;->a(Landroid/content/Intent;)Z

    .line 360
    return-void
.end method

.method private static ˊ(III)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v0, p0, 0xd

    rsub-int/lit8 v5, v0, 0x10

    mul-int/lit8 v0, p1, 0xf

    rsub-int/lit8 v3, v0, 0x12

    mul-int/lit8 v0, p2, 0x5

    rsub-int/lit8 v1, v0, 0x4d

    sget-object v6, Lio/senseai/kelvinsdk/ʻ;->ˎ:[B

    new-instance v7, Ljava/lang/String;

    new-array v0, v5, [B

    move v4, v3

    move v3, v1

    move v1, v2

    :goto_0
    int-to-byte v8, v3

    aput-byte v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v1, v5, :cond_0

    invoke-direct {v7, v0, v2}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v8, v6, v4

    sub-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method public static ˊ(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    .line 1180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, v2}, Lio/senseai/kelvinsdk/ʻ;->ˊ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˊ([B)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ˊ([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 81
    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lio/senseai/kelvinsdk/ʻ;->ˋ:[C

    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 82
    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lio/senseai/kelvinsdk/ʻ;->ˋ:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;Lio/senseai/kelvinsdk/OperatingMode;)V
    .locals 4

    .prologue
    .line 227
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    .line 1234
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    .line 1236
    sget-object v2, Lio/senseai/kelvinsdk/ʻ$2;->ˊ:[I

    invoke-virtual {p1}, Lio/senseai/kelvinsdk/OperatingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 227
    :goto_0
    invoke-virtual {v1, v0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Lio/senseai/kelvinsdk/aux;)V

    .line 231
    return-void

    .line 1238
    :pswitch_0
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˊ:Lio/senseai/kelvinsdk/aux;

    goto :goto_0

    .line 1242
    :pswitch_1
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˋ:Lio/senseai/kelvinsdk/aux;

    goto :goto_0

    .line 1246
    :pswitch_2
    sget-object v0, Lio/senseai/kelvinsdk/aux;->ˎ:Lio/senseai/kelvinsdk/aux;

    goto :goto_0

    .line 1236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 253
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ͺ()Lio/senseai/kelvinsdk/DeviceObject;

    move-result-object v1

    .line 257
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "A0001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/senseai/kelvinsdk/SysFsCrawler;

    new-instance v4, Lio/senseai/kelvinsdk/ʻ$1;

    invoke-direct {v4, p0, p1, p2, v0}, Lio/senseai/kelvinsdk/ʻ$1;-><init>(Landroid/content/Context;Ljava/lang/String;ZLio/senseai/kelvinsdk/ᐝ;)V

    invoke-direct {v3, p0, v1, v4}, Lio/senseai/kelvinsdk/SysFsCrawler;-><init>(Landroid/content/Context;Lio/senseai/kelvinsdk/DeviceObject;Lio/senseai/kelvinsdk/SysFsCrawler$Listener;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {p0}, Lio/senseai/kelvinsdk/ʻ;->ˎ(Landroid/content/Context;)V

    .line 277
    invoke-static {p0, p1, p2}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0, v0}, Lio/senseai/kelvinsdk/ʻ;->ˊ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4, v4}, Lio/senseai/kelvinsdk/ʻ;->ˊ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 65
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lio/senseai/kelvinsdk/ʻ;->ˊ([B)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move v0, v1

    .line 62
    goto :goto_0

    :cond_0
    move v0, v1

    .line 70
    goto :goto_0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public static ˊ(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 118
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luc;->a(Ljava/lang/String;)Luc;

    move-result-object v0

    .line 120
    invoke-static {p0}, Lio/senseai/kelvinsdk/ʻ;->ˋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Luc;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ˋ(Landroid/content/Context;)Lio/senseai/kelvinsdk/aux;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/ᐝ;->ˋ()Lio/senseai/kelvinsdk/aux;

    move-result-object v0

    return-object v0
.end method

.method public static ˋ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    const-string v0, "^[0-9]+.[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ˋ(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 282
    invoke-static {p0}, Lio/senseai/kelvinsdk/If;->ˎ(Landroid/content/Context;)V

    .line 283
    invoke-static {p0}, Lio/senseai/kelvinsdk/ʻ;->ᐝ(Landroid/content/Context;)V

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/senseai/kelvinsdk/OnlineService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    invoke-static {p0, v0}, Lbc;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static ˎ(Landroid/content/Context;)V
    .locals 4

    .prologue
    const v0, 0xdbba0

    .line 295
    invoke-static {p0}, Lio/senseai/kelvinsdk/If;->ˎ(Landroid/content/Context;)V

    .line 2219
    invoke-static {p0}, Lio/senseai/kelvinsdk/ᐝ;->ˊ(Landroid/content/Context;)Lio/senseai/kelvinsdk/ᐝ;

    move-result-object v1

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/ᐝ;->ˋ()Lio/senseai/kelvinsdk/aux;

    move-result-object v1

    .line 300
    sget-object v2, Lio/senseai/kelvinsdk/ʻ$2;->ˋ:[I

    invoke-virtual {v1}, Lio/senseai/kelvinsdk/aux;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/senseai/kelvinsdk/FusedLocationIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v2, "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_UPDATE_LOCATION_PARAMS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    sget-object v2, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_INTERVAL:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    sget-object v0, Lio/senseai/kelvinsdk/FusedLocationIntentService;->KEY_FASTEST_INTERVAL:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    return-void

    .line 302
    :pswitch_1
    const v0, 0x493e0

    .line 304
    goto :goto_0

    .line 307
    :pswitch_2
    const v0, 0x75300

    .line 309
    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static ˏ(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/FusedLocationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    const-string v1, "io.senseai.kelvinsdk.FusedLocationIntentService.ACTION_STOP_COLLECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 331
    return-void
.end method

.method public static ᐝ(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/senseai/kelvinsdk/WatchdogAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 340
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
