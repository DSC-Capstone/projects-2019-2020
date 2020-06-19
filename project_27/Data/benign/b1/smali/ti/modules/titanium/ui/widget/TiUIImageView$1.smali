.class Lti/modules/titanium/ui/widget/TiUIImageView$1;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 141
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 142
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v1

    .line 143
    .local v1, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 151
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "view":Lti/modules/titanium/ui/widget/TiImageView;
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V

    goto :goto_0
.end method
