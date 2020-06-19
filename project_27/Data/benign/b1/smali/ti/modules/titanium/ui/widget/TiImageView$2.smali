.class Lti/modules/titanium/ui/widget/TiImageView$2;
.super Ljava/lang/Object;
.source "TiImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$600(Lti/modules/titanium/ui/widget/TiImageView;)V

    .line 185
    return-void
.end method
