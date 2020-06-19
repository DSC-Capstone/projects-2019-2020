.class public Lkankan/wheel/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkankan/wheel/widget/WheelView$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0x5

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEMS_TEXT_COLOR:I = -0x1000000

.field private static final LABEL_OFFSET:I = 0x8

.field private static final NOVAL:I = -0x1

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I

.field private static final VALUE_TEXT_COLOR:I = -0x20000000


# instance fields
.field private adapter:Lkankan/wheel/widget/WheelAdapter;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private currentItem:I

.field private itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastYTouch:F

.field private showSelectionIndicator:Z

.field private textColor:I

.field private textSize:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private typeface:Landroid/graphics/Typeface;

.field private typefaceWeight:I

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 133
    return-void
.end method

.method private buildText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 369
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 370
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v3, "itemsText":Ljava/lang/StringBuilder;
    iget v5, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v1, v5, 0x2

    .line 372
    .local v1, "addItems":I
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v2, v5, v1

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-ge v2, v5, :cond_1

    .line 373
    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0, v2}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/lit8 v2, v5, 0x1

    :goto_1
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v5, v1

    if-gt v2, v5, :cond_4

    .line 385
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 386
    invoke-interface {v0, v2}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v5, v1

    if-ge v2, v5, :cond_3

    .line 392
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private calculateLayoutWidth(II)I
    .locals 11
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v9, 0x0

    .line 433
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->initResourcesIfNecessary()V

    .line 435
    move v6, p1

    .line 437
    .local v6, "width":I
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getMaxTextLength()I

    move-result v0

    .line 438
    .local v0, "maxLength":I
    if-lez v0, :cond_5

    .line 439
    const-string v7, "0"

    iget-object v8, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    .line 440
    .local v5, "textWidth":F
    int-to-float v7, v0

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 444
    .end local v5    # "textWidth":F
    :goto_0
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 446
    iput v9, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 447
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 448
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    iget-object v8, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 451
    :cond_0
    const/4 v4, 0x0

    .line 452
    .local v4, "recalculate":Z
    const/high16 v7, 0x40000000    # 2.0f

    if-ne p2, v7, :cond_6

    .line 453
    move v6, p1

    .line 454
    const/4 v4, 0x1

    .line 470
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 472
    add-int/lit8 v7, v6, -0x8

    add-int/lit8 v3, v7, -0x14

    .line 473
    .local v3, "pureWidth":I
    if-gtz v3, :cond_2

    .line 474
    iput v9, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    iput v9, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 476
    :cond_2
    iget v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    if-lez v7, :cond_8

    .line 477
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    int-to-double v7, v7

    int-to-double v9, v3

    mul-double/2addr v7, v9

    iget v9, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v10, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    add-int/2addr v9, v10

    int-to-double v9, v9

    div-double v1, v7, v9

    .line 479
    .local v1, "newWidthItems":D
    double-to-int v7, v1

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 480
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    sub-int v7, v3, v7

    iput v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 486
    .end local v1    # "newWidthItems":D
    .end local v3    # "pureWidth":I
    :cond_3
    :goto_2
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-lez v7, :cond_4

    .line 487
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v7, v8}, Lkankan/wheel/widget/WheelView;->createLayouts(II)V

    .line 490
    :cond_4
    return v6

    .line 442
    .end local v4    # "recalculate":Z
    :cond_5
    iput v9, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    goto :goto_0

    .line 456
    .restart local v4    # "recalculate":Z
    :cond_6
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v7, 0x14

    .line 457
    iget v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    if-lez v7, :cond_7

    .line 458
    add-int/lit8 v6, v6, 0x8

    .line 462
    :cond_7
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 464
    const/high16 v7, -0x80000000

    if-ne p2, v7, :cond_1

    if-ge p1, v6, :cond_1

    .line 465
    move v6, p1

    .line 466
    const/4 v4, 0x1

    goto :goto_1

    .line 482
    .restart local v3    # "pureWidth":I
    :cond_8
    add-int/lit8 v7, v3, 0x8

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    goto :goto_2
.end method

