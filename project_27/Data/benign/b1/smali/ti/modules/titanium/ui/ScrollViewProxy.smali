.class public Lti/modules/titanium/ui/ScrollViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd2

.field protected static final MSG_LAST_ID:I = 0x4b9

.field private static final MSG_SCROLL_TO:I = 0x136

.field private static final MSG_SCROLL_TO_BOTTOM:I = 0x137


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 48
    invoke-direct {p0}, Lti/modules/titanium/ui/ScrollViewProxy;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x136

    if-ne v2, v3, :cond_0

    .line 88
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 90
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 98
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :goto_0
    return v1

    .line 92
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x137

    if-ne v2, v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 95
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 103
    return-void
.end method

.method public handleScrollToBottom()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollToBottom()V

    .line 107
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 62
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    goto :goto_0
.end method

.method public scrollToBottom()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    goto :goto_0
.end method
