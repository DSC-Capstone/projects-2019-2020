.class public Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;
.super Landroid/widget/ImageView;
.source "TiImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoLayoutImageView"
.end annotation


# instance fields
.field public allowLayoutRequest:Z

.field public listener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiImageView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    .line 75
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->allowLayoutRequest:Z

    .line 77
    return-void
.end method


# virtual methods
.method public getOnSizeChangeListener()Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->listener:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->listener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 91
    invoke-static {}, Lti/modules/titanium/ui/widget/TiImageView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "TiImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageView size change: w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->listener:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->listener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;

    .line 96
    .local v0, "l":Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;
    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;->sizeChanged(IIII)V

    .line 100
    .end local v0    # "l":Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->allowLayoutRequest:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->allowLayoutRequest:Z

    .line 85
    :cond_0
    return-void
.end method

.method public setOnSizeChangeListener(Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$NoLayoutImageView;->listener:Ljava/lang/ref/SoftReference;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
