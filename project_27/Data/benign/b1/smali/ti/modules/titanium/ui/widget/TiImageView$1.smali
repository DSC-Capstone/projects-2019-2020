.class Lti/modules/titanium/ui/widget/TiImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiImageView.java"


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

.field final synthetic val$me:Lti/modules/titanium/ui/widget/TiImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$100(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$100(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$200(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$400(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 161
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$500(Lti/modules/titanium/ui/widget/TiImageView;)V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 171
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
