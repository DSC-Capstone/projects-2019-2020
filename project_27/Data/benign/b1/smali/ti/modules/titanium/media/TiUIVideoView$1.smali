.class Lti/modules/titanium/media/TiUIVideoView$1;
.super Ljava/lang/Object;
.source "TiUIVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiUIVideoView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiUIVideoView;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiUIVideoView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lti/modules/titanium/media/TiUIVideoView$1;->this$0:Lti/modules/titanium/media/TiUIVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
