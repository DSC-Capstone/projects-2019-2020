.class Lcom/novioplan/pollennieuws/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/SettingsActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/novioplan/pollennieuws/SettingsActivity$1;->this$0:Lcom/novioplan/pollennieuws/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v3, p0, Lcom/novioplan/pollennieuws/SettingsActivity$1;->this$0:Lcom/novioplan/pollennieuws/SettingsActivity;

    iget-object v3, v3, Lcom/novioplan/pollennieuws/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "tgpref"

    iget-object v4, p0, Lcom/novioplan/pollennieuws/SettingsActivity$1;->this$0:Lcom/novioplan/pollennieuws/SettingsActivity;

    iget-object v4, v4, Lcom/novioplan/pollennieuws/SettingsActivity;->soundToggle:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    iget-object v3, p0, Lcom/novioplan/pollennieuws/SettingsActivity$1;->this$0:Lcom/novioplan/pollennieuws/SettingsActivity;

    iget-object v3, v3, Lcom/novioplan/pollennieuws/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "tgpref"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    .local v2, "tgpref":Z
    sget-object v4, Lcom/novioplan/pollennieuws/SettingsActivity;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "sound on"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Lcom/urbanairship/push/PushPreferences;
    iget-object v3, p0, Lcom/novioplan/pollennieuws/SettingsActivity$1;->this$0:Lcom/novioplan/pollennieuws/SettingsActivity;

    iget-object v3, v3, Lcom/novioplan/pollennieuws/SettingsActivity;->soundToggle:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)V

    .line 64
    return-void

    .line 60
    .end local v1    # "prefs":Lcom/urbanairship/push/PushPreferences;
    :cond_0
    const-string v3, "sound off"

    goto :goto_0
.end method
