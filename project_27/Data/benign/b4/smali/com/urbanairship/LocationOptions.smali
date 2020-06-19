.class public Lcom/urbanairship/LocationOptions;
.super Lcom/urbanairship/Options;


# static fields
.field private static final MAX_BG_REPORTING_INTERVAL_SECONDS:I = 0x15180

.field private static final MAX_UPDATE_INTERVAL_METERS:I = 0x186a0

.field private static final MAX_UPDATE_INTERVAL_SECONDS:I = 0x15180

.field private static final MIN_BG_REPORTING_INTERVAL_SECONDS:I = 0x3c

.field private static final MIN_UPDATE_INTERVAL_METERS:I = 0xa

.field private static final MIN_UPDATE_INTERVAL_SECONDS:I = 0x3c


# instance fields
.field public accuracy:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "accuracy"
    .end annotation
.end field

.field public allowGPSForLocationTracking:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "allowGPSForLocationTracking"
    .end annotation
.end field

.field public altitudeRequired:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "altitudeRequired"
    .end annotation
.end field

.field public backgroundReportingIntervalSeconds:J
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "backgroundReportingIntervalSeconds"
    .end annotation
.end field

.field public bearingRequired:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "bearingRequired"
    .end annotation
.end field

.field public costAllowed:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "costAllowed"
    .end annotation
.end field

.field public horizontalAccuracy:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "horizontalAccuracy"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public locationServiceEnabled:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "locationServiceEnabled"
    .end annotation
.end field

.field public powerRequirement:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "powerRequirement"
    .end annotation
.end field

.field public speedRequired:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "speedRequired"
    .end annotation
.end field

.field public updateIntervalMeters:I
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "updateIntervalMeters"
    .end annotation
.end field

.field public updateIntervalSeconds:J
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "updateIntervalSeconds"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x384

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/urbanairship/Options;-><init>()V

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->locationServiceEnabled:Z

    iput-boolean v2, p0, Lcom/urbanairship/LocationOptions;->allowGPSForLocationTracking:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    iput-wide v4, p0, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    iput-wide v4, p0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/urbanairship/LocationOptions;->accuracy:I

    iput v1, p0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    iput v2, p0, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->altitudeRequired:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->bearingRequired:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->speedRequired:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->costAllowed:Z

    return-void
.end method

.method private ensureUpdateIntervalValuesAreValid()V
    .locals 8

    const-wide/32 v6, 0x15180

    const-wide/16 v4, 0x3c

    iget-wide v0, p0, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The updateIntervalSeconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may decrease battery life."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The updateIntervalMeters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may decrease battery life if the updateIntervalSeconds value is also low."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The backgroundReportingIntervalSeconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may decrease battery life."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-wide v0, p0, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The updateIntervalSeconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->updateIntervalSeconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may provide less accurate location updates."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The updateIntervalMeters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/LocationOptions;->updateIntervalMeters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may provide less accurate location updates."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The backgroundReportingIntervalSeconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->backgroundReportingIntervalSeconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " may provide less detailed analytic reports."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isAccuracyValid(I)Z
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
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPowerReqValid()Z
    .locals 1

    iget v0, p0, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/LocationOptions;
    .locals 1

    new-instance v0, Lcom/urbanairship/LocationOptions;

    invoke-direct {v0}, Lcom/urbanairship/LocationOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/urbanairship/LocationOptions;->loadFromProperties(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getDefaultPropertiesFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "location.properties"

    return-object v0
.end method

.method public isValid()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-instance v3, Lcom/urbanairship/LocationOptions;

    invoke-direct {v3}, Lcom/urbanairship/LocationOptions;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    const-class v7, Lcom/urbanairship/PropertyName;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    :goto_1
    iget v1, p0, Lcom/urbanairship/LocationOptions;->accuracy:I

    invoke-direct {p0, v1}, Lcom/urbanairship/LocationOptions;->isAccuracyValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/urbanairship/LocationOptions;->accuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid location accuracy requirement. Falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/urbanairship/LocationOptions;->accuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ACCURACY_COARSE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget v1, v3, Lcom/urbanairship/LocationOptions;->accuracy:I

    iput v1, p0, Lcom/urbanairship/LocationOptions;->accuracy:I

    :cond_1
    iget v1, p0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    invoke-direct {p0, v1}, Lcom/urbanairship/LocationOptions;->isAccuracyValid(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid location accuracy requirement. Falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NO_REQUIREMENT."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget v1, v3, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    iput v1, p0, Lcom/urbanairship/LocationOptions;->horizontalAccuracy:I

    :cond_2
    invoke-direct {p0}, Lcom/urbanairship/LocationOptions;->isPowerReqValid()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid power requirement. Falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " POWER_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget v1, v3, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    iput v1, p0, Lcom/urbanairship/LocationOptions;->powerRequirement:I

    :cond_3
    invoke-direct {p0}, Lcom/urbanairship/LocationOptions;->ensureUpdateIntervalValuesAreValid()V

    return v0

    :cond_4
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The public field \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is missing an annotation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-string v6, "LocationOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:"

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    const-string v6, "\t-keepattributes *Annotation*"

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
