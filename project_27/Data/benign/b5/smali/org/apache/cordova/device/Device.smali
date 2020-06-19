.class public Lorg/apache/cordova/device/Device;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Device.java"


# static fields
.field private static final AMAZON_DEVICE:Ljava/lang/String; = "Amazon"

.field private static final AMAZON_PLATFORM:Ljava/lang/String; = "amazon-fireos"

.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field public static final TAG:Ljava/lang/String; = "Device"

.field public static cordovaVersion:Ljava/lang/String;

.field public static platform:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "dev"

    sput-object v0, Lorg/apache/cordova/device/Device;->cordovaVersion:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v1, "getDeviceInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "r":Lorg/json/JSONObject;
    const-string v1, "uuid"

    sget-object v2, Lorg/apache/cordova/device/Device;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "version"

    invoke-virtual {p0}, Lorg/apache/cordova/device/Device;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "platform"

    invoke-virtual {p0}, Lorg/apache/cordova/device/Device;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "cordova"

    sget-object v2, Lorg/apache/cordova/device/Device;->cordovaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "model"

    invoke-virtual {p0}, Lorg/apache/cordova/device/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 83
    const/4 v1, 0x1

    .end local v0    # "r":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCordovaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/apache/cordova/device/Device;->cordovaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 126
    .local v0, "model":Ljava/lang/String;
    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 141
    .local v0, "osversion":Ljava/lang/String;
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/cordova/device/Device;->isAmazonDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "amazon-fireos"

    .line 102
    .local v0, "platform":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 100
    .end local v0    # "platform":Ljava/lang/String;
    :cond_0
    const-string v0, "Android"

    .restart local v0    # "platform":Ljava/lang/String;
    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 131
    .local v0, "productname":Ljava/lang/String;
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 147
    .local v0, "sdkversion":Ljava/lang/String;
    return-object v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 152
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lorg/apache/cordova/device/Device;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 59
    invoke-virtual {p0}, Lorg/apache/cordova/device/Device;->getUuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/device/Device;->uuid:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public isAmazonDevice()Z
    .locals 2

    .prologue
    .line 161
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
