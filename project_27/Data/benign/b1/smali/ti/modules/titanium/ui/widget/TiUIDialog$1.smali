.class Lti/modules/titanium/ui/widget/TiUIDialog$1;
.super Ljava/lang/Object;
.source "TiUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIDialog;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$1;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$1;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/widget/TiUIDialog;->handleEvent(I)V

    .line 117
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$1;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 118
    return-void
.end method
