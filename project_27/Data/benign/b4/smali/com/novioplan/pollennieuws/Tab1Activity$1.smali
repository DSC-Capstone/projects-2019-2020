.class Lcom/novioplan/pollennieuws/Tab1Activity$1;
.super Ljava/lang/Object;
.source "Tab1Activity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/Tab1Activity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab1Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab1Activity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 114
    if-eqz p3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    div-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$102(Lcom/novioplan/pollennieuws/Tab1Activity;I)I

    .line 116
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I

    move-result v1

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getTextColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I

    move-result v1

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getTextColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    div-int/lit8 v0, p2, 0xa

    packed-switch v0, :pswitch_data_0

    .line 150
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Annuleer"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "geen last"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "weinig last"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "redelijk veel last"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "veel last"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_5
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$300(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "extreem veel last"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$000(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getTextColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->getTextColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$200(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$000(Lcom/novioplan/pollennieuws/Tab1Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    const-class v2, Lcom/novioplan/pollennieuws/InputDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/novioplan/pollennieuws/data/Constants;->FORECAST_SEEKBAR_PROGRESS:Ljava/lang/String;

    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    invoke-static {v2}, Lcom/novioplan/pollennieuws/Tab1Activity;->access$100(Lcom/novioplan/pollennieuws/Tab1Activity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab1Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab1Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/novioplan/pollennieuws/Tab1Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
