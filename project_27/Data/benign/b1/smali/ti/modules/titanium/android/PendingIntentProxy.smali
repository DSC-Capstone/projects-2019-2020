.class public Lti/modules/titanium/android/PendingIntentProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PendingIntentProxy.java"


# instance fields
.field protected flags:I

.field protected intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field protected pendingIntent:Landroid/app/PendingIntent;

.field protected pendingIntentContext:Landroid/content/Context;

.field protected updateCurrentIntent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->updateCurrentIntent:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 43
    invoke-direct {p0}, Lti/modules/titanium/android/PendingIntentProxy;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    array-length v0, p2

    if-lt v0, v2, :cond_0

    aget-object v0, p2, v3

    instance-of v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    if-eqz v0, :cond_0

    .line 50
    aget-object v0, p2, v3

    check-cast v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 51
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 52
    aget-object v0, p2, v2

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lti/modules/titanium/android/PendingIntentProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 62
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 63
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 66
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    if-nez v0, :cond_4

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Creation arguments must contain intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 90
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 93
    :cond_0
    const-string v0, "updateCurrentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "updateCurrentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->updateCurrentIntent:Z

    .line 96
    :cond_1
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    .line 101
    :cond_2
    iget-boolean v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->updateCurrentIntent:Z

    if-eqz v0, :cond_3

    .line 102
    iget v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    .line 105
    :cond_3
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 106
    return-void
.end method
