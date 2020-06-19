.class final Lorg/appcelerator/kroll/common/TiJSErrorDialog$2;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/common/TiJSErrorDialog;->createDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 174
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 185
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->access$100()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-static {}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->access$100()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->createDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V

    .line 191
    :goto_1
    return-void

    .line 176
    :cond_1
    const/4 v0, -0x3

    if-eq p2, v0, :cond_0

    .line 178
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->access$202(Z)Z

    goto :goto_1
.end method
