.class Lti/modules/titanium/ui/widget/TiUIImageView$2;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFailed()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    .line 180
    return-void
.end method

.method public downloadFinished(Ljava/net/URI;)V
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;I)I

    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    new-instance v2, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;I)V

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmapAsync(Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;)V

    .line 168
    :cond_0
    monitor-exit v1

    .line 173
    :goto_0
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1102(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 171
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V

    goto :goto_0
.end method
