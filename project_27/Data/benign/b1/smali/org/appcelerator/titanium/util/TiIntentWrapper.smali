.class public Lorg/appcelerator/titanium/util/TiIntentWrapper;
.super Ljava/lang/Object;
.source "TiIntentWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final ACTIVITY_PREFIX:Ljava/lang/String; = "TA-"

.field public static final EXTRA_ACTIVITY_TYPE:Ljava/lang/String; = "activityType"

.field public static final EXTRA_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final EXTRA_BACKGROUND_IMAGE:Ljava/lang/String; = "backgroundImage"

.field public static final EXTRA_ICON_URL:Ljava/lang/String; = "iconUrl"

.field public static final EXTRA_IS_FULLSCREEN:Ljava/lang/String; = "isFullscreen"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SHOW_ACTIVITY_ON_LOAD:Ljava/lang/String; = "showActivityOnLoad"

.field public static final EXTRA_WINDOW_ID:Ljava/lang/String; = "windowId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 37
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public static createActivityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createUsing(Landroid/content/Intent;)Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .locals 1
    .param p0, "prototype"    # Landroid/content/Intent;

    .prologue
    .line 41
    new-instance v0, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createUsing(Lorg/appcelerator/titanium/util/TiIntentWrapper;)Lorg/appcelerator/titanium/util/TiIntentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static createUsing(Lorg/appcelerator/titanium/util/TiIntentWrapper;)Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .locals 2
    .param p0, "prototype"    # Lorg/appcelerator/titanium/util/TiIntentWrapper;

    .prologue
    .line 45
    new-instance v0, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 47
    .local v0, "result":Lorg/appcelerator/titanium/util/TiIntentWrapper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setFullscreen(Z)V

    .line 48
    const-string v1, "single"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setActivityType(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setShowActivityOnLoad(Z)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public getActivityType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "activityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "windowId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasBackgroundImage()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoNamed()Z
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x1

    .line 184
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getWindowId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getWindowId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TA-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 187
    :cond_0
    return v0
.end method

.method public isFullscreen()Z
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "isFullscreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "isFullscreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowActivityOnLoad()Z
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "showActivityOnLoad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "showActivityOnLoad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 109
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 2
    .param p1, "activityType"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "activityType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "colorCode"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "backgroundColor"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "backgroundImage"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "isFullscreen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 2
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method public setShowActivityOnLoad(Z)V
    .locals 2
    .param p1, "showActivityOnLoad"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "showActivityOnLoad"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public setWindowId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiIntentWrapper;->intent:Landroid/content/Intent;

    const-string v1, "windowId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    return-void
.end method
