.class final Lorg/appcelerator/titanium/util/TiUIHelper$6;
.super Ljava/lang/Object;
.source "TiUIHelper.java"

# interfaces
.implements Lorg/appcelerator/kroll/common/CurrentActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$fListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityReady(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$fListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, "dialog":Landroid/app/AlertDialog;
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 183
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->addDialog(Landroid/app/Dialog;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 190
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    return-void
.end method
