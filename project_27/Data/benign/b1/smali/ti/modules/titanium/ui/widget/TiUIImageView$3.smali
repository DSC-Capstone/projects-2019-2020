.class Lti/modules/titanium/ui/widget/TiUIImageView$3;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;->retryDecode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

.field final synthetic val$maxRetries:I

.field final synthetic val$recycle:Z


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;IZ)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iput p2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->val$maxRetries:I

    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->val$recycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 770
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying bitmap decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$2200(Lti/modules/titanium/ui/widget/TiUIImageView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->val$maxRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->val$recycle:Z

    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V

    .line 772
    return-void
.end method
