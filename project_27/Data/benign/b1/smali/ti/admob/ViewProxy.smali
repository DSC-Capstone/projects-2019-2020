.class public Lti/admob/ViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ViewProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AdMobViewProxy"


# instance fields
.field private adMob:Lti/admob/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    new-instance v0, Lti/admob/View;

    invoke-direct {v0, p0}, Lti/admob/View;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    iput-object v0, p0, Lti/admob/ViewProxy;->adMob:Lti/admob/View;

    .line 37
    iget-object v0, p0, Lti/admob/ViewProxy;->adMob:Lti/admob/View;

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 30
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lti/admob/ViewProxy;->adMob:Lti/admob/View;

    invoke-virtual {v0}, Lti/admob/View;->destroy()V

    .line 55
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    return-void
.end method

.method public requestAd()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "AdMobViewProxy"

    const-string v1, "requestAd()"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lti/admob/ViewProxy;->adMob:Lti/admob/View;

    invoke-virtual {v0}, Lti/admob/View;->requestAd()V

    .line 44
    return-void
.end method

.method public requestTestAd()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "AdMobViewProxy"

    const-string v1, "requestTestAd(): "

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lti/admob/ViewProxy;->adMob:Lti/admob/View;

    invoke-virtual {v0}, Lti/admob/View;->requestTestAd()V

    .line 50
    return-void
.end method
