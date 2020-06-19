.class public Lti/modules/titanium/ui/TabGroupProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TabGroupProxy.java"


# static fields
.field private static DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TabGroupProxy"

.field private static final MSG_ADD_TAB:I = 0x51e

.field private static final MSG_FINISH_OPEN:I = 0x520

.field private static final MSG_FIRST_ID:I = 0x4ba

.field protected static final MSG_LAST_ID:I = 0x8a1

.field private static final MSG_REMOVE_TAB:I = 0x51f

.field private static final MSG_SET_ACTIVE_TAB:I = 0x521


# instance fields
.field initialActiveTab:Ljava/lang/Object;

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation
.end field

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/ui/TiTabActivity;",
            ">;"
        }
    .end annotation
.end field

.field windowId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 65
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;-><init>()V

    .line 66
    return-void
.end method

.method private addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V
    .locals 11
    .param p1, "tg"    # Lti/modules/titanium/ui/widget/TiUITabGroup;
    .param p2, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 166
    iget-object v9, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/ui/TiTabActivity;

    .line 167
    .local v7, "tta":Lti/modules/titanium/ui/TiTabActivity;
    if-nez v7, :cond_0

    .line 168
    sget-boolean v9, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v9, :cond_0

    .line 169
    const-string v9, "TabGroupProxy"

    const-string v10, "Could not add tab because tab activity no longer exists"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    const-string v9, "icon"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    .local v2, "iconProperty":Ljava/lang/Object;
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const-string v9, "tag"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "tag":Ljava/lang/String;
    const-string v9, "title"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "title":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 178
    const-string v5, ""

    .line 181
    :cond_1
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 183
    new-instance v8, Lti/modules/titanium/ui/ActivityWindowProxy;

    invoke-direct {v8}, Lti/modules/titanium/ui/ActivityWindowProxy;-><init>()V

    .line 184
    .local v8, "windowProxy":Lti/modules/titanium/ui/ActivityWindowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lti/modules/titanium/ui/ActivityWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 186
    const-string v9, "window"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;

    .line 187
    .local v0, "baseWindow":Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v9

    invoke-virtual {v8, v9}, Lti/modules/titanium/ui/ActivityWindowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 189
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/appcelerator/kroll/KrollObject;->setWindow(Ljava/lang/Object;)V

    .line 195
    :goto_0
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 196
    invoke-virtual {v0, p2}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 198
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    .line 199
    invoke-virtual {p1, v4}, Lti/modules/titanium/ui/widget/TiUITabGroup;->newTab(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 200
    .local v6, "tspec":Landroid/widget/TabHost$TabSpec;
    if-nez v1, :cond_4

    .line 201
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 206
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v3, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v3}, Lti/modules/titanium/ui/ActivityWindowProxy;->fillIntentForTab(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 211
    invoke-virtual {p1, v6, p2}, Lti/modules/titanium/ui/widget/TiUITabGroup;->addTab(Landroid/widget/TabHost$TabSpec;Lti/modules/titanium/ui/TabProxy;)V

    .line 213
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "tspec":Landroid/widget/TabHost$TabSpec;
    :cond_2
    return-void

    .line 192
    :cond_3
    const-string v9, "TabGroupProxy"

    const-string v10, "window property was not set on tab"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .restart local v6    # "tspec":Landroid/widget/TabHost$TabSpec;
    :cond_4
    invoke-virtual {v6, v5, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    goto :goto_1
.end method

.method private fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 362
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const-string v1, "fullscreen"

    const-string v2, "fullscreen"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    :cond_0
    const-string v1, "navBarHidden"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "navBarHidden"

    const-string v2, "navBarHidden"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    :cond_1
    const-string v1, "windowSoftInputMode"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const-string v1, "windowSoftInputMode"

    const-string v2, "windowSoftInputMode"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    :cond_2
    const-string v1, "exitOnClose"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    const-string v1, "finishRoot"

    const-string v2, "exitOnClose"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 380
    .local v0, "messenger":Landroid/os/Messenger;
    const-string v1, "messenger"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    const-string v1, "messageId"

    const/16 v2, 0x520

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    return-void

    .line 375
    .end local v0    # "messenger":Landroid/os/Messenger;
    :cond_3
    const-string v1, "finishRoot"

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleAddTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 4
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 146
    const-string v2, "tag"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v2, "tag"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Lti/modules/titanium/ui/TabProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 153
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 154
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 156
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 160
    .local v1, "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/ui/TabGroupProxy;->addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V

    .line 162
    .end local v1    # "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_2
    return-void
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    .line 135
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x51e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildFocusEvent(II)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .param p1, "toIndex"    # I
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 339
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 341
    .local v0, "e":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "previousIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    if-eq p2, v4, :cond_1

    .line 345
    const-string v2, "previousTab"

    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_0
    if-eq p1, v4, :cond_0

    .line 353
    const-string v2, "tab"

    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    return-object v0

    .line 347
    :cond_1
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 348
    .local v1, "fakeTab":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "title"

    const-string v3, "no tab"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "previousTab"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected doSetActiveTab(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    .line 232
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 234
    .local v0, "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 241
    .end local v0    # "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    :goto_0
    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 8

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "activeTab":Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 249
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 250
    .local v4, "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITabGroup;->getActiveTab()I

    move-result v1

    .line 252
    .local v1, "activeTabIndex":I
    if-gez v1, :cond_1

    .line 253
    const-string v5, "TabGroupProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to get active tab, invalid index returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 273
    .end local v1    # "activeTabIndex":I
    .end local v4    # "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    .restart local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    :goto_1
    if-nez v0, :cond_6

    .line 274
    const-string v2, "Failed to get activeTab, make sure tabs are added first before calling getActiveTab()"

    .line 275
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v5, "TabGroupProxy"

    invoke-static {v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 254
    .end local v2    # "errorMessage":Ljava/lang/String;
    .restart local v1    # "activeTabIndex":I
    .restart local v4    # "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 255
    const-string v5, "TabGroupProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to get active tab, index is larger than tabs array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v1    # "activeTabIndex":I
    .end local v4    # "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_4

    .line 260
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 261
    .local v3, "tabsIndex":I
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 262
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .restart local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    goto :goto_1

    .line 264
    :cond_3
    const-string v5, "TabGroupProxy"

    const-string v6, "Unable to get active tab, initialActiveTab index is larger than tabs array"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v3    # "tabsIndex":I
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    instance-of v5, v5, Lti/modules/titanium/ui/TabProxy;

    if-eqz v5, :cond_5

    .line 267
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .end local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .restart local v0    # "activeTab":Lti/modules/titanium/ui/TabProxy;
    goto :goto_1

    .line 269
    :cond_5
    const-string v5, "TabGroupProxy"

    const-string v6, "Unable to get active tab, initialActiveTab is not recognized"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    :cond_6
    return-object v0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to getView on a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabs()[Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "tps":[Lti/modules/titanium/ui/TabProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tps":[Lti/modules/titanium/ui/TabProxy;
    check-cast v0, [Lti/modules/titanium/ui/TabProxy;

    .line 118
    .restart local v0    # "tps":[Lti/modules/titanium/ui/TabProxy;
    :cond_0
    return-object v0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v4, 0x0

    .line 318
    sget-boolean v1, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "TabGroupProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClose: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 323
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 324
    .local v0, "tabActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 327
    invoke-static {v0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->releaseViews()V

    .line 330
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->windowId:Ljava/lang/String;

    .line 331
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 334
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    .line 79
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 80
    .local v1, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 81
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 82
    goto :goto_0

    .line 85
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 86
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 87
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 88
    goto :goto_0

    .line 91
    .end local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lti/modules/titanium/ui/TiTabActivity;

    .line 92
    .local v0, "activity":Lti/modules/titanium/ui/TiTabActivity;
    new-instance v2, Lti/modules/titanium/ui/widget/TiUITabGroup;

    invoke-direct {v2, p0, v0}, Lti/modules/titanium/ui/widget/TiUITabGroup;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lti/modules/titanium/ui/TiTabActivity;)V

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 93
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 94
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->handlePostOpen(Landroid/app/Activity;)V

    move v2, v3

    .line 95
    goto :goto_0

    .line 98
    .end local v0    # "activity":Lti/modules/titanium/ui/TiTabActivity;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 99
    .restart local v1    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->doSetActiveTab(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 101
    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x51e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 284
    sget-boolean v2, Lti/modules/titanium/ui/TabGroupProxy;->DBG:Z

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "TabGroupProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const-string v2, "activeTab"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "activeTab"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    .line 292
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lti/modules/titanium/ui/TiTabActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method public handlePostOpen(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    move-object v3, p1

    check-cast v3, Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {v3, p0}, Lti/modules/titanium/ui/TiTabActivity;->setTabGroupProxy(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 301
    new-instance v3, Ljava/lang/ref/WeakReference;

    check-cast p1, Lti/modules/titanium/ui/TiTabActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 302
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v2, Lti/modules/titanium/ui/widget/TiUITabGroup;

    .line 303
    .local v2, "tg":Lti/modules/titanium/ui/widget/TiUITabGroup;
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 305
    .local v1, "tab":Lti/modules/titanium/ui/TabProxy;
    invoke-direct {p0, v2, v1}, Lti/modules/titanium/ui/TabGroupProxy;->addTabToGroup(Lti/modules/titanium/ui/widget/TiUITabGroup;Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 308
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tab":Lti/modules/titanium/ui/TabProxy;
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->initialActiveTab:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUITabGroup;->changeActiveTab(Ljava/lang/Object;)V

    .line 310
    const/4 v3, 0x1

    iput-boolean v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 311
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handlePostOpen()V

    .line 312
    const-string v3, "open"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/ui/TabGroupProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 217
    return-void
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    .line 394
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 395
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 396
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 397
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 398
    .local v1, "t":Lti/modules/titanium/ui/TabProxy;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 399
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->releaseViews()V

    goto :goto_0

    .line 401
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lti/modules/titanium/ui/TabProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 216
    return-void
.end method

.method public setActiveTab(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tab"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->doSetActiveTab(Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
