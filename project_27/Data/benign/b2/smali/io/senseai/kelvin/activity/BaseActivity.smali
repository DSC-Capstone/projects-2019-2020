.class public Lio/senseai/kelvin/activity/BaseActivity;
.super Lo;
.source "SourceFile"

# interfaces
.implements Lbpk;
.implements Lbpl;
.implements Lbpp;


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private o:Lec;

.field private p:Lbpo;

.field private q:Lio/senseai/kelvinsdk/KelvinInit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lio/senseai/kelvin/activity/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/senseai/kelvin/activity/BaseActivity;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lo;-><init>()V

    .line 192
    return-void
.end method

.method private b(Z)V
    .locals 7

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->f()Lt;

    move-result-object v1

    .line 139
    const v0, 0x1020002

    invoke-virtual {v1, v0}, Lt;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 140
    :cond_0
    invoke-static {p0}, Lbpr;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 142
    :cond_1
    sget-object v0, Lbpa;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lt;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lbpa;

    .line 144
    if-eqz v0, :cond_3

    .line 173
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    sget-object v0, Lbpe;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lt;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lbpe;

    .line 152
    invoke-static {}, Lbpa;->a()Lbpa;

    move-result-object v2

    .line 153
    invoke-virtual {v1}, Lt;->a()Laf;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f04000a

    const/4 v5, 0x0

    const v6, 0x7f04000a

    invoke-virtual {v1, v3, v4, v5, v6}, Laf;->a(IIII)Laf;

    move-result-object v1

    const v3, 0x1020002

    sget-object v4, Lbpa;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Laf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Laf;

    move-result-object v1

    .line 158
    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {v1, v0}, Laf;->a(Landroid/support/v4/app/Fragment;)Laf;

    .line 162
    :cond_4
    invoke-virtual {v1}, Laf;->a()I

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :cond_5
    invoke-static {}, Lbpe;->a()Lbpe;

    move-result-object v0

    .line 165
    invoke-virtual {v1}, Lt;->a()Laf;

    move-result-object v1

    const v2, 0x1020002

    sget-object v3, Lbpe;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Laf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->a()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 184
    invoke-static {p1}, Lbpb;->a(Ljava/lang/String;)Lbpb;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->f()Lt;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lt;->a()Laf;

    move-result-object v1

    const v2, 0x7f04000b

    const v3, 0x7f040001

    const/high16 v4, 0x7f040000

    const v5, 0x7f04000a

    invoke-virtual {v1, v2, v3, v4, v5}, Laf;->a(IIII)Laf;

    move-result-object v1

    const v2, 0x1020002

    sget-object v3, Lbpb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Laf;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Laf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laf;->a(Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->a()I

    .line 190
    return-void
.end method


# virtual methods
.method public a(Lio/senseai/kelvinsdk/Temperature;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/senseai/kelvin/activity/BaseActivity;->b(Z)V

    .line 83
    :cond_0
    sget-object v0, Lio/senseai/kelvin/activity/BaseActivity;->n:Ljava/lang/String;

    const-string v1, "Error in Kelvin library initialization or reading"

    invoke-static {v0, v1, p1}, Lbps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lbrq;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Lo;->attachBaseContext(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lio/senseai/kelvin/activity/BaseActivity;->c(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public g()Lio/senseai/kelvin/BaseApplication;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/BaseApplication;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/KelvinInit;->getPredictionNow()V

    .line 127
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/BaseApplication;

    .line 131
    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->a()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/KelvinInit;->getPin()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lo;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->p:Lbpo;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lbpo;

    invoke-direct {v0, p0}, Lbpo;-><init>(Lbpp;)V

    iput-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->p:Lbpo;

    .line 63
    :cond_0
    new-instance v0, Lec;

    new-instance v1, Lbox;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbox;-><init>(Lio/senseai/kelvin/activity/BaseActivity;Lbow;)V

    invoke-direct {v0, p0, v1}, Lec;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->o:Lec;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/senseai/kelvin/activity/BaseActivity;->b(Z)V

    .line 67
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lio/senseai/kelvin/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lio/senseai/kelvin/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/senseai/kelvinsdk/KelvinInit;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/senseai/kelvinsdk/KelvinInit;

    move-result-object v0

    iput-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lio/senseai/kelvin/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 74
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lo;->onPause()V

    .line 89
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->TIMER:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v0, v1}, Lio/senseai/kelvinsdk/KelvinInit;->setDataMode(Lio/senseai/kelvinsdk/OperatingMode;)V

    .line 90
    invoke-static {p0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvin/activity/BaseActivity;->p:Lbpo;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lo;->onResume()V

    .line 97
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    sget-object v1, Lio/senseai/kelvinsdk/OperatingMode;->ALWAYS_FAST:Lio/senseai/kelvinsdk/OperatingMode;

    invoke-virtual {v0, v1}, Lio/senseai/kelvinsdk/KelvinInit;->setDataMode(Lio/senseai/kelvinsdk/OperatingMode;)V

    .line 99
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->q:Lio/senseai/kelvinsdk/KelvinInit;

    invoke-virtual {v0}, Lio/senseai/kelvinsdk/KelvinInit;->getPredictionNow()V

    .line 102
    :cond_0
    invoke-static {p0}, Lay;->a(Landroid/content/Context;)Lay;

    move-result-object v0

    iget-object v1, p0, Lio/senseai/kelvin/activity/BaseActivity;->p:Lbpo;

    iget-object v2, p0, Lio/senseai/kelvin/activity/BaseActivity;->p:Lbpo;

    invoke-virtual {v2}, Lbpo;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lay;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/senseai/kelvin/activity/BaseActivity;->o:Lec;

    invoke-virtual {v0, p1}, Lec;->a(Landroid/view/MotionEvent;)Z

    .line 119
    invoke-super {p0, p1}, Lo;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
