.class Lti/modules/titanium/geolocation/TiCompass$1;
.super Ljava/lang/Object;
.source "TiCompass.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/geolocation/TiCompass;->getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/geolocation/TiCompass;

.field final synthetic val$listener:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/modules/titanium/geolocation/TiCompass;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiCompass$1;->this$0:Lti/modules/titanium/geolocation/TiCompass;

    iput-object p2, p0, Lti/modules/titanium/geolocation/TiCompass$1;->val$listener:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x3

    .line 163
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 164
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 165
    .local v2, "eventTimestamp":J
    iget-object v4, p0, Lti/modules/titanium/geolocation/TiCompass$1;->this$0:Lti/modules/titanium/geolocation/TiCompass;

    invoke-static {v4}, Lti/modules/titanium/geolocation/TiCompass;->access$000(Lti/modules/titanium/geolocation/TiCompass;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass$1;->this$0:Lti/modules/titanium/geolocation/TiCompass;

    invoke-static {v6}, Lti/modules/titanium/geolocation/TiCompass;->access$100(Lti/modules/titanium/geolocation/TiCompass;)J

    move-result-wide v6

    sub-long v6, v2, v6

    add-long v0, v4, v6

    .line 167
    .local v0, "actualTimestamp":J
    iget-object v4, p0, Lti/modules/titanium/geolocation/TiCompass$1;->val$listener:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/geolocation/TiCompass$1;->this$0:Lti/modules/titanium/geolocation/TiCompass;

    invoke-static {v5}, Lti/modules/titanium/geolocation/TiCompass;->access$200(Lti/modules/titanium/geolocation/TiCompass;)Lti/modules/titanium/geolocation/GeolocationModule;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lti/modules/titanium/geolocation/TiCompass$1;->this$0:Lti/modules/titanium/geolocation/TiCompass;

    invoke-static {v8, p1, v0, v1}, Lti/modules/titanium/geolocation/TiCompass;->access$300(Lti/modules/titanium/geolocation/TiCompass;Landroid/hardware/SensorEvent;J)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 168
    invoke-static {v9, p0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 170
    .end local v0    # "actualTimestamp":J
    .end local v2    # "eventTimestamp":J
    :cond_0
    return-void
.end method
