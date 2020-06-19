.class public Landroid/support/v7/widget/ActionMenuPresenter;
.super Lof;
.source "SourceFile"

# interfaces
.implements Lea;


# instance fields
.field public final g:Lsc;

.field public h:I

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private final t:Landroid/util/SparseBooleanArray;

.field private u:Landroid/view/View;

.field private v:Lsb;

.field private w:Lrw;

.field private x:Lry;

.field private y:Lrx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    sget v0, Lni;->abc_action_menu_layout:I

    sget v1, Lni;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lof;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/util/SparseBooleanArray;

    .line 82
    new-instance v0, Lsc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsc;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Lrv;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Lsc;

    .line 87
    return-void
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    if-nez v0, :cond_1

    move-object v2, v3

    .line 293
    :cond_0
    :goto_0
    return-object v2

    .line 285
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 286
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 287
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 288
    instance-of v1, v2, Lpc;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lpc;

    invoke-interface {v1}, Lpc;->getItemData()Loo;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 286
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 293
    goto :goto_0
.end method

.method public static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Lrw;)Lrw;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    return-object p1
.end method

.method public static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Lry;)Lry;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    return-object p1
.end method

.method public static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Lsb;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Lsb;

    return-object v0
.end method

.method public static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Lsb;)Lsb;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Lsb;

    return-object p1
.end method

.method public static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Lry;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    return-object v0
.end method

.method public static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Lok;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    return-object v0
.end method

.method public static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Landroid/support/v7/widget/ActionMenuPresenter;)Lpb;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    return-object v0
.end method

.method public static synthetic f(Landroid/support/v7/widget/ActionMenuPresenter;)Lok;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    return-object v0
.end method

.method public static synthetic g(Landroid/support/v7/widget/ActionMenuPresenter;)Lpb;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    return-object v0
.end method

.method public static synthetic h(Landroid/support/v7/widget/ActionMenuPresenter;)Lrw;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    return-object v0
.end method


# virtual methods
.method public a(Loo;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Loo;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Loo;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lof;->a(Loo;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Loo;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 176
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Lsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_2
    return-object v0

    .line 172
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;)Lpb;
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Lof;->a(Landroid/view/ViewGroup;)Lpb;

    move-result-object v1

    move-object v0, v1

    .line 162
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 163
    return-object v1
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 140
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 141
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    .line 143
    return-void
.end method

.method public a(Landroid/content/Context;Lok;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Lof;->a(Landroid/content/Context;Lok;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    invoke-static {p1}, Lnv;->a(Landroid/content/Context;)Lnv;

    move-result-object v0

    .line 96
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v0}, Lnv;->b()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    .line 100
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0}, Lnv;->c()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 105
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v0}, Lnv;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:I

    .line 109
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 110
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v2, :cond_3

    .line 112
    new-instance v2, Lrz;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lrz;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 113
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 114
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 116
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 121
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    .line 123
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    .line 126
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    .line 127
    return-void

    .line 118
    :cond_4
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnh;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:I

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lok;->b(Z)V

    .line 137
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Lok;)V

    .line 550
    return-void
.end method

.method public a(Lok;Z)V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    .line 515
    invoke-super {p0, p1, p2}, Lof;->a(Lok;Z)V

    .line 516
    return-void
.end method

.method public a(Loo;Lpc;)V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lpc;->a(Loo;I)V

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 187
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 188
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lom;)V

    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Lrx;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lrx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Lrv;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Lrx;

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Lrx;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPopupCallback(Loe;)V

    .line 194
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 541
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lof;->a(Lpf;)Z

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lok;->a(Z)V

    goto :goto_0
.end method

