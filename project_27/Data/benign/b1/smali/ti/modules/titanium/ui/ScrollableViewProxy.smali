.class public Lti/modules/titanium/ui/ScrollableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollableViewProxy.java"


# static fields
.field private static final DEFAULT_PAGING_CONTROL_TIMEOUT:I = 0xbb8

.field public static final MSG_ADD_VIEW:I = 0x524

.field private static final MSG_FIRST_ID:I = 0x4ba

.field public static final MSG_HIDE_PAGER:I = 0x51f

.field public static final MSG_LAST_ID:I = 0x8a1

.field public static final MSG_MOVE_NEXT:I = 0x521

.field public static final MSG_MOVE_PREV:I = 0x520

.field public static final MSG_REMOVE_VIEW:I = 0x526

.field public static final MSG_SCROLL_TO:I = 0x522

.field public static final MSG_SET_CURRENT:I = 0x525

.field public static final MSG_SET_VIEWS:I = 0x523

.field private static final TAG:Ljava/lang/String; = "TiScrollableView"


# instance fields
.field protected inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "showPagingControl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 57
    invoke-direct {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "viewObject"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x524

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;)V

    return-object v0
.end method

.method public fireScroll(I)V
    .locals 3
    .param p1, "to"    # I

    .prologue
    .line 209
    const-string v1, "scroll"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 211
    .local v0, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "view"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getCurrentPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "scroll"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 216
    .end local v0    # "options":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method protected getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    return-object v0
.end method

.method public getViews()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "handled":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 83
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->moveNext()V

    .line 89
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    const/4 v0, 0x1

    .line 91
    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->scrollTo(Ljava/lang/Object;)V

    .line 95
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_0

    .line 99
    :pswitch_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_0

    .line 103
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 104
    .local v1, "holder":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "views":Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 107
    const/4 v0, 0x1

    .line 108
    goto :goto_0

    .line 111
    .end local v1    # "holder":Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v3    # "views":Ljava/lang/Object;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 112
    .restart local v1    # "holder":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "view":Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2    # "view":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 115
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_1
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .restart local v2    # "view":Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_0

    .line 117
    const-string v4, "TiScrollableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() ignored. Expected a Titanium view object, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v1    # "holder":Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v2    # "view":Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 124
    .restart local v1    # "holder":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .restart local v2    # "view":Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_3

    .line 126
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2    # "view":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 127
    const/4 v0, 0x1

    .line 131
    :cond_2
    :goto_2
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 128
    .restart local v2    # "view":Ljava/lang/Object;
    :cond_3
    if-eqz v2, :cond_2

    .line 129
    const-string v4, "TiScrollableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeView() ignored. Expected a Titanium view object, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public moveNext()V
    .locals 2

    .prologue
    const/16 v1, 0x521

    .line 186
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public movePrevious()V
    .locals 2

    .prologue
    const/16 v1, 0x520

    .line 177
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x51f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 236
    return-void
.end method

.method public removeView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "viewObject"    # Ljava/lang/Object;

    .prologue
    .line 163
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x526

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public scrollToView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "page"    # Ljava/lang/Object;

    .prologue
    .line 228
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x525

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public setPagerTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x51f

    .line 194
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    const/16 v1, 0xbb8

    .line 197
    .local v1, "timeout":I
    const-string v2, "pagingControlTimeout"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 202
    :cond_0
    if-lez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    :cond_1
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 2
    .param p1, "viewsObject"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