.method private createLayouts(II)V
    .locals 15
    .param p1, "widthItems"    # I
    .param p2, "widthLabel"    # I

    .prologue
    .line 499
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_6

    .line 500
    :cond_0
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->buildText()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 502
    const-string v2, ""

    .line 504
    :cond_1
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v6

    int-to-float v9, v6

    const/4 v10, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move/from16 v6, p1

    move/from16 v12, p1

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 511
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_b

    .line 512
    :cond_2
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    iget v3, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-interface {v1, v3}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    .restart local v2    # "text":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/text/StaticLayout;

    if-eqz v2, :cond_8

    move-object v4, v2

    :goto_3
    const/4 v5, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    :goto_4
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_a

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_5
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v1

    int-to-float v11, v1

    const/4 v12, 0x0

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move/from16 v8, p1

    move/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v3, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 522
    .end local v2    # "text":Ljava/lang/String;
    :goto_6
    if-lez p2, :cond_4

    .line 523
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p2

    if-le v1, v0, :cond_c

    .line 524
    :cond_3
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v1

    int-to-float v9, v1

    const/4 v10, 0x0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 531
    :cond_4
    :goto_7
    return-void

    .line 504
    .restart local v2    # "text":Ljava/lang/String;
    :cond_5
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 508
    .end local v2    # "text":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_1

    .line 512
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 513
    .restart local v2    # "text":Ljava/lang/String;
    :cond_8
    const-string v4, ""

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 519
    .end local v2    # "text":Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_6

    .line 528
    :cond_c
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_7
.end method

.method private dipToInt(F)I
    .locals 2
    .param p1, "dips"    # F

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 635
    iget-boolean v2, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    if-nez v2, :cond_0

    .line 642
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 639
    .local v0, "center":I
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 640
    .local v1, "offset":I
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 626
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 627
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 628
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 588
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 590
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 592
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 600
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/high16 v1, -0x20000000

    :goto_0
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 601
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 603
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 604
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 607
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 609
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 611
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 615
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 616
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 617
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 619
    return-void

    .line 600
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_0
.end method

.method private getAdditionalItemHeight()I
    .locals 4

    .prologue
    .line 685
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 354
    .local v1, "linecount":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemOffset()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 358
    .local v0, "desired":I
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 360
    goto :goto_0
.end method

.method private getItemOffset()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private getMaxTextLength()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 403
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 404
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v6

    .line 408
    :cond_1
    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getMaximumLength()I

    move-result v1

    .line 409
    .local v1, "adapterLength":I
    if-lez v1, :cond_2

    move v6, v1

    .line 410
    goto :goto_0

    .line 413
    :cond_2
    const/4 v4, 0x0

    .line 414
    .local v4, "maxText":Ljava/lang/String;
    iget v7, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v2, v7, 0x2

    .line 415
    .local v2, "addItems":I
    iget v7, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 416
    .local v3, "i":I
    :goto_1
    iget v7, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    add-int/2addr v7, v8

    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 417
    invoke-interface {v0, v3}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 419
    :cond_3
    move-object v4, v5

    .line 416
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 423
    .end local v5    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0
.end method

