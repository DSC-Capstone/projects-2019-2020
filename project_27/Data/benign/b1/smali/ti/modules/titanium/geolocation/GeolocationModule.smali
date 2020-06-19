.class public Lti/modules/titanium/geolocation/GeolocationModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "GeolocationModule.java"


# static fields
.field public static final ACCURACY_BEST:I = 0x0

.field public static final ACCURACY_HUNDRED_METERS:I = 0x2

.field public static final ACCURACY_KILOMETER:I = 0x3

.field public static final ACCURACY_NEAREST_TEN_METERS:I = 0x1

.field public static final ACCURACY_THREE_KILOMETERS:I = 0x4

.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "GeolocationModule"

.field public static final MAX_GEO_ANALYTICS_FREQUENCY:J = 0xea60L

.field public static final MSG_FIRST_ID:I = 0xd2

.field public static final MSG_LAST_ID:I = 0x4b9

.field public static final MSG_LOOKUP:I = 0x136

.field public static final PROVIDER_GPS:Ljava/lang/String; = "gps"

.field public static final PROVIDER_NETWORK:Ljava/lang/String; = "network"


# instance fields
.field private compassRegistered:Z

.field private locationRegistered:Z

.field private tiCompass:Lti/modules/titanium/geolocation/TiCompass;

.field private tiLocation:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/geolocation/GeolocationModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 50
    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassRegistered:Z

    .line 51
    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->locationRegistered:Z

    .line 57
    new-instance v0, Lti/modules/titanium/geolocation/TiCompass;

    invoke-direct {v0, p0}, Lti/modules/titanium/geolocation/TiCompass;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    .line 58
    new-instance v0, Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {v0, p0}, Lti/modules/titanium/geolocation/TiLocation;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 63
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x1

    .line 68
    const-string v0, "heading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassRegistered:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->registerListener()V

    .line 71
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassRegistered:Z

    .line 79
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 80
    return-void

    .line 73
    :cond_1
    const-string v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->locationRegistered:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiLocation;->registerListener()V

    .line 76
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->locationRegistered:Z

    goto :goto_0
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v0, "heading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassRegistered:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->unregisterListener()V

    .line 87
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassRegistered:Z

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 96
    return-void

    .line 89
    :cond_1
    const-string v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->locationRegistered:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiLocation;->unregisterListener()V

    .line 92
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->locationRegistered:Z

    goto :goto_0
.end method

.method public forwardGeocoder(Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 125
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/geolocation/TiLocation;->forwardGeocoder(Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 126
    return-void
.end method

.method public getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 113
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiCompass;->getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 114
    return-void
.end method

.method public getCurrentPosition(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 119
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiLocation;->getCurrentPosition(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 120
    return-void
.end method

.method public getHasCompass()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->getHasCompass()Z

    move-result v0

    return v0
.end method

.method public getLocationServicesEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiLocation;->getLocationServicesEnabled()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 137
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x136

    if-ne v2, v3, :cond_0

    .line 138
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v2}, Lti/modules/titanium/geolocation/TiLocation;->getLookUpTask()Landroid/os/AsyncTask;

    move-result-object v0

    .line 139
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "direction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public reverseGeocoder(DDLorg/appcelerator/kroll/KrollFunction;)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/geolocation/TiLocation;->reverseGeocoder(DDLorg/appcelerator/kroll/KrollFunction;)V

    .line 132
    return-void
.end method
