.class public Lti/modules/titanium/geolocation/TiCompass;
.super Ljava/lang/Object;
.source "TiCompass.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiCompass"


# instance fields
.field private baseTime:Ljava/util/Calendar;

.field private geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

.field private geomagneticField:Landroid/hardware/GeomagneticField;

.field private lastEventInUpdate:J

.field private lastHeading:F

.field private sensorTimerStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/geolocation/TiCompass;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/geolocation/GeolocationModule;)V
    .locals 2
    .param p1, "geolocationModule"    # Lti/modules/titanium/geolocation/GeolocationModule;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    .line 48
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/geolocation/TiCompass;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/geolocation/TiCompass;

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/geolocation/TiCompass;)J
    .locals 2
    .param p0, "x0"    # Lti/modules/titanium/geolocation/TiCompass;

    .prologue
    .line 32
    iget-wide v0, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    return-wide v0
.end method

.method static synthetic access$200(Lti/modules/titanium/geolocation/TiCompass;)Lti/modules/titanium/geolocation/GeolocationModule;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/geolocation/TiCompass;

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/geolocation/TiCompass;Landroid/hardware/SensorEvent;J)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/geolocation/TiCompass;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;
    .param p2, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/geolocation/TiCompass;->eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "timestamp"    # J

    .prologue
    const/high16 v9, 0x43b40000    # 360.0f

    .line 93
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v3, v6, v7

    .line 94
    .local v3, "x":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 95
    .local v4, "y":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v5, v6, v7

    .line 97
    .local v5, "z":F
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "heading":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "type"

    const-string v7, "heading"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v6, "x"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "y"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "z"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v6, "magneticHeading"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "accuracy"

    iget v7, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-boolean v6, Lti/modules/titanium/geolocation/TiCompass;->DBG:Z

    if-eqz v6, :cond_0

    .line 107
    iget v6, p1, Landroid/hardware/SensorEvent;->accuracy:I

    packed-switch v6, :pswitch_data_0

    .line 121
    const-string v6, "TiCompass"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown compass accuracy value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    if-eqz v6, :cond_2

    .line 126
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    invoke-virtual {v6}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v6

    sub-float v2, v3, v6

    .line 127
    .local v2, "trueHeading":F
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 128
    sub-float v6, v9, v2

    rem-float v2, v6, v9

    .line 131
    :cond_1
    const-string v6, "trueHeading"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v2    # "trueHeading":F
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "heading"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object v0

    .line 109
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_0
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy unreliable"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy low"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy medium"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_3
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy high"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 11
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 155
    if-eqz p1, :cond_1

    .line 156
    new-instance v9, Lti/modules/titanium/geolocation/TiCompass$1;

    invoke-direct {v9, p0, p1}, Lti/modules/titanium/geolocation/TiCompass$1;-><init>(Lti/modules/titanium/geolocation/TiCompass;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 173
    .local v9, "oneShotHeadingListener":Landroid/hardware/SensorEventListener;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v8

    .line 174
    .local v8, "locationManager":Landroid/location/LocationManager;
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 176
    .local v6, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x1

    invoke-virtual {v8, v6, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v10

    .line 177
    .local v10, "provider":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 178
    invoke-virtual {v8, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 179
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_0

    .line 180
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    .line 184
    .end local v7    # "location":Landroid/location/Location;
    :cond_0
    const/4 v8, 0x0

    .line 186
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v9, v1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 188
    .end local v6    # "criteria":Landroid/location/Criteria;
    .end local v8    # "locationManager":Landroid/location/LocationManager;
    .end local v9    # "oneShotHeadingListener":Landroid/hardware/SensorEventListener;
    .end local v10    # "provider":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getHasCompass()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "compass":Z
    invoke-static {}, Lorg/appcelerator/titanium/util/TiSensorHelper;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 144
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v2}, Lti/modules/titanium/geolocation/GeolocationModule;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiSensorHelper;->hasDefaultSensor(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 63
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x0

    .line 67
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 68
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v8, 0xf4240

    div-long v2, v6, v8

    .line 70
    .local v2, "eventTimestamp":J
    iget-wide v6, p0, Lti/modules/titanium/geolocation/TiCompass;->lastEventInUpdate:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 71
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    sub-long v8, v2, v8

    add-long v0, v6, v8

    .line 73
    .local v0, "actualTimestamp":J
    iput-wide v2, p0, Lti/modules/titanium/geolocation/TiCompass;->lastEventInUpdate:J

    .line 75
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v7, "headingFilter"

    invoke-virtual {v6, v7}, Lti/modules/titanium/geolocation/GeolocationModule;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 76
    .local v4, "filter":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 77
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v5

    .line 79
    .local v5, "headingFilter":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iget v7, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 89
    .end local v0    # "actualTimestamp":J
    .end local v2    # "eventTimestamp":J
    .end local v4    # "filter":Ljava/lang/Object;
    .end local v5    # "headingFilter":F
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v0    # "actualTimestamp":J
    .restart local v2    # "eventTimestamp":J
    .restart local v4    # "filter":Ljava/lang/Object;
    .restart local v5    # "headingFilter":F
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iput v6, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    .line 86
    .end local v5    # "headingFilter":F
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v7, "heading"

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/geolocation/TiCompass;->eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerListener()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 54
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 59
    return-void
.end method
