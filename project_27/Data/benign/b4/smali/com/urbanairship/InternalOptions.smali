.class public Lcom/urbanairship/InternalOptions;
.super Lcom/urbanairship/Options;


# instance fields
.field public useTestCluster:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/InternalOptions;->useTestCluster:Z

    return-void
.end method

.method public static loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/InternalOptions;
    .locals 1

    new-instance v0, Lcom/urbanairship/InternalOptions;

    invoke-direct {v0}, Lcom/urbanairship/InternalOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/urbanairship/InternalOptions;->loadFromProperties(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getDefaultPropertiesFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "internal.properties"

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFromProperties(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/urbanairship/Options;->loadFromProperties(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/urbanairship/InternalOptions;->useTestCluster:Z

    if-eqz v0, :cond_0

    const-string v0, "InternalOptions - using test cluster"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    const-string v1, "http://test.urbanairship.com"

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    const-string v0, "http://75.101.249.15:8090"

    sput-object v0, Lcom/urbanairship/push/embedded/Config$BoxOffice;->url:Ljava/lang/String;

    :cond_0
    return-void
.end method
