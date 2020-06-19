.class Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;
.super Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgImageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

.field private token:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;I)V
    .locals 1
    .param p2, "imageWidth"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "imageHeight"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "token"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    .line 94
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;-><init>(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)V

    .line 95
    iput p4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->token:I

    .line 96
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->token:I

    invoke-static {v2, p1, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v1, "Background image load returned null"

    .line 108
    .local v1, "traceMsg":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$200(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "image":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .end local v0    # "image":Ljava/lang/Object;
    :cond_2
    const-string v2, "TiUIImageView"

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
