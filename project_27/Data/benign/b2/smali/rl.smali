.class public final Lrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lrm;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lrl;->a:Z

    .line 51
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrl;->c:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Lrm;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lrm;-><init>(I)V

    sput-object v0, Lrl;->d:Lrm;

    .line 60
    new-array v0, v6, [I

    sget v3, Lnf;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Lnf;->abc_textfield_default_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lnf;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v0, v5

    sput-object v0, Lrl;->e:[I

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Lnf;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v3, v0, v2

    sget v3, Lnf;->abc_ic_go_search_api_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lnf;->abc_ic_search_api_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lnf;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v0, v6

    sget v3, Lnf;->abc_ic_clear_mtrl_alpha:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lnf;->abc_ic_menu_share_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lnf;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lnf;->abc_ic_menu_cut_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lnf;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lnf;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Lnf;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Lnf;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v4, v0, v3

    sput-object v0, Lrl;->f:[I

    .line 89
    new-array v0, v7, [I

    sget v3, Lnf;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Lnf;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lnf;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lnf;->abc_text_cursor_mtrl_alpha:I

    aput v3, v0, v6

    sput-object v0, Lrl;->g:[I

    .line 100
    new-array v0, v6, [I

    sget v3, Lnf;->abc_popup_background_mtrl_mult:I

    aput v3, v0, v2

    sget v3, Lnf;->abc_cab_background_internal_bg:I

    aput v3, v0, v1

    sget v3, Lnf;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v0, v5

    sput-object v0, Lrl;->h:[I

    .line 110
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Lnf;->abc_edit_text_material:I

    aput v3, v0, v2

    sget v2, Lnf;->abc_tab_indicator_material:I

    aput v2, v0, v1

    sget v1, Lnf;->abc_textfield_search_material:I

    aput v1, v0, v5

    sget v1, Lnf;->abc_spinner_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Lnf;->abc_btn_check_material:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lnf;->abc_btn_radio_material:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lnf;->abc_spinner_textfield_background_material:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lnf;->abc_ratingbar_full_material:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lnf;->abc_switch_track_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lnf;->abc_switch_thumb_material:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lnf;->abc_btn_default_mtrl_shape:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lnf;->abc_btn_borderless_material:I

    aput v2, v0, v1

    sput-object v0, Lrl;->i:[I

    return-void

    :cond_0
    move v0, v2

    .line 47
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrl;->j:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Lrl;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0}, Lrl;->a(Landroid/content/Context;)Lrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lau;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lrl;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lrl;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrl;

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lrl;

    invoke-direct {v0, p0}, Lrl;-><init>(Landroid/content/Context;)V

    .line 148
    sget-object v1, Lrl;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 542
    if-nez p2, :cond_0

    .line 544
    sget-object p2, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    .line 548
    :cond_0
    sget-object v0, Lrl;->d:Lrm;

    invoke-virtual {v0, p1, p2}, Lrm;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 550
    if-nez v0, :cond_1

    .line 552
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 553
    sget-object v1, Lrl;->d:Lrm;

    invoke-virtual {v1, p1, p2, v0}, Lrm;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 556
    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 557
    return-void
.end method

.method public static a(Landroid/view/View;Lrk;)V
    .locals 4

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 524
    iget-boolean v0, p1, Lrk;->d:Z

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p1, Lrk;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lrk;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-boolean v0, p1, Lrk;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v1, v2, v0}, Lrl;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 534
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 539
    :cond_0
    return-void

    .line 525
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 244
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 245
    if-ne v3, p1, :cond_1

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_0
    return v0

    .line 244
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v3, 0x7

    .line 311
    iget-object v0, p0, Lrl;->l:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 317
    sget v0, Lnb;->colorControlNormal:I

    invoke-static {p1, v0}, Lrh;->a(Landroid/content/Context;I)I

    move-result v0

    .line 318
    sget v1, Lnb;->colorControlActivated:I

    invoke-static {p1, v1}, Lrh;->a(Landroid/content/Context;I)I

    move-result v1

    .line 321
    new-array v2, v3, [[I

    .line 322
    new-array v3, v3, [I

    .line 323
    const/4 v4, 0x0

    .line 326
    sget-object v5, Lrh;->a:[I

    aput-object v5, v2, v4

    .line 327
    sget v5, Lnb;->colorControlNormal:I

    invoke-static {p1, v5}, Lrh;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    .line 328
    const/4 v4, 0x1

    .line 330
    sget-object v5, Lrh;->b:[I

    aput-object v5, v2, v4

    .line 331
    aput v1, v3, v4

    .line 332
    const/4 v4, 0x2

    .line 334
    sget-object v5, Lrh;->c:[I

    aput-object v5, v2, v4

    .line 335
    aput v1, v3, v4

    .line 336
    const/4 v4, 0x3

    .line 338
    sget-object v5, Lrh;->d:[I

    aput-object v5, v2, v4

    .line 339
    aput v1, v3, v4

    .line 340
    const/4 v4, 0x4

    .line 342
    sget-object v5, Lrh;->e:[I

    aput-object v5, v2, v4

    .line 343
    aput v1, v3, v4

    .line 344
    const/4 v4, 0x5

    .line 346
    sget-object v5, Lrh;->f:[I

    aput-object v5, v2, v4

    .line 347
    aput v1, v3, v4

    .line 348
    const/4 v1, 0x6

    .line 351
    sget-object v4, Lrh;->h:[I

    aput-object v4, v2, v1

    .line 352
    aput v0, v3, v1

    .line 355
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lrl;->l:Landroid/content/res/ColorStateList;

    .line 357
    :cond_0
    iget-object v0, p0, Lrl;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const v5, 0x1010030

    const/4 v1, 0x3

    const v4, 0x3e99999a    # 0.3f

    .line 361
    new-array v0, v1, [[I

    .line 362
    new-array v1, v1, [I

    .line 363
    const/4 v2, 0x0

    .line 366
    sget-object v3, Lrh;->a:[I

    aput-object v3, v0, v2

    .line 367
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {p1, v5, v3}, Lrh;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 368
    const/4 v2, 0x1

    .line 370
    sget-object v3, Lrh;->e:[I

    aput-object v3, v0, v2

    .line 371
    sget v3, Lnb;->colorControlActivated:I

    invoke-static {p1, v3, v4}, Lrh;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 372
    const/4 v2, 0x2

    .line 375
    sget-object v3, Lrh;->h:[I

    aput-object v3, v0, v2

    .line 376
    invoke-static {p1, v5, v4}, Lrh;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 379
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    new-array v0, v1, [[I

    .line 384
    new-array v1, v1, [I

    .line 387
    sget v2, Lnb;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lrh;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    sget-object v3, Lrh;->a:[I

    aput-object v3, v0, v4

    .line 396
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v4

    .line 399
    sget-object v3, Lrh;->e:[I

    aput-object v3, v0, v5

    .line 400
    sget v3, Lnb;->colorControlActivated:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v5

    .line 404
    sget-object v3, Lrh;->h:[I

    aput-object v3, v0, v6

    .line 405
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v6

    .line 425
    :goto_0
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 411
    :cond_0
    sget-object v2, Lrh;->a:[I

    aput-object v2, v0, v4

    .line 412
    sget v2, Lnb;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lrh;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 415
    sget-object v2, Lrh;->e:[I

    aput-object v2, v0, v5

    .line 416
    sget v2, Lnb;->colorControlActivated:I

    invoke-static {p1, v2}, Lrh;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 420
    sget-object v2, Lrh;->h:[I

    aput-object v2, v0, v6

    .line 421
    sget v2, Lnb;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lrh;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    goto :goto_0
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lrl;->f:[I

    invoke-static {v0, p0}, Lrl;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrl;->e:[I

    invoke-static {v0, p0}, Lrl;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrl;->g:[I

    invoke-static {v0, p0}, Lrl;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrl;->i:[I

    invoke-static {v0, p0}, Lrl;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lrl;->h:[I

    invoke-static {v0, p0}, Lrl;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lnf;->abc_cab_background_top_material:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 429
    new-array v0, v1, [[I

    .line 430
    new-array v1, v1, [I

    .line 431
    const/4 v2, 0x0

    .line 434
    sget-object v3, Lrh;->a:[I

    aput-object v3, v0, v2

    .line 435
    sget v3, Lnb;->colorControlNormal:I

    invoke-static {p1, v3}, Lrh;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 436
    const/4 v2, 0x1

    .line 438
    sget-object v3, Lrh;->g:[I

    aput-object v3, v0, v2

    .line 439
    sget v3, Lnb;->colorControlNormal:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 440
    const/4 v2, 0x2

    .line 443
    sget-object v3, Lrh;->h:[I

    aput-object v3, v0, v2

    .line 444
    sget v3, Lnb;->colorControlActivated:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 447
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 451
    new-array v0, v1, [[I

    .line 452
    new-array v1, v1, [I

    .line 453
    const/4 v2, 0x0

    .line 455
    sget v3, Lnb;->colorButtonNormal:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    .line 456
    sget v4, Lnb;->colorControlHighlight:I

    invoke-static {p1, v4}, Lrh;->a(Landroid/content/Context;I)I

    move-result v4

    .line 459
    sget-object v5, Lrh;->a:[I

    aput-object v5, v0, v2

    .line 460
    sget v5, Lnb;->colorButtonNormal:I

    invoke-static {p1, v5}, Lrh;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v1, v2

    .line 461
    const/4 v2, 0x1

    .line 463
    sget-object v5, Lrh;->d:[I

    aput-object v5, v0, v2

    .line 464
    invoke-static {v4, v3}, Lbd;->a(II)I

    move-result v5

    aput v5, v1, v2

    .line 465
    const/4 v2, 0x2

    .line 467
    sget-object v5, Lrh;->b:[I

    aput-object v5, v0, v2

    .line 468
    invoke-static {v4, v3}, Lbd;->a(II)I

    move-result v4

    aput v4, v1, v2

    .line 469
    const/4 v2, 0x3

    .line 472
    sget-object v4, Lrh;->h:[I

    aput-object v4, v0, v2

    .line 473
    aput v3, v1, v2

    .line 476
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 480
    new-array v0, v1, [[I

    .line 481
    new-array v1, v1, [I

    .line 482
    const/4 v2, 0x0

    .line 485
    sget-object v3, Lrh;->a:[I

    aput-object v3, v0, v2

    .line 486
    sget v3, Lnb;->colorControlNormal:I

    invoke-static {p1, v3}, Lrh;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 487
    const/4 v2, 0x1

    .line 489
    sget-object v3, Lrh;->g:[I

    aput-object v3, v0, v2

    .line 490
    sget v3, Lnb;->colorControlNormal:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 491
    const/4 v2, 0x2

    .line 493
    sget-object v3, Lrh;->h:[I

    aput-object v3, v0, v2

    .line 494
    sget v3, Lnb;->colorControlActivated:I

    invoke-static {p1, v3}, Lrh;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 497
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrl;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lrl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 163
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-object v1

    .line 165
    :cond_0
    invoke-static {v0, p1}, Lau;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lrl;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_3

    .line 176
    invoke-static {v0}, Lbe;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    invoke-static {v0, v2}, Lbe;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 180
    invoke-virtual {p0, p1}, Lrl;->b(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    invoke-static {v0, v1}, Lbe;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    move-object v1, v0

    .line 198
    goto :goto_0

    .line 184
    :cond_3
    sget v2, Lnf;->abc_cab_background_top_material:I

    if-ne p1, v2, :cond_4

    .line 185
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget v3, Lnf;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, v3}, Lrl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget v3, Lnf;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, v3}, Lrl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {p0, p1, v0}, Lrl;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v2

    .line 191
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    move-object v0, v1

    .line 194
    goto :goto_1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 202
    iget-object v0, p0, Lrl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 203
    if-nez v0, :cond_0

    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v6, 0x0

    .line 210
    sget-object v3, Lrl;->e:[I

    invoke-static {v3, p1}, Lrl;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    sget v3, Lnb;->colorControlNormal:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 226
    :goto_1
    if-eqz v6, :cond_5

    .line 227
    invoke-static {v0, v5}, Lrh;->a(Landroid/content/Context;I)I

    move-result v0

    .line 228
    invoke-static {p2, v0, v7}, Lrl;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 230
    if-eq v3, v4, :cond_1

    .line 231
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    move v0, v2

    .line 238
    goto :goto_0

    .line 213
    :cond_2
    sget-object v3, Lrl;->g:[I

    invoke-static {v3, p1}, Lrl;->a([II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    sget v3, Lnb;->colorControlActivated:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 215
    goto :goto_1

    .line 216
    :cond_3
    sget-object v3, Lrl;->h:[I

    invoke-static {v3, p1}, Lrl;->a([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    const v3, 0x1010031

    .line 219
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v6, v2

    move-object v7, v5

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 220
    :cond_4
    sget v3, Lnf;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v3, :cond_6

    .line 221
    const v5, 0x1010030

    .line 223
    const v3, 0x42233333    # 40.8f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v7, v6

    move v6, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 240
    goto :goto_0

    :cond_6
    move v3, v4

    move v5, v1

    move-object v7, v6

    move v6, v1

    goto :goto_1
.end method

.method final b(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 264
    sget v1, Lnf;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 265
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 268
    :cond_0
    return-object v0
.end method

.method public final c(I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lrl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 273
    if-nez v0, :cond_1

    move-object v0, v1

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    iget-object v2, p0, Lrl;->k:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lrl;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 278
    :cond_2
    if-nez v1, :cond_d

    .line 280
    sget v2, Lnf;->abc_edit_text_material:I

    if-ne p1, v2, :cond_4

    .line 281
    invoke-direct {p0, v0}, Lrl;->e(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 298
    :goto_1
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lrl;->k:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 301
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lrl;->k:Landroid/util/SparseArray;

    .line 304
    :cond_3
    iget-object v1, p0, Lrl;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_4
    sget v2, Lnf;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v2, :cond_5

    .line 283
    invoke-direct {p0, v0}, Lrl;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 284
    :cond_5
    sget v2, Lnf;->abc_switch_thumb_material:I

    if-ne p1, v2, :cond_6

    .line 285
    invoke-direct {p0, v0}, Lrl;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 286
    :cond_6
    sget v2, Lnf;->abc_btn_default_mtrl_shape:I

    if-eq p1, v2, :cond_7

    sget v2, Lnf;->abc_btn_borderless_material:I

    if-ne p1, v2, :cond_8

    .line 288
    :cond_7
    invoke-direct {p0, v0}, Lrl;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 289
    :cond_8
    sget v2, Lnf;->abc_spinner_mtrl_am_alpha:I

    if-eq p1, v2, :cond_9

    sget v2, Lnf;->abc_spinner_textfield_background_material:I

    if-ne p1, v2, :cond_a

    .line 291
    :cond_9
    invoke-direct {p0, v0}, Lrl;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_a
    sget-object v2, Lrl;->f:[I

    invoke-static {v2, p1}, Lrl;->a([II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 293
    sget v1, Lnb;->colorControlNormal:I

    invoke-static {v0, v1}, Lrh;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_b
    sget-object v2, Lrl;->i:[I

    invoke-static {v2, p1}, Lrl;->a([II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 295
    invoke-direct {p0, v0}, Lrl;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    :cond_c
    move-object v0, v1

    goto :goto_1

    :cond_d
    move-object v0, v1

    goto :goto_0
.end method
