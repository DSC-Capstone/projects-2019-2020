.class public Lti/admob/ViewProxyPrototype;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;
.source "ViewProxyPrototype.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "ViewProxy"

.field private static final DBG:Z

.field private static final Id_constructor:I = 0x1

.field private static final Id_requestAd:I = 0x2

.field private static final Id_requestTestAd:I = 0x3

.field public static final MAX_INSTANCE_ID:I = -0x1

.field public static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ViewProxyPrototype"

.field private static viewProxyPrototype:Lti/admob/ViewProxyPrototype;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/admob/ViewProxyPrototype;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;-><init>()V

    .line 60
    sget-object v0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lti/admob/ViewProxyPrototype;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sput-object p0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    .line 64
    :cond_0
    return-void
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    .line 56
    return-void
.end method

.method public static getProxyPrototype()Lti/admob/ViewProxyPrototype;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    return-object v0
.end method


# virtual methods
.method protected createProxy(Ljava/lang/String;[Ljava/lang/Object;)Lorg/appcelerator/kroll/KrollProxySupport;
    .locals 2
    .param p1, "creationUrl"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    const-class v0, Lti/admob/ViewProxy;

    invoke-virtual {p0}, Lti/admob/ViewProxyPrototype;->getRhinoObject()Lorg/appcelerator/kroll/runtime/rhino/RhinoObject;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lorg/appcelerator/kroll/KrollProxy;->createProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Lorg/mozilla/javascript/IdFunctionObject;
    .param p2, "cx"    # Lorg/mozilla/javascript/Context;
    .param p3, "scope"    # Lorg/mozilla/javascript/Scriptable;
    .param p4, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 191
    const-string v2, "ViewProxy"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 209
    :goto_0
    return-object v2

    .line 195
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    instance-of v2, p4, Lti/admob/ViewProxyPrototype;

    if-nez v2, :cond_1

    .line 196
    invoke-interface {p4}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object v1, p4

    .line 199
    check-cast v1, Lti/admob/ViewProxyPrototype;

    .line 200
    .local v1, "proxy":Lti/admob/ViewProxyPrototype;
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 201
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :pswitch_0
    invoke-virtual {p0, p3, p5}, Lti/admob/ViewProxyPrototype;->jsConstructor(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-result-object v2

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0, p2, p4, p5}, Lti/admob/ViewProxyPrototype;->requestAd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 206
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0, p2, p4, p5}, Lti/admob/ViewProxyPrototype;->requestTestAd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 209
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "id":I
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 149
    .local v0, "X":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 150
    .local v2, "s_length":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const-string v0, "requestAd"

    const/4 v1, 0x2

    .line 153
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 157
    :cond_1
    return v1

    .line 151
    :cond_2
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const-string v0, "requestTestAd"

    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "ViewProxy"

    return-object v0
.end method

.method protected getMaxPrototypeId()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x3

    return v0
.end method

.method protected getParent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/runtime/rhino/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    if-ne p0, v0, :cond_0

    .line 69
    invoke-static {}, Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;->getProxyPrototype()Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lti/admob/ViewProxyPrototype;->viewProxyPrototype:Lti/admob/ViewProxyPrototype;

    goto :goto_0
.end method

.method protected initPrototypeId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyPrototype;->initPrototypeId(I)V

    .line 185
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    .line 170
    .local v0, "arity":I
    const-string v1, "constructor"

    .line 184
    .local v1, "name":Ljava/lang/String;
    :goto_1
    const-string v2, "ViewProxy"

    invoke-virtual {p0, v2, p1, v1, v0}, Lti/admob/ViewProxyPrototype;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    goto :goto_0

    .line 173
    .end local v0    # "arity":I
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 174
    .restart local v0    # "arity":I
    const-string v1, "requestAd"

    .line 175
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v0    # "arity":I
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .line 178
    .restart local v0    # "arity":I
    const-string v1, "requestTestAd"

    .line 179
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestAd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Lorg/mozilla/javascript/Context;
    .param p2, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    sget-boolean v2, Lti/admob/ViewProxyPrototype;->DBG:Z

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "ViewProxyPrototype"

    const-string v3, "requestAd()"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :try_start_0
    check-cast p2, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    .end local p2    # "thisObj":Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p2}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v0

    check-cast v0, Lti/admob/ViewProxy;

    .line 94
    .local v0, "proxy":Lti/admob/ViewProxy;
    invoke-virtual {v0}, Lti/admob/ViewProxy;->requestAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "proxy":Lti/admob/ViewProxy;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public requestTestAd(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Lorg/mozilla/javascript/Context;
    .param p2, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    sget-boolean v2, Lti/admob/ViewProxyPrototype;->DBG:Z

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "ViewProxyPrototype"

    const-string v3, "requestTestAd()"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :try_start_0
    check-cast p2, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    .end local p2    # "thisObj":Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p2}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v0

    check-cast v0, Lti/admob/ViewProxy;

    .line 112
    .local v0, "proxy":Lti/admob/ViewProxy;
    invoke-virtual {v0}, Lti/admob/ViewProxy;->requestTestAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "proxy":Lti/admob/ViewProxy;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method
