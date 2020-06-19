.class public Lti/modules/titanium/ui/PickerRowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerRowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "PickerRowProxy"


# instance fields
.field private rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 25
    const-string v0, "[PickerRow]"

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 35
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerRowProxy;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 67
    const-string v0, "PickerRowProxy"

    const-string v1, "PickerRow does not support child controls"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerRow;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerRow;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerRowProxy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 85
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "title"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 72
    const-string v0, "PickerRowProxy"

    const-string v1, "PickerRow does not support child controls"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public setRowListener(Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    .prologue
    .line 61
    iput-object p1, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    invoke-interface {v0, p0}, Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;->rowChanged(Lti/modules/titanium/ui/PickerRowProxy;)V

    .line 51
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    return-object v0
.end method
