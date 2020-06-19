.class Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;
.super Ljava/lang/Object;
.source "TiWindowProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handlePostOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxy;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-interface {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;->onPostOpen(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 388
    return-void
.end method
