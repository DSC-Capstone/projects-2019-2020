.class public Lcom/urbanairship/AirshipConfigOptions;
.super Lcom/urbanairship/Options;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/AirshipConfigOptions$TransportType;
    }
.end annotation


# instance fields
.field public analyticsEnabled:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "analyticsEnabled"
    .end annotation
.end field

.field public analyticsServer:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "analyticsServer"
    .end annotation
.end field

.field public developmentAppKey:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentAppKey"
    .end annotation
.end field

.field public developmentAppSecret:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentAppSecret"
    .end annotation
.end field

.field public developmentLogLevel:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentLogLevel"
    .end annotation
.end field

.field public gcmSender:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "gcmSender"
    .end annotation
.end field

.field public hostURL:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "hostURL"
    .end annotation
.end field

.field public inProduction:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "inProduction"
    .end annotation
.end field

.field public locationOptions:Lcom/urbanairship/LocationOptions;

.field public productionAppKey:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionAppKey"
    .end annotation
.end field

.field public productionAppSecret:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionAppSecret"
    .end annotation
.end field

.field public productionLogLevel:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionLogLevel"
    .end annotation
.end field

.field public pushServiceEnabled:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "pushServiceEnabled"
    .end annotation
.end field

.field public richPushEnabled:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "richPushEnabled"
    .end annotation
.end field

.field public transport:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "transport"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/urbanairship/Options;-><init>()V

    const-string v0, "https://device-api.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    const-string v0, "https://combine.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    iput-boolean v1, p0, Lcom/urbanairship/AirshipConfigOptions;->richPushEnabled:Z

    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    new-instance v0, Lcom/urbanairship/LocationOptions;

    invoke-direct {v0}, Lcom/urbanairship/LocationOptions;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    return-void
.end method

.method private isLogLevelValid(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;
    .locals 2

    new-instance v0, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v0}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/urbanairship/AirshipConfigOptions;->loadFromProperties(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->locationOptions:Lcom/urbanairship/LocationOptions;

    invoke-virtual {v1, p0}, Lcom/urbanairship/LocationOptions;->loadFromProperties(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultPropertiesFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "airshipconfig.properties"

    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    goto :goto_0
.end method

.method public getTransport()Lcom/urbanairship/AirshipConfigOptions$TransportType;
    .locals 2

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->GCM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->GCM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HELIUM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HELIUM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HYBRID:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HYBRID:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->GCM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0
.end method

.method public isValid()Z
    .locals 6

    const/16 v5, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v3}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_6

    const-string v0, "production"

    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirshipConfigOptions: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not a valid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " app key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirshipConfigOptions: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not a valid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " app secret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    if-ge v2, v4, :cond_4

    aget-object v0, v0, v5

    const-class v2, Lcom/urbanairship/PropertyName;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    invoke-direct {p0, v0}, Lcom/urbanairship/AirshipConfigOptions;->isLogLevelValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a valid log level. Falling back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ERROR."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget v0, v3, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    :cond_5
    :goto_2
    return v1

    :cond_6
    const-string v0, "development"

    goto/16 :goto_0

    :cond_7
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The public field \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is missing an annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-string v0, "AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-string v0, "\t-keepattributes *Annotation*"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    invoke-direct {p0, v0}, Lcom/urbanairship/AirshipConfigOptions;->isLogLevelValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a valid log level. Falling back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DEBUG."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget v0, v3, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    goto :goto_2
.end method
