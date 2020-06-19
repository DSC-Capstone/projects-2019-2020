.class public Lti/modules/titanium/platform/PlatformModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PlatformModule.java"


# static fields
.field public static final BATTERY_STATE_CHARGING:I = 0x2

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_UNKNOWN:I = 0x0

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x1

.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "PlatformModule"


# instance fields
.field protected batteryLevel:D

.field protected batteryState:I

.field protected batteryStateReady:Z

.field protected batteryStateReceiver:Landroid/content/BroadcastReceiver;

.field protected displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 59
    invoke-direct {p0}, Lti/modules/titanium/platform/PlatformModule;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/platform/PlatformModule;II)D
    .locals 2
    .param p0, "x0"    # Lti/modules/titanium/platform/PlatformModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryLevel(II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lti/modules/titanium/platform/PlatformModule;I)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/platform/PlatformModule;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method private convertBatteryLevel(II)D
    .locals 3
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .prologue
    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "l":I
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    .line 276
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, p2

    .line 278
    :cond_0
    int-to-double v1, v0

    return-wide v1
.end method

.method private convertBatteryStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "state":I
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return v0

    .line 256
    :pswitch_0
    const/4 v0, 0x2

    .line 257
    goto :goto_0

    .line 260
    :pswitch_1
    const/4 v0, 0x3

    .line 261
    goto :goto_0

    .line 265
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "batteryReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 283
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 284
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "batteryFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method


# virtual methods
.method public createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 236
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 239
    :cond_0
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 245
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMemory()D
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAvailableMemory()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    return-wide v0
.end method

.method public getBatteryMonitoring()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBatteryState()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    return v0
.end method

.method public getDisplayCaps()Lti/modules/titanium/platform/DisplayCapsProxy;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-direct {v0}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/platform/DisplayCapsProxy;->setActivity(Landroid/app/Activity;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMacaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetmask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorCount()I
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getProcessorCount()I

    move-result v0

    return v0
.end method

.method public getRuntime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getRuntimeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is24HourTimeFormat()Z
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 136
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 139
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 314
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onPause(Landroid/app/Activity;)V

    .line 304
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onResume(Landroid/app/Activity;)V

    .line 292
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 293
    sget-boolean v0, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "PlatformModule"

    const-string v1, "Reregistering battery changed receiver"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    :cond_1
    return-void
.end method

.method public openURL(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-boolean v3, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    if-eqz v3, :cond_0

    .line 150
    const-string v3, "PlatformModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching viewer for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v3, 0x1

    .line 160
    :goto_0
    return v3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PlatformModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected registerBatteryStateReceiver()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lti/modules/titanium/platform/PlatformModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/platform/PlatformModule$1;-><init>(Lti/modules/titanium/platform/PlatformModule;)V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method

.method public setBatteryMonitoring(Z)V
    .locals 1
    .param p1, "monitor"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method protected unregisterBatteryStateReceiver()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    return-void
.end method
