.class public Lti/modules/titanium/app/properties/PropertiesModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PropertiesModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "PropertiesModule"


# instance fields
.field private appProperties:Lorg/appcelerator/titanium/TiProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 27
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/app/properties/PropertiesModule;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiProperties;->listProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->removeProperty(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setBool(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/TiProperties;->setDouble(Ljava/lang/String;D)V

    .line 87
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
