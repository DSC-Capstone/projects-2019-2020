.class Lti/modules/titanium/ui/widget/TiUIImageView$Animator;
.super Ljava/util/TimerTask;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animator"
.end annotation


# instance fields
.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V
    .locals 0
    .param p2, "loader"    # Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .prologue
    .line 517
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 518
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 524
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    .line 525
    .local v0, "b":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "TiUIImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v3, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$2000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 529
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget v3, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    invoke-static {v2, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$2100(Lti/modules/titanium/ui/widget/TiUIImageView;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "b":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "TiUIImageView"

    const-string v3, "Loader interrupted"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
