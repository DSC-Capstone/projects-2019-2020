.class public Lcom/urbanairship/Logger;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;

.field public static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/urbanairship/Logger;->logLevel:I

    const-string v0, "UrbanAirship"

    sput-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
