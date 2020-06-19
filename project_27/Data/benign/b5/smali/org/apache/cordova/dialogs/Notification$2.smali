.class Lorg/apache/cordova/dialogs/Notification$2;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/dialogs/Notification;

.field private final synthetic val$buttonLabels:Lorg/json/JSONArray;

.field private final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$2;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p6, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Lorg/apache/cordova/dialogs/Notification$2$1;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/dialogs/Notification$2$1;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 205
    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Lorg/apache/cordova/dialogs/Notification$2$2;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/dialogs/Notification$2$2;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 218
    :try_start_2
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Lorg/apache/cordova/dialogs/Notification$2$3;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/dialogs/Notification$2$3;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_2
    :goto_2
    new-instance v1, Lorg/apache/cordova/dialogs/Notification$2$4;

    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v1, p0, v2}, Lorg/apache/cordova/dialogs/Notification$2$4;-><init>(Lorg/apache/cordova/dialogs/Notification$2;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    return-void

    .line 225
    :catch_0
    move-exception v1

    goto :goto_2

    .line 212
    :catch_1
    move-exception v1

    goto :goto_1

    .line 199
    :catch_2
    move-exception v1

    goto :goto_0
.end method
