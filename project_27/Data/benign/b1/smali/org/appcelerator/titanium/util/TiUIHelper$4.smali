.class final Lorg/appcelerator/titanium/util/TiUIHelper$4;
.super Ljava/lang/Object;
.source "TiUIHelper.java"

# interfaces
.implements Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lorg/appcelerator/kroll/common/CurrentActivityListener;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUIHelper$4;->val$l:Lorg/appcelerator/kroll/common/CurrentActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostOpen(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 3
    .param p1, "window"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    .line 145
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 146
    .local v1, "app":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 148
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiUIHelper$4;->val$l:Lorg/appcelerator/kroll/common/CurrentActivityListener;

    invoke-interface {v2, v0}, Lorg/appcelerator/kroll/common/CurrentActivityListener;->onCurrentActivityReady(Landroid/app/Activity;)V

    .line 150
    :cond_0
    return-void
.end method
