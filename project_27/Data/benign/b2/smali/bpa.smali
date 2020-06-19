.class public Lbpa;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lbpz;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lbpk;

.field private c:Lio/senseai/kelvin/widget/TermsView;

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lbpa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private O()V
    .locals 4

    .prologue
    const v3, 0x7f04000b

    const v2, 0x7f04000a

    .line 90
    invoke-virtual {p0}, Lbpa;->h()Lo;

    move-result-object v0

    invoke-virtual {v0}, Lo;->f()Lt;

    move-result-object v0

    .line 91
    invoke-static {}, Lbpe;->a()Lbpe;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lt;->a()Laf;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v3, v2}, Laf;->a(IIII)Laf;

    move-result-object v0

    const v2, 0x1020002

    sget-object v3, Lbpe;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Laf;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->a()I

    .line 97
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lbpa;->c:Lio/senseai/kelvin/widget/TermsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/senseai/kelvin/widget/TermsView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lbpa;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public static a()Lbpa;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lbpa;

    invoke-direct {v0}, Lbpa;-><init>()V

    return-object v0
.end method


# virtual methods
.method public N()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lbpa;->q()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lbpa;->h()Lo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbpr;->a(Landroid/content/Context;Z)V

    .line 40
    iget-object v0, p0, Lbpa;->b:Lbpk;

    invoke-interface {v0}, Lbpk;->g()Lio/senseai/kelvin/BaseApplication;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lbpa;->O()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lbpa;->P()V

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    const v0, 0x7f0d0059

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbpa;->d:Landroid/view/View;

    .line 64
    const v0, 0x7f0d0058

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/senseai/kelvin/widget/TermsView;

    iput-object v0, p0, Lbpa;->c:Lio/senseai/kelvin/widget/TermsView;

    .line 65
    iget-object v0, p0, Lbpa;->c:Lio/senseai/kelvin/widget/TermsView;

    invoke-virtual {v0, p0}, Lio/senseai/kelvin/widget/TermsView;->setListener(Lbpz;)V

    .line 67
    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lbpa;->h()Lo;

    move-result-object v0

    check-cast v0, Lbpk;

    iput-object v0, p0, Lbpa;->b:Lbpk;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbpa;->h()Lo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement BaseApplicationHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->b()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lbpa;->b:Lbpk;

    .line 74
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    .line 79
    iget-object v0, p0, Lbpa;->b:Lbpk;

    invoke-interface {v0}, Lbpk;->g()Lio/senseai/kelvin/BaseApplication;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lbpa;->h()Lo;

    move-result-object v1

    invoke-static {v1}, Lbpr;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lio/senseai/kelvin/BaseApplication;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lbpa;->P()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lbpa;->O()V

    goto :goto_0
.end method
