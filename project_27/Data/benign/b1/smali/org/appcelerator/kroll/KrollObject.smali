.class public abstract Lorg/appcelerator/kroll/KrollObject;
.super Ljava/lang/Object;
.source "KrollObject.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field protected static final MSG_LAST_ID:I = 0x65

.field protected static final MSG_RELEASE:I = 0x64

.field protected static final MSG_SET_WINDOW:I = 0x65


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected hasListenersForEventType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->hasListenersForEventType:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract doRelease()V
.end method

.method protected abstract doSetWindow(Ljava/lang/Object;)V
.end method

.method protected abstract fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract getNativeObject()Ljava/lang/Object;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 88
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 103
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollObject;->doRelease()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 96
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/kroll/KrollObject;->doSetWindow(Ljava/lang/Object;)V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollObject;->hasListenersForEventType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 43
    .local v0, "hasListeners":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public onEventFired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;

    invoke-interface {v0, p1, p2}, Lorg/appcelerator/kroll/KrollProxySupport;->onEventFired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected release()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollObject;->doRelease()V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollObject;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setHasListenersForEventType(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "hasListeners"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->hasListenersForEventType:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;

    invoke-interface {v0, p1, p2}, Lorg/appcelerator/kroll/KrollProxySupport;->onHasListenersChanged(Ljava/lang/String;Z)V

    .line 56
    :cond_0
    return-void
.end method

.method protected abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setProxySupport(Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 0
    .param p1, "proxySupport"    # Lorg/appcelerator/kroll/KrollProxySupport;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollObject;->proxySupport:Lorg/appcelerator/kroll/KrollProxySupport;

    .line 38
    return-void
.end method

.method public setWindow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "windowProxyObject"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollObject;->doSetWindow(Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
