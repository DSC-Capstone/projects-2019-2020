.class public Lti/modules/titanium/ui/TextAreaProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TextAreaProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/TextAreaProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 46
    invoke-direct {p0}, Lti/modules/titanium/ui/TextAreaProxy;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method
