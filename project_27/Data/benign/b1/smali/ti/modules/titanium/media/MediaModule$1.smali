.class Lti/modules/titanium/media/MediaModule$1;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->openPhotoGallery(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    iput-object p2, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gallery problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 492
    const-string v3, "TiMedia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnResult called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-nez p3, :cond_1

    .line 494
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v4}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v4}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v2, v6}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough memory to get image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "TiMedia"

    invoke-static {v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v4}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-static {v5, v7, v1}, Lti/modules/titanium/media/MediaModule;->access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method
