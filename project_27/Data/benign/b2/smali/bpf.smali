.class Lbpf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbpe;


# direct methods
.method constructor <init>(Lbpe;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbpf;->a:Lbpe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lbpf;->a:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/ProgressGradientView;->invalidate()V

    .line 66
    iget-object v0, p0, Lbpf;->a:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    invoke-virtual {v0}, Lio/senseai/kelvin/widget/ProgressGradientView;->getProgress()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 67
    iget-object v0, p0, Lbpf;->a:Lbpe;

    invoke-static {v0}, Lbpe;->b(Lbpe;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lbpf;->a:Lbpe;

    invoke-static {v0}, Lbpe;->b(Lbpe;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lbpf;->a:Lbpe;

    invoke-static {v0}, Lbpe;->a(Lbpe;)Lio/senseai/kelvin/widget/ProgressGradientView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lio/senseai/kelvin/widget/ProgressGradientView;->setSegmented(Z)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
