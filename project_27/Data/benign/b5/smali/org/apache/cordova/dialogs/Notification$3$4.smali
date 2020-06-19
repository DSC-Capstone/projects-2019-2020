.class Lorg/apache/cordova/dialogs/Notification$3$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/dialogs/Notification$3;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final synthetic val$defaultText:Ljava/lang/String;

.field private final synthetic val$promptInput:Landroid/widget/EditText;

.field private final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->this$1:Lorg/apache/cordova/dialogs/Notification$3;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$result:Lorg/json/JSONObject;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$promptInput:Landroid/widget/EditText;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$defaultText:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 325
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$result:Lorg/json/JSONObject;

    const-string v2, "buttonIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$result:Lorg/json/JSONObject;

    const-string v3, "input1"

    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$promptInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$defaultText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$result:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 329
    return-void

    .line 326
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$3$4;->val$promptInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
