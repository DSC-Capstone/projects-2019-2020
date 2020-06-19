.class Lorg/apache/cordova/dialogs/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/dialogs/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

.field private final synthetic val$defaultText:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$promptInput:Landroid/widget/EditText;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/dialogs/Notification$3;->this$0:Lorg/apache/cordova/dialogs/Notification;

    iput-object p2, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iput-object p6, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p7, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$defaultText:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 262
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v6, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$message:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 264
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 267
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 269
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 275
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$3$1;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$3$1;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 274
    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 291
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$3$2;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$3$2;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 291
    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 308
    :try_start_2
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$3$3;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$3$3;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 308
    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    :cond_2
    :goto_2
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$3$4;

    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iget-object v4, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$defaultText:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/dialogs/Notification$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$3$4;-><init>(Lorg/apache/cordova/dialogs/Notification$3;Lorg/json/JSONObject;Landroid/widget/EditText;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 333
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_2

    .line 302
    :catch_1
    move-exception v0

    goto :goto_1

    .line 285
    :catch_2
    move-exception v0

    goto :goto_0
.end method
