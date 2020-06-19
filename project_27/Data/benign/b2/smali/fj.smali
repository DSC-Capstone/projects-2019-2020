.class public Lfj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lfn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    sput-object v0, Lfj;->a:Lfn;

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 251
    new-instance v0, Lfl;

    invoke-direct {v0}, Lfl;-><init>()V

    sput-object v0, Lfj;->a:Lfn;

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lfj;->a:Lfn;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 287
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Lbw;

    invoke-interface {p0, p1}, Lbw;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0, p1}, Lfn;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Ldz;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 344
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 345
    check-cast p0, Lbw;

    invoke-interface {p0, p1}, Lbw;->a(Ldz;)Lbw;

    move-result-object p0

    .line 349
    :goto_0
    return-object p0

    .line 348
    :cond_0
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 323
    check-cast p0, Lbw;

    invoke-interface {p0}, Lbw;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0}, Lfn;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;I)V
    .locals 1

    .prologue
    .line 268
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 269
    check-cast p0, Lbw;

    invoke-interface {p0, p1}, Lbw;->setShowAsAction(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0, p1}, Lfn;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 309
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 310
    check-cast p0, Lbw;

    invoke-interface {p0, p1}, Lbw;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0, p1}, Lfn;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 383
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 384
    check-cast p0, Lbw;

    invoke-interface {p0}, Lbw;->expandActionView()Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0}, Lfn;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 418
    instance-of v0, p0, Lbw;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Lbw;

    invoke-interface {p0}, Lbw;->isActionViewExpanded()Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfj;->a:Lfn;

    invoke-interface {v0, p0}, Lfn;->c(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
