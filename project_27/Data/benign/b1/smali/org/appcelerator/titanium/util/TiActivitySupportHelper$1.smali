.class Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;
.super Ljava/lang/Object;
.source "TiActivitySupportHelper.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

.field final synthetic val$code:I

.field final synthetic val$resultHandler:Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiActivitySupportHelper;Lorg/appcelerator/titanium/util/TiActivityResultHandler;I)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->this$0:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$resultHandler:Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    iput p3, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$resultHandler:Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivityResultHandler;->onError(Landroid/app/Activity;ILjava/lang/Exception;)V

    .line 46
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->this$0:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$code:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->removeResultHandler(I)V

    .line 47
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$resultHandler:Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/util/TiActivityResultHandler;->onResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->this$0:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;->val$code:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->removeResultHandler(I)V

    .line 53
    return-void
.end method
