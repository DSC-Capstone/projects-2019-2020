.class public Lti/modules/titanium/ui/ImageViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "ImageViewProxy.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 45
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;-><init>()V

    .line 46
    return-void
.end method

.method private getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIImageView;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getAnimating()Z
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->imageSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReverse()Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isReverse()Z

    move-result v0

    return v0
.end method

.method public inTableView()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 83
    .local v0, "parent":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    instance-of v1, v0, Lti/modules/titanium/ui/TableViewProxy;

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 89
    :goto_1
    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onBitmapChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageView"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iput-object p2, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public onImageSourcesChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "imageView"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti/modules/titanium/ui/widget/TiUIImageView;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "imageSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    iput-object p2, p0, Lti/modules/titanium/ui/ImageViewProxy;->imageSources:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/ui/ImageViewProxy;->onBitmapChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 109
    return-void
.end method

.method public releaseViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->bitmap:Landroid/graphics/Bitmap;

    .line 140
    iput-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->imageSources:Ljava/util/ArrayList;

    .line 141
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    .line 142
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 114
    return-void
.end method

.method public setReverse(Z)V
    .locals 1
    .param p1, "reverse"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setReverse(Z)V

    .line 129
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->start()V

    .line 99
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 104
    return-void
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->toBlob()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method
