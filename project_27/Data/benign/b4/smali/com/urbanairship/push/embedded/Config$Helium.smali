.class public Lcom/urbanairship/push/embedded/Config$Helium;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helium"
.end annotation


# static fields
.field public static final MAX_HELIUM_CACHE_TTL_MS:J = 0x5265c00L

.field public static final backoffFactor:J = 0x2L

.field public static heliumCacheTTL:J = 0x0L

.field public static final initialRetryInterval:J = 0x2710L

.field public static final maxFailureCount:I = 0x3

.field public static final maxRetryInterval:J = 0x9c400L

.field public static max_keepalive_interval:J = 0x0L

.field public static minHeliumCacheTTL:J = 0x0L

.field public static final postFirstRunDelay:J = 0xbb8L

.field public static final postLookupDelay:J = 0xbb8L

.field public static final readSleep:J = 0x64L

.field public static final retryResetThreshold:J = 0x2bf20L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->heliumCacheTTL:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->minHeliumCacheTTL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
