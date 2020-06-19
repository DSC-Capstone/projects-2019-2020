.class public Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TiBaseWindowProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseWindow"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create view on TiBaseWindowProxy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 55
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 50
    return-void
.end method

.method public setWindowView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 37
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 38
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 39
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 40
    return-void
.end method
