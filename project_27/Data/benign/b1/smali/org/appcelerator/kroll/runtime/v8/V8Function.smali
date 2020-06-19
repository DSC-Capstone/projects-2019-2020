.class public Lorg/appcelerator/kroll/runtime/v8/V8Function;
.super Lorg/appcelerator/kroll/runtime/v8/V8Object;
.source "V8Function.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollFunction;
.implements Landroid/os/Handler$Callback;


# static fields
.field protected static final MSG_CALL_SYNC:I = 0xc9

.field protected static final MSG_LAST_ID:I = 0xc9


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "pointer"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;-><init>(J)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private native nativeInvoke(JJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method


# virtual methods
.method public call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 2
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function;->handler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;

    invoke-direct {v1, p1, p2}, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;-><init>(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    new-instance v0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;-><init>(Lorg/appcelerator/kroll/runtime/v8/V8Function;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnRuntime(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    .end local p1    # "krollObject":Lorg/appcelerator/kroll/KrollObject;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->getPointer()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->nativeInvoke(JJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 85
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 77
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 78
    .local v0, "asyncResult":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;

    .line 79
    .local v1, "functionArgs":Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;
    iget-object v2, v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    iget-object v3, v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->args:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
