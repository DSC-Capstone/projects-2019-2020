.class Landroid/widget/TiVideoView8$1;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TiVideoView8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TiVideoView8;


# direct methods
.method constructor <init>(Landroid/widget/TiVideoView8;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$002(Landroid/widget/TiVideoView8;I)I

    .line 469
    iget-object v0, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$102(Landroid/widget/TiVideoView8;I)I

    .line 470
    iget-object v0, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TiVideoView8$1;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 473
    :cond_0
    return-void
.end method
