.class Landroid/widget/TiVideoView8$5;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 581
    iput-object p1, p0, Landroid/widget/TiVideoView8$5;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 584
    iget-object v0, p0, Landroid/widget/TiVideoView8$5;->this$0:Landroid/widget/TiVideoView8;

    invoke-static {v0, p2}, Landroid/widget/TiVideoView8;->access$1202(Landroid/widget/TiVideoView8;I)I

    .line 585
    return-void
.end method
