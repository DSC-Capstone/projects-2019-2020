.class public abstract Lms;
.super Lmr;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field public final c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field private i:Lmo;

.field private j:Ljava/lang/CharSequence;

.field private k:Z


# virtual methods
.method public abstract a()Lmo;
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public b()Lmo;
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lms;->d:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lms;->i:Lmo;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lms;->a()Lmo;

    move-result-object v0

    iput-object v0, p0, Lms;->i:Lmo;

    .line 88
    :cond_0
    iget-object v0, p0, Lms;->i:Lmo;

    return-object v0
.end method

.method public final c()Landroid/content/Context;
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lms;->b()Lmo;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lmo;->a()Landroid/content/Context;

    move-result-object v0

    .line 154
    :cond_0
    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lms;->a:Landroid/content/Context;

    .line 157
    :cond_1
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lms;->k:Z

    return v0
.end method

.method public final e()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lms;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lms;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lms;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lms;->j:Ljava/lang/CharSequence;

    goto :goto_0
.end method
