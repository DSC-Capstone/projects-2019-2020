.class public abstract Lti/modules/titanium/ui/TiDialogProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TiDialogProxy.java"


# instance fields
.field protected showing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiDialogProxy;->showing:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/ui/TiDialogProxy;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$001(Lti/modules/titanium/ui/TiDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/TiDialogProxy;
    .param p1, "x1"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->show(Lorg/appcelerator/kroll/KrollDict;)V

    return-void
.end method


# virtual methods
.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiDialogProxy;->showing:Z

    .line 56
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 57
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiDialogProxy;->showing:Z

    .line 41
    new-instance v0, Lti/modules/titanium/ui/TiDialogProxy$1;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/TiDialogProxy$1;-><init>(Lti/modules/titanium/ui/TiDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    .line 50
    return-void
.end method
