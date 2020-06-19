.class public Lcom/novioplan/pollennieuws/Tab5Activity;
.super Landroid/app/Activity;
.source "Tab5Activity.java"


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field btn1:Landroid/widget/Button;

.field btn3:Landroid/widget/Button;

.field btn4:Landroid/widget/Button;

.field btn5:Landroid/widget/Button;

.field btn6:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "Tab5Activity"

    sput-object v0, Lcom/novioplan/pollennieuws/Tab5Activity;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    .line 38
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "tgpref"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    .local v1, "tgpref":Z
    sget-object v3, Lcom/novioplan/pollennieuws/Tab5Activity;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "sound on"

    :goto_0
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/Tab5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn1:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn1:Landroid/widget/Button;

    new-instance v3, Lcom/novioplan/pollennieuws/Tab5Activity$1;

    invoke-direct {v3, p0}, Lcom/novioplan/pollennieuws/Tab5Activity$1;-><init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v2, 0x7f09004c

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/Tab5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn3:Landroid/widget/Button;

    .line 54
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn3:Landroid/widget/Button;

    new-instance v3, Lcom/novioplan/pollennieuws/Tab5Activity$2;

    invoke-direct {v3, p0}, Lcom/novioplan/pollennieuws/Tab5Activity$2;-><init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v2, 0x7f09004b

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/Tab5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn6:Landroid/widget/Button;

    .line 64
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn6:Landroid/widget/Button;

    new-instance v3, Lcom/novioplan/pollennieuws/Tab5Activity$3;

    invoke-direct {v3, p0}, Lcom/novioplan/pollennieuws/Tab5Activity$3;-><init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f09004d

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/Tab5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn4:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn4:Landroid/widget/Button;

    new-instance v3, Lcom/novioplan/pollennieuws/Tab5Activity$4;

    invoke-direct {v3, p0}, Lcom/novioplan/pollennieuws/Tab5Activity$4;-><init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f09004e

    invoke-virtual {p0, v2}, Lcom/novioplan/pollennieuws/Tab5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn5:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/novioplan/pollennieuws/Tab5Activity;->btn5:Landroid/widget/Button;

    new-instance v3, Lcom/novioplan/pollennieuws/Tab5Activity$5;

    invoke-direct {v3, p0}, Lcom/novioplan/pollennieuws/Tab5Activity$5;-><init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 41
    :cond_0
    const-string v2, "sound off"

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/Tab5Activity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/novioplan/pollennieuws/Tab5Activity;->setupViews()V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    return-void
.end method
