.class public Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TiActivityWindowProxy.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiActivityWindowProxy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 48
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "TiActivityWindowProxy"

    const-string v1, "handleClose"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->close()V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->releaseViews()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 59
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->getActivity()Lti/modules/titanium/android/TiJSActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 64
    return-void
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 43
    return-void
.end method
