.class Lcom/urbanairship/Preferences$Preference$PreferencesObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/Preferences$Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferencesObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/Preferences$Preference;


# direct methods
.method public constructor <init>(Lcom/urbanairship/Preferences$Preference;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;->this$1:Lcom/urbanairship/Preferences$Preference;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notified of change of key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;->this$1:Lcom/urbanairship/Preferences$Preference;

    iget-object v1, v1, Lcom/urbanairship/Preferences$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;->this$1:Lcom/urbanairship/Preferences$Preference;

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;->this$1:Lcom/urbanairship/Preferences$Preference;

    iget-boolean v0, v0, Lcom/urbanairship/Preferences$Preference;->updated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/urbanairship/Preferences$Preference;->updated:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
