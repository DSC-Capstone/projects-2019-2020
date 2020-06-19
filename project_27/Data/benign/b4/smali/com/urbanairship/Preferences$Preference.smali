.class Lcom/urbanairship/Preferences$Preference;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Preference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/Preferences$Preference$PreferencesObserver;
    }
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field observer:Lcom/urbanairship/Preferences$Preference$PreferencesObserver;

.field final synthetic this$0:Lcom/urbanairship/Preferences;

.field updated:Z

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/Preferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference;->this$0:Lcom/urbanairship/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->updated:Z

    iput-object p2, p0, Lcom/urbanairship/Preferences$Preference;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/Preferences$Preference;->value:Ljava/lang/String;

    invoke-direct {p0}, Lcom/urbanairship/Preferences$Preference;->registerObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/Preferences$Preference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/Preferences$Preference;->isUpdated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/Preferences$Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/Preferences$Preference;->updatePreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/Preferences$Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/Preferences$Preference;->unregisterObserver()V

    return-void
.end method

.method private isUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->updated:Z

    return v0
.end method

.method private registerObserver()V
    .locals 4

    new-instance v0, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;

    invoke-direct {v0, p0}, Lcom/urbanairship/Preferences$Preference$PreferencesObserver;-><init>(Lcom/urbanairship/Preferences$Preference;)V

    iput-object v0, p0, Lcom/urbanairship/Preferences$Preference;->observer:Lcom/urbanairship/Preferences$Preference$PreferencesObserver;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/Preferences;->resolver:Lcom/urbanairship/PreferencesResolver;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/urbanairship/Preferences$Preference;->observer:Lcom/urbanairship/Preferences$Preference$PreferencesObserver;

    invoke-virtual {v1, v0, v2, v3}, Lcom/urbanairship/PreferencesResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    sget-object v0, Lcom/urbanairship/Preferences;->resolver:Lcom/urbanairship/PreferencesResolver;

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference;->observer:Lcom/urbanairship/Preferences$Preference$PreferencesObserver;

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferencesResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updatePreference(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference;->value:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->updated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/urbanairship/Preferences$Preference;->updated:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
