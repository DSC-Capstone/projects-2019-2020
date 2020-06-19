.class public Lti/admob/AdmobBootstrap;
.super Ljava/lang/Object;
.source "AdmobBootstrap.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollExternalModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeBootstrap()V
.end method


# virtual methods
.method public bootstrap()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lti/admob/AdmobBootstrap;->nativeBootstrap()V

    .line 18
    return-void
.end method
