.class public Lorg/appcelerator/titanium/util/TiLocationHelper;
.super Ljava/lang/Object;
.source "TiLocationHelper.java"


# static fields
.field public static final ACCURACY_BEST:I = 0x0

.field public static final ACCURACY_HUNDRED_METERS:I = 0x2

.field public static final ACCURACY_KILOMETER:I = 0x3

.field public static final ACCURACY_NEAREST_TEN_METERS:I = 0x1

.field public static final ACCURACY_THREE_KILOMETERS:I = 0x4

.field private static final DBG:Ljava/lang/Boolean;

.field public static final DEFAULT_UPDATE_DISTANCE:F = 10.0f

.field public static final DEFAULT_UPDATE_FREQUENCY:I = 0x1388

.field public static final ERR_PERMISSION_DENIED:I = 0x1

.field public static final ERR_POSITION_UNAVAILABLE:I = 0x2

.field public static final ERR_TIMEOUT:I = 0x3

.field public static final ERR_UNKNOWN_ERROR:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TiLocationHelper"

.field private static listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->DBG:Ljava/lang/Boolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildUpdateDistance(Ljava/lang/Integer;)F
    .locals 4
    .param p0, "accuracy"    # Ljava/lang/Integer;

    .prologue
    .line 62
    const/high16 v0, 0x41200000    # 10.0f

    .line 64
    .local v0, "updateDistance":F
    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    const-string v1, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown accuracy value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 66
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 67
    :pswitch_1
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0

    .line 68
    :pswitch_2
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    .line 69
    :pswitch_3
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 70
    :pswitch_4
    const v0, 0x453b8000    # 3000.0f

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static buildUpdateFrequency(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "frequency"    # Ljava/lang/Integer;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 56
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method protected static createCriteria(Ljava/lang/Integer;)Landroid/location/Criteria;
    .locals 5
    .param p0, "accuracy"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 178
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 180
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    .line 200
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown accuracy value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-object v0

    .line 187
    .restart local v1    # "value":I
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 195
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 196
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 197
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "preferredProvider"    # Ljava/lang/String;
    .param p1, "accuracy"    # Ljava/lang/Integer;

    .prologue
    .line 165
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->isValidProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    move-object v1, p0

    .line 172
    .local v1, "provider":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 168
    .end local v1    # "provider":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->createCriteria(Ljava/lang/Integer;)Landroid/location/Criteria;

    move-result-object v0

    .line 169
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "provider":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLocationManager()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 48
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static isLocationEnabled()Z
    .locals 7

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "enabled":Z
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 213
    sget-object v4, Lorg/appcelerator/titanium/util/TiLocationHelper;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-string v4, "TiLocationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabled location provider count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "name":Ljava/lang/String;
    const-string v4, "TiLocationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] service available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 224
    :goto_1
    return v0

    .line 221
    :cond_1
    const-string v4, "TiLocationHelper"

    const-string v5, "No available providers"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static isLocationProviderEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isValidProvider(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 144
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 148
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->isLocationProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isn\'t enabled on this device.  Will default to auto-select of GPS provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    :goto_1
    return v0

    .line 142
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    .restart local v0    # "enabled":Z
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 153
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isn\'t enabled on this device.  Will default to auto-select of GPS provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_3

    .line 153
    const-string v3, "TiLocationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred provider ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] isn\'t enabled on this device.  Will default to auto-select of GPS provider."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v2
.end method

.method public static registerListener(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/location/LocationListener;)V
    .locals 7
    .param p0, "preferredProvider"    # Ljava/lang/String;
    .param p1, "accuracy"    # Ljava/lang/Integer;
    .param p2, "frequency"    # Ljava/lang/Integer;
    .param p3, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    .line 83
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 85
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateFrequency(Ljava/lang/Integer;)I

    move-result v6

    .line 86
    .local v6, "updateFrequency":I
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateDistance(Ljava/lang/Integer;)F

    move-result v4

    .line 88
    .local v4, "updateDistance":F
    const-string v0, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering listener with provider ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], frequency ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], distance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    int-to-long v2, v6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 91
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 95
    .end local v4    # "updateDistance":F
    .end local v6    # "updateFrequency":I
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "TiLocationHelper"

    const-string v2, "unable to register, provider is null"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterListener(Landroid/location/LocationListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 99
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 102
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "TiLocationHelper"

    const-string v1, "unable to unregister, locationManager is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateProvider(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Landroid/location/LocationListener;)V
    .locals 7
    .param p0, "preferredProvider"    # Ljava/lang/String;
    .param p1, "accuracy"    # Ljava/lang/Integer;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "frequency"    # Ljava/lang/Integer;
    .param p4, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 112
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "currentProvider":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateFrequency(Ljava/lang/Integer;)I

    move-result v6

    .line 117
    .local v6, "updateFrequency":I
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateDistance(Ljava/lang/Integer;)F

    move-result v4

    .line 119
    .local v4, "updateDistance":F
    const-string v0, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating listener with provider ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], frequency ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], distance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 122
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    int-to-long v2, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 127
    .end local v1    # "currentProvider":Ljava/lang/String;
    .end local v4    # "updateDistance":F
    .end local v6    # "updateFrequency":I
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v0, "TiLocationHelper"

    const-string v2, "unable to update provider, locationManager is null"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
