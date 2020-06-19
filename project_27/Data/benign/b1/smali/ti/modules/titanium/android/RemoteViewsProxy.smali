.class public Lti/modules/titanium/android/RemoteViewsProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "RemoteViewsProxy.java"


# instance fields
.field protected layoutId:I

.field protected packageName:Ljava/lang/String;

.field protected remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/android/RemoteViewsProxy;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->packageName:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->layoutId:I

    .line 41
    array-length v0, p2

    if-lt v0, v3, :cond_0

    .line 42
    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 43
    aget-object v0, p2, v2

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->layoutId:I

    .line 49
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 50
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lti/modules/titanium/android/RemoteViewsProxy;->packageName:Ljava/lang/String;

    iget v2, p0, Lti/modules/titanium/android/RemoteViewsProxy;->layoutId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    .line 51
    return-void

    .line 44
    :cond_1
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->packageName:Ljava/lang/String;

    .line 46
    aget-object v0, p2, v3

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->layoutId:I

    goto :goto_0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->packageName:Ljava/lang/String;

    .line 59
    :cond_0
    const-string v0, "layoutId"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "layoutId"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->layoutId:I

    .line 62
    :cond_1
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setDouble(ILjava/lang/String;D)V

    .line 74
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 98
    return-void
.end method

.method public setImageViewUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lti/modules/titanium/android/RemoteViewsProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 105
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 80
    return-void
.end method

.method public setOnClickPendingIntent(ILti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 111
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 117
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 123
    return-void
.end method

.method public setTextViewText(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setUri(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lti/modules/titanium/android/RemoteViewsProxy;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    return-void
.end method
