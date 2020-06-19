.class Lio/senseai/kelvinsdk/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private androidUuid:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private config:Lio/senseai/kelvinsdk/Configuration;

.field private device:Lio/senseai/kelvinsdk/DeviceObject;

.field private portalDevId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->androidUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lio/senseai/kelvinsdk/Configuration;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->config:Lio/senseai/kelvinsdk/Configuration;

    return-object v0
.end method

.method public getDevice()Lio/senseai/kelvinsdk/DeviceObject;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->device:Lio/senseai/kelvinsdk/DeviceObject;

    return-object v0
.end method

.method public getPortalDevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->portalDevId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lio/senseai/kelvinsdk/Session;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->androidUuid:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->apiKey:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setConfig(Lio/senseai/kelvinsdk/Configuration;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->config:Lio/senseai/kelvinsdk/Configuration;

    .line 24
    return-void
.end method

.method public setDevice(Lio/senseai/kelvinsdk/DeviceObject;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->device:Lio/senseai/kelvinsdk/DeviceObject;

    .line 36
    return-void
.end method

.method public setPortalDevId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->portalDevId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lio/senseai/kelvinsdk/Session;->token:Ljava/lang/String;

    .line 28
    return-void
.end method
