.class Lorg/apache/cordova/CordovaActivity$5$1;
.super Ljava/lang/Object;
.source "CordovaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CordovaActivity$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$5$1;->this$1:Lorg/apache/cordova/CordovaActivity$5;

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$5$1;->this$1:Lorg/apache/cordova/CordovaActivity$5;

    invoke-static {v0}, Lorg/apache/cordova/CordovaActivity$5;->access$0(Lorg/apache/cordova/CordovaActivity$5;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaActivity;->removeSplashScreen()V

    .line 1089
    return-void
.end method
