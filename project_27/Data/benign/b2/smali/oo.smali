.class public final Loo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbw;


# static fields
.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Lok;

.field private m:Lpf;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Ldz;

.field private t:Lfo;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lok;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Loo;->k:I

    .line 77
    const/16 v0, 0x10

    iput v0, p0, Loo;->p:I

    .line 85
    iput v1, p0, Loo;->q:I

    .line 90
    iput-boolean v1, p0, Loo;->u:Z

    .line 134
    iput-object p1, p0, Loo;->l:Lok;

    .line 135
    iput p3, p0, Loo;->a:I

    .line 136
    iput p2, p0, Loo;->b:I

    .line 137
    iput p4, p0, Loo;->c:I

    .line 138
    iput p5, p0, Loo;->d:I

    .line 139
    iput-object p6, p0, Loo;->e:Ljava/lang/CharSequence;

    .line 140
    iput p7, p0, Loo;->q:I

    .line 141
    return-void
.end method

.method static synthetic a(Loo;)Lok;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Loo;->l:Lok;

    return-object v0
.end method


# virtual methods
.method public a(I)Lbw;
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->e()Landroid/content/Context;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 621
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Loo;->a(Landroid/view/View;)Lbw;

    .line 622
    return-object p0
.end method

.method public a(Landroid/view/View;)Lbw;
    .locals 2

    .prologue
    .line 608
    iput-object p1, p0, Loo;->r:Landroid/view/View;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Loo;->s:Ldz;

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Loo;->a:I

    if-lez v0, :cond_0

    .line 611
    iget v0, p0, Loo;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->b(Loo;)V

    .line 614
    return-object p0
.end method

.method public a(Ldz;)Lbw;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Loo;->s:Ldz;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Loo;->s:Ldz;

    invoke-virtual {v0, v1}, Ldz;->a(Leb;)V

    .line 659
    :cond_0
    iput-object v1, p0, Loo;->r:Landroid/view/View;

    .line 660
    iput-object p1, p0, Loo;->s:Ldz;

    .line 661
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 662
    iget-object v0, p0, Loo;->s:Ldz;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Loo;->s:Ldz;

    new-instance v1, Lop;

    invoke-direct {v1, p0}, Lop;-><init>(Loo;)V

    invoke-virtual {v0, v1}, Ldz;->a(Leb;)V

    .line 670
    :cond_1
    return-object p0
.end method

.method public a(Lfo;)Lbw;
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Loo;->t:Lfo;

    .line 715
    return-object p0
.end method

.method public a()Ldz;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Loo;->s:Ldz;

    return-object v0
.end method

