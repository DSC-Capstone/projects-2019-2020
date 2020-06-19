.class Lcom/novioplan/pollennieuws/InputDialog$2;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/InputDialog;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/InputDialog;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/InputDialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 129
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/novioplan/pollennieuws/InputDialog;->access$200(Lcom/novioplan/pollennieuws/InputDialog;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$102(Lcom/novioplan/pollennieuws/InputDialog;I)I

    .line 131
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/InputDialog;->access$300(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$100(Lcom/novioplan/pollennieuws/InputDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$100(Lcom/novioplan/pollennieuws/InputDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$400(Lcom/novioplan/pollennieuws/InputDialog;I)V

    .line 134
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 120
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/novioplan/pollennieuws/InputDialog;->access$200(Lcom/novioplan/pollennieuws/InputDialog;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$102(Lcom/novioplan/pollennieuws/InputDialog;I)I

    .line 122
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/InputDialog;->access$300(Lcom/novioplan/pollennieuws/InputDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$100(Lcom/novioplan/pollennieuws/InputDialog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/InputDialog$2;->this$0:Lcom/novioplan/pollennieuws/InputDialog;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$100(Lcom/novioplan/pollennieuws/InputDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/novioplan/pollennieuws/InputDialog;->access$400(Lcom/novioplan/pollennieuws/InputDialog;I)V

    .line 124
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 115
    sget-object v0, Lcom/novioplan/pollennieuws/InputDialog;->tag:Ljava/lang/String;

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