.method public a(ILoo;)Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p2}, Loo;->j()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lof;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lpf;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1}, Lpf;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 278
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 264
    :goto_1
    invoke-virtual {v0}, Lpf;->s()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    if-eq v2, v3, :cond_1

    .line 265
    invoke-virtual {v0}, Lpf;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lpf;

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {v0}, Lpf;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 268
    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 273
    :cond_3
    invoke-virtual {p1}, Lpf;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 274
    new-instance v1, Lrw;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lrw;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lpf;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    .line 275
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    invoke-virtual {v1, v0}, Lrw;->a(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    invoke-virtual {v0}, Lrw;->a()V

    .line 277
    invoke-super {p0, p1}, Lof;->a(Lpf;)Z

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 151
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    .line 153
    return-void
.end method

.method public b(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Lnu;->a(Landroid/view/ViewGroup;)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lof;->b(Z)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    invoke-virtual {v0}, Lok;->k()Ljava/util/ArrayList;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 214
    :goto_0
    if-ge v3, v5, :cond_2

    .line 215
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loo;

    invoke-virtual {v0}, Loo;->a()Ldz;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0, p0}, Ldz;->a(Lea;)V

    .line 214
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    invoke-virtual {v0}, Lok;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 228
    if-ne v3, v1, :cond_9

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loo;

    invoke-virtual {v0}, Loo;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    move v2, v0

    .line 235
    :cond_3
    :goto_3
    if-eqz v2, :cond_b

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_4

    .line 237
    new-instance v0, Lrz;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lrz;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 239
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 240
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    if-eq v0, v1, :cond_6

    .line 241
    if-eqz v0, :cond_5

    .line 242
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 245
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->c()Lsh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_6
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 252
    return-void

    .line 222
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v0, v2

    .line 229
    goto :goto_2

    .line 231
    :cond_9
    if-lez v3, :cond_a

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_5

    .line 247
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    if-ne v0, v1, :cond_6

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public b()Z
    .locals 21

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    invoke-virtual {v2}, Lok;->i()Ljava/util/ArrayList;

    move-result-object v13

    .line 380
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 381
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->n:I

    .line 382
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    .line 383
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v2, Landroid/view/ViewGroup;

    .line 386
    const/4 v6, 0x0

    .line 387
    const/4 v5, 0x0

    .line 388
    const/4 v8, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 391
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loo;

    .line 392
    invoke-virtual {v3}, Loo;->l()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 393
    add-int/lit8 v6, v6, 0x1

    .line 399
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Loo;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 402
    const/4 v3, 0x0

    .line 390
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v3}, Loo;->k()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 407
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 409
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 411
    :cond_4
    sub-int v10, v7, v6

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 414
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 416
    const/4 v4, 0x0

    .line 417
    const/4 v3, 0x0

    .line 418
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v5, :cond_1d

    .line 419
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    div-int v3, v9, v3

    .line 420
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    rem-int v4, v9, v4

    .line 421
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 425
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 426
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loo;

    .line 428
    invoke-virtual {v3}, Loo;->l()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 429
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Loo;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 430
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    if-nez v8, :cond_5

    .line 431
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    .line 433
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v8, :cond_7

    .line 434
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 439
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 440
    sub-int v8, v9, v6

    .line 441
    if-nez v7, :cond_1c

    .line 444
    :goto_6
    invoke-virtual {v3}, Loo;->getGroupId()I

    move-result v7

    .line 445
    if-eqz v7, :cond_6

    .line 446
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 448
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Loo;->d(Z)V

    move v3, v8

    move v7, v10

    .line 425
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 437
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 449
    :cond_8
    invoke-virtual {v3}, Loo;->k()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 452
    invoke-virtual {v3}, Loo;->getGroupId()I

    move-result v17

    .line 453
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 454
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 457
    :goto_8
    if-eqz v6, :cond_1b

    .line 458
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Loo;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 459
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    if-nez v8, :cond_b

    .line 460
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/view/View;

    .line 462
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v8, :cond_f

    .line 463
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    .line 465
    sub-int v8, v4, v19

    .line 466
    if-nez v19, :cond_1a

    .line 467
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 472
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 473
    sub-int/2addr v9, v8

    .line 474
    if-nez v7, :cond_c

    move v7, v8

    .line 478
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v8, :cond_11

    .line 479
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 486
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 487
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 501
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 503
    :cond_d
    invoke-virtual {v3, v11}, Loo;->d(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 504
    goto :goto_7

    .line 454
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 470
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 479
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 482
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 488
    :cond_13
    if-eqz v18, :cond_19

    .line 490
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 491
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 492
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loo;

    .line 493
    invoke-virtual {v4}, Loo;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 495
    invoke-virtual {v4}, Loo;->j()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 496
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Loo;->d(Z)V

    .line 491
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 506
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Loo;->d(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 509
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    .line 148
    return-void
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    invoke-virtual {v0}, Lok;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lsb;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Lok;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lsb;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lok;Landroid/view/View;Z)V

    .line 304
    new-instance v1, Lry;

    invoke-direct {v1, p0, v0}, Lry;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Lsb;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 310
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lof;->a(Lpf;)Z

    .line 314
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Z

    .line 157
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Lpb;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Lsb;

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Lox;->e()V

    move v0, v1

    .line 332
    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v1

    or-int/2addr v0, v1

    .line 344
    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Lrw;

    invoke-virtual {v0}, Lrw;->e()V

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Lsb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Lsb;

    invoke-virtual {v0}, Lsb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Lry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