.method public a(Lpc;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lpc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Loo;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Loo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Loo;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 546
    return-void
.end method

.method a(Lpf;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Loo;->m:Lpf;

    .line 347
    invoke-virtual {p0}, Loo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpf;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 348
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Loo;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Loo;->p:I

    .line 469
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lbw;
    .locals 0

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Loo;->setShowAsAction(I)V

    .line 676
    return-object p0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget v2, p0, Loo;->p:I

    .line 495
    iget v0, p0, Loo;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Loo;->p:I

    .line 496
    iget v0, p0, Loo;->p:I

    if-eq v2, v0, :cond_0

    .line 497
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 499
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Loo;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Loo;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Loo;->l:Lok;

    iget-object v2, p0, Loo;->l:Lok;

    invoke-virtual {v2}, Lok;->p()Lok;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lok;->a(Lok;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Loo;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Loo;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Loo;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 164
    :try_start_0
    iget-object v1, p0, Loo;->l:Lok;

    invoke-virtual {v1}, Lok;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Loo;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_3
    iget-object v1, p0, Loo;->s:Ldz;

    if-eqz v1, :cond_4

    iget-object v1, p0, Loo;->s:Ldz;

    invoke-virtual {v1}, Ldz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Loo;->d:I

    return v0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget v2, p0, Loo;->p:I

    .line 519
    iget v0, p0, Loo;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Loo;->p:I

    .line 520
    iget v0, p0, Loo;->p:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 519
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 695
    iget v1, p0, Loo;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    iget-object v1, p0, Loo;->r:Landroid/view/View;

    if-nez v1, :cond_2

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_2
    iget-object v1, p0, Loo;->t:Lfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Loo;->t:Lfo;

    invoke-interface {v1, p0}, Lfo;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    :cond_3
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->d(Loo;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()C
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Loo;->i:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Loo;->h:C

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 578
    iget v0, p0, Loo;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Loo;->p:I

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Loo;->p:I

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Loo;->d()C

    move-result v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string v0, ""

    .line 321
    :goto_0
    return-object v0

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Loo;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    sparse-switch v0, :sswitch_data_0

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :sswitch_0
    sget-object v0, Loo;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :sswitch_1
    sget-object v0, Loo;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :sswitch_2
    sget-object v0, Loo;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 729
    iput-boolean p1, p0, Loo;->u:Z

    .line 730
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 731
    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0}, Loo;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-object v1, p0, Loo;->t:Lfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Loo;->t:Lfo;

    invoke-interface {v1, p0}, Lfo;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :cond_2
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->c(Loo;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Loo;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Loo;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Loo;->r:Landroid/view/View;

    .line 633
    :goto_0
    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Loo;->s:Ldz;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Loo;->s:Ldz;

    invoke-virtual {v0, p0}, Ldz;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Loo;->r:Landroid/view/View;

    .line 631
    iget-object v0, p0, Loo;->r:Landroid/view/View;

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 238
    iget-char v0, p0, Loo;->i:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Loo;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Loo;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Loo;->j:Landroid/graphics/drawable/Drawable;

    .line 428
    :goto_0
    return-object v0

    .line 421
    :cond_0
    iget v0, p0, Loo;->k:I

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->e()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Loo;->k:I

    invoke-static {v0, v1}, Lrl;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Loo;->k:I

    .line 424
    iput-object v0, p0, Loo;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Loo;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Loo;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Loo;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 256
    iget-char v0, p0, Loo;->h:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Loo;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Loo;->m:Lpf;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Loo;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Loo;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Loo;->f:Ljava/lang/CharSequence;

    .line 390
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 394
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    return-object v0

    .line 388
    :cond_1
    iget-object v0, p0, Loo;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->b(Loo;)V

    .line 555
    return-void
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Loo;->m:Lpf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->q()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Loo;->u:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 453
    iget v1, p0, Loo;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Loo;->s:Ldz;

    if-eqz v2, :cond_2

    iget-object v2, p0, Loo;->s:Ldz;

    invoke-virtual {v2}, Ldz;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    iget v2, p0, Loo;->p:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Loo;->s:Ldz;

    invoke-virtual {v2}, Ldz;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 504
    goto :goto_0

    .line 506
    :cond_2
    iget v2, p0, Loo;->p:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    iget v1, p0, Loo;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Loo;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 585
    iget v0, p0, Loo;->q:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 719
    iget v1, p0, Loo;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Loo;->r:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Loo;->s:Ldz;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Loo;->s:Ldz;

    invoke-virtual {v1, p0}, Ldz;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Loo;->r:Landroid/view/View;

    .line 723
    :cond_0
    iget-object v1, p0, Loo;->r:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 725
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Loo;->a(I)Lbw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Loo;->a(Landroid/view/View;)Lbw;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 243
    iget-char v0, p0, Loo;->i:C

    if-ne v0, p1, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 247
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Loo;->i:C

    .line 249
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 458
    iget v2, p0, Loo;->p:I

    .line 459
    iget v0, p0, Loo;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Loo;->p:I

    .line 460
    iget v0, p0, Loo;->p:I

    if-eq v2, v0, :cond_0

    .line 461
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 464
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->a(Landroid/view/MenuItem;)V

    .line 490
    :goto_0
    return-object p0

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Loo;->b(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget v0, p0, Loo;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Loo;->p:I

    .line 191
    :goto_0
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 193
    return-object p0

    .line 188
    :cond_0
    iget v0, p0, Loo;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Loo;->p:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Loo;->j:Landroid/graphics/drawable/Drawable;

    .line 443
    iput p1, p0, Loo;->k:I

    .line 446
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 448
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iput v1, p0, Loo;->k:I

    .line 434
    iput-object p1, p0, Loo;->j:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 437
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Loo;->g:Landroid/content/Intent;

    .line 224
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 261
    iget-char v0, p0, Loo;->h:C

    if-ne v0, p1, :cond_0

    .line 269
    :goto_0
    return-object p0

    .line 265
    :cond_0
    iput-char p1, p0, Loo;->h:C

    .line 267
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Loo;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 536
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 274
    iput-char p1, p0, Loo;->h:C

    .line 275
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Loo;->i:C

    .line 277
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 279
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    .prologue
    .line 590
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_0
    iput p1, p0, Loo;->q:I

    .line 603
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->b(Loo;)V

    .line 604
    return-void

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Loo;->b(I)Lbw;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0}, Lok;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Loo;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 370
    iput-object p1, p0, Loo;->e:Ljava/lang/CharSequence;

    .line 372
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 374
    iget-object v0, p0, Loo;->m:Lpf;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Loo;->m:Lpf;

    invoke-virtual {v0, p1}, Lpf;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 378
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 403
    iput-object p1, p0, Loo;->f:Ljava/lang/CharSequence;

    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Loo;->e:Ljava/lang/CharSequence;

    .line 410
    :cond_0
    iget-object v0, p0, Loo;->l:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 412
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Loo;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loo;->l:Lok;

    invoke-virtual {v0, p0}, Lok;->a(Loo;)V

    .line 530
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Loo;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
