.class public Lti/modules/titanium/ui/ActivityWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "ActivityWindowProxy.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "ActivityWindowProxy"

.field private static final MSG_FINISH_OPEN:I = 0x51e

.field private static final MSG_FIRST_ID:I = 0x4ba

.field protected static final MSG_LAST_ID:I = 0x8a1


# instance fields
.field protected useCurrentActivity:Z

.field protected windowId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/ActivityWindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/ActivityWindowProxy;
    .param p1, "x1"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 30
    iput-object p1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object p1
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/ActivityWindowProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/ActivityWindowProxy;

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method static synthetic access$202(Lti/modules/titanium/ui/ActivityWindowProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/ActivityWindowProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->opened:Z

    return p1
.end method


# virtual methods
.method public fillIntentForTab(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 121
    const-string v1, "useActivityWindow"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    new-instance v1, Lti/modules/titanium/ui/ActivityWindowProxy$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/ActivityWindowProxy$1;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;)V

    invoke-static {v1}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v0

    .line 140
    .local v0, "windowId":I
    const-string v1, "windowId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "isTab"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 58
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "titlePrompt"

    const-string v2, "titlepromptid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to getView on an ActivityWindow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTab()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabGroup()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method protected getWindow()Lti/modules/titanium/ui/TiUIActivityWindow;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/TiUIActivityWindow;

    return-object v0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 147
    sget-boolean v1, Lti/modules/titanium/ui/ActivityWindowProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "ActivityWindowProxy"

    const-string v2, "handleClose"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getWindow()Lti/modules/titanium/ui/TiUIActivityWindow;

    move-result-object v0

    .line 153
    .local v0, "window":Lti/modules/titanium/ui/TiUIActivityWindow;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TiUIActivityWindow;->close(Lorg/appcelerator/kroll/KrollDict;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->releaseViews()V

    .line 158
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 48
    const-string v1, "useCurrentActivity"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "useCurrentActivity":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->useCurrentActivity:Z

    .line 52
    :cond_0
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 81
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 83
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v1, :cond_0

    .line 87
    :cond_0
    iput-boolean v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->opened:Z

    .line 88
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->handlePostOpen()V

    .line 89
    const-string v1, "open"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/ActivityWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x51e
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/16 v4, 0x51e

    .line 102
    sget-boolean v2, Lti/modules/titanium/ui/ActivityWindowProxy;->DBG:Z

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "ActivityWindowProxy"

    const-string v3, "handleOpen"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 108
    .local v1, "messenger":Landroid/os/Messenger;
    iget-boolean v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->useCurrentActivity:Z

    if-eqz v2, :cond_2

    .line 109
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_1

    .line 111
    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow;

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-direct {v2, p0, v0, v1, v4}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow;

    invoke-direct {v2, p0, p1, v1, v4}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method
