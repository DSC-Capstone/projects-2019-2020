.class final Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"

# interfaces
.implements Lorg/appcelerator/kroll/common/CurrentActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/common/TiJSErrorDialog;->handleOpenErrorDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fError:Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;->val$fError:Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityReady(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/appcelerator/kroll/common/TiJSErrorDialog$1;->val$fError:Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiJSErrorDialog;->createDialog(Lorg/appcelerator/kroll/common/TiJSErrorDialog$ErrorMessage;)V

    .line 105
    return-void
.end method
