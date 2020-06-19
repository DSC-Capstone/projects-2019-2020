.class public Lorg/appcelerator/titanium/util/TiSensorHelper;
.super Ljava/lang/Object;
.source "TiSensorHelper.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiSensorHelper"

.field private static listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static hasDefaultSensor(Landroid/app/Activity;I)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "oneShot":Z
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Z
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    sput-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 94
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_1

    .line 96
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 97
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    const/4 v2, 0x0

    sput-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 102
    :cond_1
    return v1

    .line 96
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerListener(ILandroid/hardware/SensorEventListener;I)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "rate"    # I

    .prologue
    .line 40
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 44
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 45
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 46
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "TiSensorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling Listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1, v0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 50
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_2
    const-string v1, "TiSensorHelper"

    const-string v2, "unable to register, sensor is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerListener([ILandroid/hardware/SensorEventListener;I)V
    .locals 4
    .param p0, "types"    # [I
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "rate"    # I

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 34
    .local v3, "type":I
    invoke-static {v3, p1, p2}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v3    # "type":I
    :cond_0
    return-void
.end method

.method public static unregisterListener(ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 65
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    .line 66
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 67
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 68
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "TiSensorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling Listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 73
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 82
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    :goto_0
    return-void

    .line 77
    .restart local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    const-string v1, "TiSensorHelper"

    const-string v2, "unable to unregister, sensor is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_3
    const-string v1, "TiSensorHelper"

    const-string v2, "unable to unregister, sensorManager is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterListener([ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .param p0, "types"    # [I
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 59
    .local v3, "type":I
    invoke-static {v3, p1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "type":I
    :cond_0
    return-void
.end method
