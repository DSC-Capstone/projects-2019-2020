.class public Lcom/novioplan/pollennieuws/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field exportButton:Landroid/widget/Button;

.field private observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

.field preferences:Landroid/content/SharedPreferences;

.field soundToggle:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "SettingsActivity"

    sput-object v0, Lcom/novioplan/pollennieuws/SettingsActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novioplan/pollennieuws/SettingsActivity;)Lcom/novioplan/pollennieuws/data/ObservationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/novioplan/pollennieuws/SettingsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    return-object v0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "tgpref"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, "tgpref":Z
    sget-object v2, Lcom/novioplan/pollennieuws/SettingsActivity;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "sound on"

    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->soundToggle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    return-void

    .line 177
    :cond_0
    const-string v1, "sound off"

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    if-nez p2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f09003c

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/SettingsActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 46
    new-instance v0, Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->observationAdapter:Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    .line 49
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->soundToggle:Landroid/widget/CheckBox;

    .line 50
    iget-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->soundToggle:Landroid/widget/CheckBox;

    new-instance v1, Lcom/novioplan/pollennieuws/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/SettingsActivity$1;-><init>(Lcom/novioplan/pollennieuws/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->exportButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->exportButton:Landroid/widget/Button;

    new-instance v1, Lcom/novioplan/pollennieuws/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/novioplan/pollennieuws/SettingsActivity$2;-><init>(Lcom/novioplan/pollennieuws/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/SettingsActivity;->exportButton:Landroid/widget/Button;

    .line 172
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/SettingsActivity;->setupViews()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    return-void
.end method
