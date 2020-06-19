.class public Lcom/robocatapps/thermo/e;
.super Lcom/robocatapps/thermo/h;


# instance fields
.field private a:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private b:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/robocatapps/thermo/h;-><init>()V

    new-instance v0, Lcom/robocatapps/thermo/f;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/f;-><init>(Lcom/robocatapps/thermo/e;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/e;->a:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    new-instance v0, Lcom/robocatapps/thermo/g;

    invoke-direct {v0, p0}, Lcom/robocatapps/thermo/g;-><init>(Lcom/robocatapps/thermo/e;)V

    iput-object v0, p0, Lcom/robocatapps/thermo/e;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/robocatapps/thermo/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/e;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    const-string v0, "com.robocat.thermo.settings.units_is_celsius"

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/robocatapps/thermo/App;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/robocatapps/thermo/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/e;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    const-string v0, "com.robocat.thermo.settings.show_feels_like"

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/robocatapps/thermo/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/e;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    const-string v0, "com.robocat.thermo.settings.show_yesterday"

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic d(Lcom/robocatapps/thermo/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/e;->e(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    const-string v0, "com.robocat.thermo.settings.play_sounds"

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic e(Lcom/robocatapps/thermo/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/robocatapps/thermo/e;->d(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    const-string v0, "com.robocat.thermo.settings.show_history"

    invoke-direct {p0, v0, p1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/robocatapps/thermo/h;->onActivityCreated(Landroid/os/Bundle;)V

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/robocatapps/thermo/e;->a(I)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const-string v1, "com.robocat.thermo.settings.units_is_celsius"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070030

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v1, p0, Lcom/robocatapps/thermo/e;->a:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "com.robocat.thermo.settings.show_feels_like"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/robocatapps/thermo/e;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "com.robocat.thermo.settings.show_yesterday"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/robocatapps/thermo/e;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "com.robocat.thermo.settings.show_history"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/robocatapps/thermo/e;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/robocatapps/thermo/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "com.robocat.thermo.settings.play_sounds"

    invoke-static {v1}, Lcom/robocatapps/thermo/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/robocatapps/thermo/e;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const v1, 0x7f070031

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
