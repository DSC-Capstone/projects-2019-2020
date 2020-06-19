.class public Lti/admob/AdmobModulePrototype;
.super Lorg/appcelerator/kroll/KrollModulePrototype;
.source "AdmobModulePrototype.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "AdmobModule"

.field private static final DBG:Z

.field private static final ISTART:I = 0x0

.field private static final Id_View:I = 0x1

.field private static final Id_constructor:I = 0x1

.field private static final Id_createView:I = 0x4

.field private static final Id_setPublisherId:I = 0x3

.field private static final Id_setTesting:I = 0x2

.field public static final MAX_INSTANCE_ID:I = 0x1

.field public static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdmobModulePrototype"

.field private static admobModulePrototype:Lti/admob/AdmobModulePrototype;


# instance fields
.field private API_View:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/admob/AdmobModulePrototype;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModulePrototype;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lti/admob/AdmobModulePrototype;->API_View:Ljava/lang/Object;

    .line 62
    sget-object v0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lti/admob/AdmobModulePrototype;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sput-object p0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/admob/AdmobModulePrototype;->isModule:Z

    .line 68
    const-string v0, "AD_NOT_RECEIVED"

    const-string v1, "ad_not_received"

    invoke-virtual {p0, v0, p0, v1}, Lti/admob/AdmobModulePrototype;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 71
    const-string v0, "AD_RECEIVED"

    const-string v1, "ad_received"

    invoke-virtual {p0, v0, p0, v1}, Lti/admob/AdmobModulePrototype;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    .line 58
    return-void
.end method

.method public static getProxyPrototype()Lti/admob/AdmobModulePrototype;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    return-object v0
.end method


