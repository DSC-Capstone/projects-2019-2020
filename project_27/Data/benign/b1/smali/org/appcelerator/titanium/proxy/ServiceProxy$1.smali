.class Lorg/appcelerator/titanium/proxy/ServiceProxy$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/ServiceProxy;->bindAndInvokeService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 115
    instance-of v3, p2, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 116
    check-cast v0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    .line 117
    .local v0, "binder":Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .line 118
    .local v1, "proxy":Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;->getService()Landroid/app/Service;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseService;

    .line 119
    .local v2, "tiService":Lorg/appcelerator/titanium/TiBaseService;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseService;->nextServiceInstanceId()I

    move-result v3

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->access$002(Lorg/appcelerator/titanium/proxy/ServiceProxy;I)I

    .line 120
    invoke-static {}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "TiServiceProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service successfully bound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->invokeBoundService(Landroid/app/Service;)V

    .line 125
    .end local v0    # "binder":Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    .end local v1    # "proxy":Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .end local v2    # "tiService":Lorg/appcelerator/titanium/TiBaseService;
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 111
    return-void
.end method
