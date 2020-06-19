.class public Lorg/appcelerator/kroll/KrollModuleInfo;
.super Ljava/lang/Object;
.source "KrollModuleInfo.java"


# instance fields
.field protected author:Ljava/lang/String;

.field protected copyright:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected guid:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected license:Ljava/lang/String;

.field protected licenseKey:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "guid"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "author"    # Ljava/lang/String;
    .param p7, "license"    # Ljava/lang/String;
    .param p8, "copyright"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->id:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->guid:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->version:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->description:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->author:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->license:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->copyright:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseKey"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    .line 66
    return-void
.end method
