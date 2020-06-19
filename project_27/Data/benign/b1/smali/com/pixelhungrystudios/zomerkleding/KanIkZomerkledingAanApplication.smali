.class public final Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanApplication;
.super Lorg/appcelerator/titanium/TiApplication;
.source "KanIkZomerkledingAanApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KanIkZomerkledingAanApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    .line 31
    invoke-super {p0}, Lorg/appcelerator/titanium/TiApplication;->onCreate()V

    .line 33
    new-instance v0, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanAppInfo;

    invoke-direct {v0, p0}, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanAppInfo;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v0, p0, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 34
    invoke-virtual {p0}, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanApplication;->postAppInfo()V

    .line 36
    new-instance v0, Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;

    invoke-direct {v0}, Lcom/pixelhungrystudios/zomerkleding/AssetCryptImpl;-><init>()V

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->setAssetCrypt(Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;)V

    .line 39
    new-instance v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-direct {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;-><init>()V

    .line 43
    const-string v1, "ti.admob"

    const-class v2, Lti/admob/AdmobBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    invoke-static {p0, v0}, Lorg/appcelerator/kroll/KrollRuntime;->init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V

    .line 49
    new-instance v0, Lcom/pixelhungrystudios/zomerkleding/ApplicationStylesheet;

    invoke-direct {v0}, Lcom/pixelhungrystudios/zomerkleding/ApplicationStylesheet;-><init>()V

    iput-object v0, p0, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    .line 50
    invoke-virtual {p0}, Lcom/pixelhungrystudios/zomerkleding/KanIkZomerkledingAanApplication;->postOnCreate()V

    .line 61
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "admob"

    const-string v2, "ti.admob"

    const-string v3, "34c65ff0-30c1-4d21-8778-a77a6bbcf639"

    const-string v4, "2.0"

    const-string v5, "Titanium Admob module for Android"

    const-string v6, "Brian Kurzius"

    const-string v7, "Apache 2.0"

    const-string v8, "Copyright (c) 2011 by Studio Classics"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 68
    return-void
.end method

.method public verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
