.class public Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
.super Landroid/os/Binder;
.source "TiBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/TiBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseService;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiBaseService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;->this$0:Lorg/appcelerator/titanium/TiBaseService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Landroid/app/Service;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;->this$0:Lorg/appcelerator/titanium/TiBaseService;

    return-object v0
.end method
