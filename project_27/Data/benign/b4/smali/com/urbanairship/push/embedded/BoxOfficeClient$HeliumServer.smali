.class public Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/BoxOfficeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeliumServer"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private discoveredAt:J

.field private failureCount:I

.field final synthetic this$0:Lcom/urbanairship/push/embedded/BoxOfficeClient;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/embedded/BoxOfficeClient;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->this$0:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->discoveredAt:J

    iput-object p2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;I)I
    .locals 0

    iput p1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I
    .locals 2

    iget v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return v0
.end method


# virtual methods
.method public isValid()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->discoveredAt:J

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure count for Helium server "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache TTL for Helium server "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/urbanairship/push/embedded/Config$Helium;->heliumCacheTTL:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-wide v4, Lcom/urbanairship/push/embedded/Config$Helium;->minHeliumCacheTTL:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-string v1, "Server valid. Age less than minimum cache TTL."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-wide v4, Lcom/urbanairship/push/embedded/Config$Helium;->heliumCacheTTL:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
