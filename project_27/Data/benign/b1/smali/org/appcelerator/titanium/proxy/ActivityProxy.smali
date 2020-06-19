.class public Lorg/appcelerator/titanium/proxy/ActivityProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActivityProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityProxy"


# instance fields
.field protected intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private resultCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

.field protected wrappedActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setWrappedActivity(Landroid/app/Activity;)V

    .line 50
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 192
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_0
    return-void
.end method

.method public getDecorView()Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 75
    const-string v2, "ActivityProxy"

    const-string v3, "unable to return decor view, activity is not TiBaseActivity"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    .line 85
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 80
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    move-object v2, v0

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;-><init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 81
    .local v1, "decorViewProxy":Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 82
    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    .line 85
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "decorViewProxy":Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    goto :goto_0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 150
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 153
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 211
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 215
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 216
    .local v1, "tiActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    goto :goto_0
.end method

.method protected getWrappedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 236
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 237
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "error"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 241
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    if-eqz p4, :cond_0

    .line 223
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    .end local v1    # "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-direct {v1, p4}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 226
    .restart local v1    # "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 227
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v2, "resultCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v2, v3, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 232
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->release()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 247
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public setResult(ILorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 180
    if-nez p2, :cond_1

    .line 181
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public setWrappedActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 59
    :cond_0
    return-void
.end method

.method public startActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/appcelerator/titanium/proxy/IntentProxy;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    instance-of v3, v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 105
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 110
    :goto_0
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 111
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v1

    .line 112
    .local v1, "requestCode":I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3, v1, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 114
    .end local v1    # "requestCode":I
    .end local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_0
    return-void

    .line 107
    .restart local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_1
    new-instance v2, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .end local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-direct {v2, v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    .restart local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    goto :goto_0
.end method

.method public startActivityFromChild(Lorg/appcelerator/titanium/proxy/ActivityProxy;Lorg/appcelerator/titanium/proxy/IntentProxy;I)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .param p2, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p3, "requestCode"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 123
    :cond_0
    return-void
.end method

.method public startActivityIfNeeded(Lorg/appcelerator/titanium/proxy/IntentProxy;I)Z
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p2, "requestCode"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v1

    .line 132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)Z
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
