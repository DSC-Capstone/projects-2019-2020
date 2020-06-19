.class Landroid/widget/TiVideoView8$6;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 626
    iput-object p1, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 629
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v4, p3}, Landroid/widget/TiVideoView8;->access$702(Landroid/widget/TiVideoView8;I)I

    .line 630
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v4, p4}, Landroid/widget/TiVideoView8;->access$802(Landroid/widget/TiVideoView8;I)I

    .line 631
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$900(Landroid/widget/TiVideoView8;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 632
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 633
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 634
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$600(Landroid/widget/TiVideoView8;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    iget-object v3, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v3}, Landroid/widget/TiVideoView8;->access$600(Landroid/widget/TiVideoView8;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TiVideoView8;->seekTo(I)V

    .line 637
    :cond_0
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v2}, Landroid/widget/TiVideoView8;->start()V

    .line 638
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 639
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 642
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 631
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 632
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0, p1}, Landroid/widget/TiVideoView8;->access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 655
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1400(Landroid/widget/TiVideoView8;)V

    .line 658
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 664
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$200(Landroid/widget/TiVideoView8;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 667
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->release(Z)V

    .line 669
    :cond_1
    return-void
.end method
