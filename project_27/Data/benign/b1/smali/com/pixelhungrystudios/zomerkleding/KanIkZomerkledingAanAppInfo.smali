.class public final Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanAppInfo;
.super Ljava/lang/Object;
.source "KanIkZomerkledingAanAppInfo.java"

# interfaces
.implements Lorg/appcelerator/titanium/ITiAppInfo;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AppInfo"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    .line 19
    const-string v1, "ti.android.bug2373.restartDelay"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 21
    const-string v1, "ti.android.bug2373.finishDelay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 23
    const-string v1, "ti.android.bug2373.skipAlert"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/TiProperties;->setBool(Ljava/lang/String;Z)V

    .line 25
    const-string v1, "ti.android.runtime"

    const-string v2, "v8"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "ti.android.bug2373.disableDetection"

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/titanium/TiProperties;->setBool(Ljava/lang/String;Z)V

    .line 29
    const-string v1, "ti.deploytype"

    const-string v2, "production"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "2012 by peter"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "not specified"

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "2d8097af-5b4c-4140-8080-0f1871f06c0c"

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "appicon.png"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.pixelhungrystudios.zomerkleding"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Kan ik zomerkleding aan?"

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Pixel Hungry Studios"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "http://"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "1.0"

    return-object v0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isNavBarHidden()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
