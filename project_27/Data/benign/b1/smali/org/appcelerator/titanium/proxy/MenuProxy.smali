.class public Lorg/appcelerator/titanium/proxy/MenuProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "MenuProxy"

.field private static final MSG_ADD:I = 0x136

.field private static final MSG_CLEAR:I = 0x138

.field private static final MSG_CLOSE:I = 0x137

.field private static final MSG_FIRST_ID:I = 0xd2

.field protected static final MSG_LAST_ID:I = 0x4b9

.field private static final MSG_REMOVE_GROUP:I = 0x139

.field private static final MSG_REMOVE_ITEM:I = 0x13a

.field private static final MSG_SET_GROUP_ENABLED:I = 0x13b

.field private static final MSG_SET_GROUP_VISIBLE:I = 0x13c


# instance fields
.field private final DBG:Z

.field protected menu:Landroid/view/Menu;

.field protected menuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lorg/appcelerator/titanium/proxy/MenuItemProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 30
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->DBG:Z

    .line 47
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    move-object v2, v1

    .line 112
    :goto_0
    return-object v2

    .line 108
    :cond_0
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 109
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .end local p1    # "d":Lorg/appcelerator/kroll/KrollDict;
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    move-object p1, v0

    .line 112
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .restart local p1    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x136

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public findItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 5
    .param p1, "itemId"    # I

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 188
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 189
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object v2, v0

    .line 191
    monitor-exit v4

    .line 194
    :cond_0
    return-object v2

    .line 191
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 211
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    monitor-exit v1

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 203
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 204
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 207
    .restart local v1    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    return-object v1
.end method

.method public getItems()[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 7

    .prologue
    .line 322
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 323
    .local v1, "len":I
    new-array v4, v1, [Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 324
    .local v4, "proxies":[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 326
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 327
    .local v2, "mi":Landroid/view/MenuItem;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 328
    .local v3, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    aput-object v3, v4, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v2    # "mi":Landroid/view/MenuItem;
    .end local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    monitor-exit v6

    .line 331
    return-object v4

    .line 330
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 8
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    const-string v5, ""

    .line 120
    .local v5, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 121
    .local v2, "itemId":I
    const/4 v0, 0x0

    .line 122
    .local v0, "groupId":I
    const/4 v4, 0x0

    .line 124
    .local v4, "order":I
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    const-string v6, "title"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_0
    const-string v6, "itemId"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    const-string v6, "itemId"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    .line 130
    :cond_1
    const-string v6, "groupId"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    const-string v6, "groupId"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 133
    :cond_2
    const-string v6, "order"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    const-string v6, "order"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    .line 137
    :cond_3
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 138
    .local v1, "item":Landroid/view/MenuItem;
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .end local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-direct {v3, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;-><init>(Landroid/view/MenuItem;)V

    .line 139
    .restart local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 140
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v7

    .line 143
    return-object v3

    .line 141
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public handleClear()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 160
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    monitor-exit v1

    .line 164
    :cond_0
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 181
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 57
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 59
    :pswitch_0
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 60
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 64
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 65
    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 69
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 74
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 75
    goto :goto_0

    .line 78
    :pswitch_4
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 79
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 80
    goto :goto_0

    .line 83
    :pswitch_5
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 84
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 85
    goto :goto_0

    .line 88
    :pswitch_6
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 89
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 90
    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRemoveGroup(I)V
    .locals 7
    .param p1, "groupId"    # I

    .prologue
    .line 234
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 235
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 236
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    .local v4, "mm":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 238
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 239
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 240
    .local v2, "mi":Landroid/view/MenuItem;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 241
    .local v3, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "mi":Landroid/view/MenuItem;
    .end local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 244
    iput-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 245
    monitor-exit v6

    .line 246
    return-void

    .line 245
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v4    # "mm":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public handleRemoveItem(I)V
    .locals 4
    .param p1, "itemId"    # I

    .prologue
    .line 261
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 262
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 263
    .local v0, "mi":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 264
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 265
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v1, :cond_0

    .line 268
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 270
    .end local v1    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_1
    monitor-exit v3

    .line 271
    return-void

    .line 270
    .end local v0    # "mi":Landroid/view/MenuItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleSetGroupEnabled(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "args"    # Ljava/util/HashMap;

    .prologue
    .line 293
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 294
    return-void
.end method

.method public handleSetGroupVisible(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "args"    # Ljava/util/HashMap;

    .prologue
    .line 312
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 313
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 355
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 360
    return-void
.end method

.method public removeGroup(I)V
    .locals 2
    .param p1, "groupId"    # I

    .prologue
    .line 224
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 251
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 275
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "args":Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "args":Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "visible"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 339
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 340
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "MenuProxy"

    const-string v1, "A new menu has been set, cleaning up old menu first"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 345
    :cond_1
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 346
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
