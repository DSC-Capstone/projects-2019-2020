.class public Lti/admob/admobGeneratedBindings;
.super Ljava/lang/Object;
.source "admobGeneratedBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ti.admob.AdmobModule"

    const-class v1, Lti/admob/AdmobModulePrototype;

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/rhino/KrollBindings;->addExternalBinding(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-string v0, "ti.admob.ViewProxy"

    const-class v1, Lti/admob/ViewProxyPrototype;

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/rhino/KrollBindings;->addExternalBinding(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    return-void
.end method