.method private getWheelBackground()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 334
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#DDDDDD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v6, "#FF333333"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    .line 335
    .local v7, "item0":Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "#AAAAAA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#AAAAAA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    .line 336
    .local v8, "item1":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    aput-object v8, v1, v10

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 337
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v9}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v2

    invoke-direct {p0, v5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v3

    invoke-direct {p0, v9}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v4

    invoke-direct {p0, v5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v5

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 338
    return-object v0
.end method

.method private getWheelValDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 328
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v0, "#70222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#70222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v0, "#70EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v0, "#70333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method private initResourcesIfNecessary()V
    .locals 6

    .prologue
    const/high16 v1, -0x1000000

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 259
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 260
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v0, v4, :cond_5

    .line 261
    new-instance v0, Landroid/text/TextPaint;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 267
    :goto_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 273
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v0, v4, :cond_7

    .line 274
    new-instance v0, Landroid/text/TextPaint;

    const/16 v2, 0x25

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    .line 281
    :goto_2
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 282
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 283
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 284
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    if-ne v2, v3, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 287
    :cond_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 288
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getWheelValDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    :cond_2
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 292
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 295
    :cond_3
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 296
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 300
    :cond_4
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getWheelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void

    .line 264
    :cond_5
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    goto :goto_0

    .line 269
    :cond_6
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_1

    .line 277
    :cond_7
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 284
    :cond_8
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_3
.end method

.method private makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "startColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "endColor"    # I

    .prologue
    .line 321
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 v2, 0x1

    aput p3, v0, v2

    const/4 v2, 0x2

    aput p4, v0, v2

    .line 322
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 323
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    return-object v1
.end method

.method private makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "startColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "endColor"    # I
    .param p5, "strokeDips"    # F
    .param p6, "strokeColor"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 314
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0, p5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v1

    invoke-virtual {v0, v1, p6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 315
    return-object v0
.end method

.method private resetTextPainters()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    const/4 v4, 0x2

    new-array v3, v4, [Landroid/text/TextPaint;

    const/4 v4, 0x0

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    aput-object v5, v3, v4

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    aput-object v4, v3, v6

    .line 237
    .local v3, "painters":[Landroid/text/TextPaint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 238
    aget-object v2, v3, v1

    .line 239
    .local v2, "painter":Landroid/text/TextPaint;
    if-eqz v2, :cond_2

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "flags":I
    iget v4, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v4, v6, :cond_0

    .line 242
    or-int/lit8 v0, v0, 0x20

    .line 244
    :cond_0
    if-ne v1, v6, :cond_1

    .line 245
    or-int/lit8 v0, v0, 0x4

    .line 247
    :cond_1
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 248
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const/high16 v4, -0x1000000

    :goto_1
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 250
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 237
    .end local v0    # "flags":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .restart local v0    # "flags":I
    :cond_3
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_1

    .line 253
    .end local v0    # "flags":I
    .end local v2    # "painter":Landroid/text/TextPaint;
    :cond_4
    return-void
.end method


# virtual methods
.method public fullLayoutReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 696
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 697
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->requestLayout()V

    .line 698
    return-void
.end method

.method public getAdapter()Lkankan/wheel/widget/WheelAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSelectionIndicator()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceWeight()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    return v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 560
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 561
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    .line 568
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 570
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-lez v0, :cond_1

    .line 571
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 573
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemOffset()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 575
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 576
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 579
    :cond_1
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 580
    return-void

    .line 564
    :cond_2
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->createLayouts(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 535
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 536
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 537
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 538
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 540
    .local v2, "heightSize":I
    invoke-direct {p0, v5, v4}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 543
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 544
    move v0, v2

    .line 553
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lkankan/wheel/widget/WheelView;->setMeasuredDimension(II)V

    .line 554
    return-void

    .line 546
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v6}, Lkankan/wheel/widget/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    .line 548
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 549
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 646
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 647
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    if-nez v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v6

    .line 651
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 653
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    goto :goto_0

    .line 657
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    sub-float v2, v4, v5

    .line 658
    .local v2, "delta":F
    iget v4, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 659
    .local v1, "count":I
    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v3, v4, v1

    .line 660
    .local v3, "pos":I
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 661
    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 662
    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq v3, v4, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    .line 664
    invoke-virtual {p0, v3}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Lkankan/wheel/widget/WheelAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lkankan/wheel/widget/WheelAdapter;

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 163
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 164
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 165
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 166
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq p1, v0, :cond_0

    .line 224
    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 225
    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 226
    iput p1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 227
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 228
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    invoke-interface {v0, p0, p1}, Lkankan/wheel/widget/WheelView$OnItemSelectedListener;->onItemSelected(Lkankan/wheel/widget/WheelView;I)V

    .line 232
    :cond_0
    return-void
.end method

.method public setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    .prologue
    .line 680
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    .line 681
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 205
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 206
    return-void
.end method

.method public setShowSelectionIndicator(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 751
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 752
    .local v0, "oldval":Z
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 753
    if-eq v0, p1, :cond_0

    .line 754
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 756
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 716
    iput p1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 717
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 718
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 719
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 702
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 703
    .local v0, "orig":I
    iput p1, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 704
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    if-eq v0, v1, :cond_0

    .line 705
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 707
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 723
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 724
    .local v0, "old":Landroid/graphics/Typeface;
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 728
    :cond_0
    return-void
.end method

.method public setTypefaceWeight(I)V
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 737
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 738
    .local v0, "old":I
    iput p1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 739
    if-eq v0, p1, :cond_0

    .line 740
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 742
    :cond_0
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 184
    iput p1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 185
    return-void
.end method