# virtual methods
.method protected createProxy(Ljava/lang/String;[Ljava/lang/Object;)Lorg/appcelerator/kroll/KrollProxySupport;
    .locals 2
    .param p1, "creationUrl"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    const-class v0, Lti/admob/AdmobModule;

    invoke-virtual {p0}, Lti/admob/AdmobModulePrototype;->getRhinoObject()Lorg/appcelerator/kroll/runtime/rhino/RhinoObject;

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
    .line 219
    const-string v2, "AdmobModule"

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-super/range {p0 .. p5}, Lorg/appcelerator/kroll/KrollModulePrototype;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    :goto_0
    return-object v2

    .line 223
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    instance-of v2, p4, Lti/admob/AdmobModulePrototype;

    if-nez v2, :cond_1

    .line 224
    invoke-interface {p4}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object v1, p4

    .line 227
    check-cast v1, Lti/admob/AdmobModulePrototype;

    .line 228
    .local v1, "proxy":Lti/admob/AdmobModulePrototype;
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 229
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :pswitch_0
    invoke-virtual {p0, p3, p5}, Lti/admob/AdmobModulePrototype;->jsConstructor(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-result-object v2

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p0, p2, p4, p5}, Lti/admob/AdmobModulePrototype;->setTesting(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 234
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 236
    :pswitch_2
    invoke-virtual {p0, p2, p4, p5}, Lti/admob/AdmobModulePrototype;->setPublisherId(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 237
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 239
    :pswitch_3
    const-string v2, "ti.admob.ViewProxy"

    invoke-static {p2, p3, v2, p5}, Lorg/appcelerator/kroll/runtime/rhino/ProxyFactory;->createRhinoProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-result-object v2

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "id":I
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 276
    .local v0, "X":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v0, "View"

    const/4 v1, 0x1

    .line 277
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 281
    :cond_1
    if-nez v1, :cond_2

    .line 284
    .end local v1    # "id":I
    :goto_0
    return v1

    .restart local v1    # "id":I
    :cond_2
    invoke-static {v3, v1}, Lti/admob/AdmobModulePrototype;->instanceIdInfo(II)I

    move-result v1

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "id":I
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 169
    .local v0, "X":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 170
    .local v3, "s_length":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 171
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 172
    .local v1, "c":I
    const/16 v4, 0x63

    if-ne v1, v4, :cond_2

    const-string v0, "createView"

    const/4 v2, 0x4

    .line 177
    .end local v1    # "c":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 181
    :cond_1
    return v2

    .line 173
    .restart local v1    # "c":I
    :cond_2
    const/16 v4, 0x73

    if-ne v1, v4, :cond_0

    const-string v0, "setTesting"

    const/4 v2, 0x2

    goto :goto_0

    .line 175
    .end local v1    # "c":I
    :cond_3
    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    const-string v0, "constructor"

    const/4 v2, 0x1

    goto :goto_0

    .line 176
    :cond_4
    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    const-string v0, "setPublisherId"

    const/4 v2, 0x3

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, "AdmobModule"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_0
    const-string v0, "View"

    return-object v0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getInstanceIdValue(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # I
    .param p2, "start"    # Lorg/mozilla/javascript/Scriptable;

    .prologue
    .line 303
    move-object v1, p0

    .line 304
    .local v1, "proxy":Lti/admob/AdmobModulePrototype;
    :goto_0
    if-eqz p2, :cond_0

    instance-of v3, p2, Lti/admob/AdmobModulePrototype;

    if-nez v3, :cond_0

    .line 305
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    goto :goto_0

    .line 308
    :cond_0
    instance-of v3, p2, Lti/admob/AdmobModulePrototype;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 309
    check-cast v1, Lti/admob/AdmobModulePrototype;

    .line 312
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :pswitch_0
    iget-object v3, v1, Lti/admob/AdmobModulePrototype;->API_View:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 315
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 316
    .local v0, "context":Lorg/mozilla/javascript/Context;
    invoke-static {}, Lorg/appcelerator/kroll/runtime/rhino/RhinoRuntime;->getGlobalScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 318
    .local v2, "scope":Lorg/mozilla/javascript/Scriptable;
    const-string v3, "ti.admob.ViewProxy"

    const-class v4, Lti/admob/ViewProxyPrototype;

    invoke-static {v0, v2, v3, v4}, Lorg/appcelerator/kroll/runtime/rhino/KrollBindings;->getProxyBinding(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lti/admob/AdmobModulePrototype;->API_View:Ljava/lang/Object;

    .line 321
    .end local v0    # "context":Lorg/mozilla/javascript/Context;
    .end local v2    # "scope":Lorg/mozilla/javascript/Scriptable;
    :cond_2
    iget-object v3, v1, Lti/admob/AdmobModulePrototype;->API_View:Ljava/lang/Object;

    return-object v3

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method protected getMaxPrototypeId()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x4

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
    .line 85
    const-class v0, Lorg/appcelerator/kroll/KrollModulePrototype;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    if-ne p0, v0, :cond_0

    .line 78
    invoke-static {}, Lorg/appcelerator/kroll/KrollModulePrototype;->getProxyPrototype()Lorg/appcelerator/kroll/KrollModulePrototype;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lti/admob/AdmobModulePrototype;->admobModulePrototype:Lti/admob/AdmobModulePrototype;

    goto :goto_0
.end method

.method protected initPrototypeId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModulePrototype;->initPrototypeId(I)V

    .line 213
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const/4 v0, 0x0

    .line 194
    .local v0, "arity":I
    const-string v1, "constructor"

    .line 212
    .local v1, "name":Ljava/lang/String;
    :goto_1
    const-string v2, "AdmobModule"

    invoke-virtual {p0, v2, p1, v1, v0}, Lti/admob/AdmobModulePrototype;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    goto :goto_0

    .line 197
    .end local v0    # "arity":I
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    .line 198
    .restart local v0    # "arity":I
    const-string v1, "setTesting"

    .line 199
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v0    # "arity":I
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x1

    .line 202
    .restart local v0    # "arity":I
    const-string v1, "setPublisherId"

    .line 203
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 205
    .end local v0    # "arity":I
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x1

    .line 206
    .restart local v0    # "arity":I
    const-string v1, "createView"

    .line 207
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setInstanceIdValue(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "start"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 330
    move-object v0, p2

    .line 331
    .local v0, "original":Lorg/mozilla/javascript/Scriptable;
    move-object v1, p0

    .line 332
    .local v1, "proxy":Lti/admob/AdmobModulePrototype;
    :goto_0
    if-eqz p2, :cond_0

    instance-of v2, p2, Lti/admob/AdmobModulePrototype;

    if-nez v2, :cond_0

    .line 333
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    goto :goto_0

    .line 336
    :cond_0
    instance-of v2, p2, Lti/admob/AdmobModulePrototype;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 337
    check-cast v1, Lti/admob/AdmobModulePrototype;

    .line 340
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 349
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :pswitch_0
    instance-of v2, p3, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    if-eqz v2, :cond_2

    .line 343
    iput-object p3, v1, Lti/admob/AdmobModulePrototype;->API_View:Ljava/lang/Object;

    .line 351
    :goto_1
    return-void

    .line 345
    :cond_2
    const-string v2, "View"

    const/4 v3, 0x0

    invoke-static {v0, v2, p3, v3}, Lti/admob/AdmobModulePrototype;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPublisherId(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Lorg/mozilla/javascript/Context;
    .param p2, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    sget-boolean v4, Lti/admob/AdmobModulePrototype;->DBG:Z

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "AdmobModulePrototype"

    const-string v5, "setPublisherId()"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v2

    check-cast v2, Lti/admob/AdmobModule;

    .line 125
    .local v2, "proxy":Lti/admob/AdmobModule;
    array-length v4, p3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 126
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPublisherId: Invalid number of arguments. Expected 1 but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "proxy":Lti/admob/AdmobModule;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 138
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 129
    .restart local v2    # "proxy":Lti/admob/AdmobModule;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4, p2}, Lorg/appcelerator/kroll/runtime/rhino/TypeConverter;->jsObjectToJavaString(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "arg0":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lti/admob/AdmobModule;->setPublisherId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setTesting(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Lorg/mozilla/javascript/Context;
    .param p2, "thisObj"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 96
    sget-boolean v4, Lti/admob/AdmobModulePrototype;->DBG:Z

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "AdmobModulePrototype"

    const-string v5, "setTesting()"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v2

    check-cast v2, Lti/admob/AdmobModule;

    .line 102
    .local v2, "proxy":Lti/admob/AdmobModule;
    array-length v4, p3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTesting: Invalid number of arguments. Expected 1 but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "proxy":Lti/admob/AdmobModule;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 115
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 106
    .restart local v2    # "proxy":Lti/admob/AdmobModule;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4, p2}, Lorg/appcelerator/kroll/runtime/rhino/TypeConverter;->jsObjectToJavaObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .local v1, "arg0":Ljava/lang/Boolean;
    invoke-virtual {v2, v1}, Lti/admob/AdmobModule;->setTesting(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
