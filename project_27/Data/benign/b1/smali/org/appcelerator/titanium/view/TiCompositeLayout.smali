.class public Lorg/appcelerator/titanium/view/TiCompositeLayout;
.super Landroid/view/ViewGroup;
.source "TiCompositeLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;,
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field public static final NOT_SET:I = -0x80000000

.field protected static final TAG:Ljava/lang/String; = "TiCompositeLayout"


# instance fields
.field protected arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field private disableHorizontalWrap:Z

.field private horizontalLayoutCurrentLeft:I

.field private horizontalLayoutLineHeight:I

.field private horizontalLayoutTopBuffer:I

.field private needsSort:Z

.field private viewSorter:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 40
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 41
    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 51
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;-><init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 97
    invoke-virtual {p0, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 98
    return-void
.end method

.method private computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[I)V
    .locals 11
    .param p1, "params"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .param p2, "measuredWidth"    # I
    .param p3, "measuredHeight"    # I
    .param p4, "layoutRight"    # I
    .param p5, "layoutTop"    # I
    .param p6, "layoutBottom"    # I
    .param p7, "hpos"    # [I
    .param p8, "vpos"    # [I

    .prologue
    .line 437
    iget-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 438
    .local v9, "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    iget v8, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 439
    .local v8, "left":I
    if-eqz v9, :cond_0

    .line 440
    invoke-virtual {v9, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    add-int/2addr v8, v0

    .line 442
    :cond_0
    add-int v10, v8, p2

    .line 443
    .local v10, "right":I
    if-le v10, p4, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    if-nez v0, :cond_1

    .line 445
    const/4 v8, 0x0

    .line 446
    move v10, p2

    .line 447
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 450
    :cond_1
    const/4 v0, 0x0

    aput v8, p7, v0

    .line 451
    const/4 v0, 0x1

    aput v10, p7, v0

    .line 452
    iput v10, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 454
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    iget-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    iget-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object v0, p0

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 455
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    const/4 v1, 0x1

    aget v1, p8, v1

    const/4 v2, 0x0

    aget v2, p8, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 457
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, p8, v1

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v1, v2

    aput v1, p8, v0

    .line 458
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, p8, v1

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v1, v2

    aput v1, p8, v0

    .line 459
    return-void
.end method

.method public static computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 8
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "option0"    # Lorg/appcelerator/titanium/TiDimension;
    .param p2, "optionCenter"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "option1"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "measuredSize"    # I
    .param p5, "layoutPosition0"    # I
    .param p6, "layoutPosition1"    # I
    .param p7, "pos"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 396
    sub-int v0, p6, p5

    .line 397
    .local v0, "dist":I
    if-eqz p2, :cond_0

    .line 398
    div-int/lit8 v1, p4, 0x2

    .line 399
    .local v1, "halfSize":I
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, p5

    sub-int/2addr v5, v1

    aput v5, p7, v6

    .line 400
    aget v5, p7, v6

    add-int/2addr v5, p4

    aput v5, p7, v7

    .line 421
    .end local v1    # "halfSize":I
    :goto_0
    return-void

    .line 401
    :cond_0
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    .line 403
    sub-int v5, v0, p4

    div-int/lit8 v2, v5, 0x2

    .line 404
    .local v2, "offset":I
    add-int v5, p5, v2

    aput v5, p7, v6

    .line 405
    aget v5, p7, v6

    add-int/2addr v5, p4

    aput v5, p7, v7

    goto :goto_0

    .line 406
    .end local v2    # "offset":I
    :cond_1
    if-nez p1, :cond_2

    .line 408
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    .line 409
    .local v4, "option1Pixels":I
    sub-int v5, v0, v4

    sub-int/2addr v5, p4

    aput v5, p7, v6

    .line 410
    sub-int v5, v0, v4

    aput v5, p7, v7

    goto :goto_0

    .line 411
    .end local v4    # "option1Pixels":I
    :cond_2
    if-nez p3, :cond_3

    .line 413
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    .line 414
    .local v3, "option0Pixels":I
    add-int v5, p5, v3

    aput v5, p7, v6

    .line 415
    add-int v5, p5, v3

    add-int/2addr v5, p4

    aput v5, p7, v7

    goto :goto_0

    .line 418
    .end local v3    # "option0Pixels":I
    :cond_3
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, p5

    aput v5, p7, v6

    .line 419
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p6, v5

    aput v5, p7, v7

    goto :goto_0
.end method

.method private computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 3
    .param p1, "currentHeight"    # I
    .param p2, "optionTop"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "optionBottom"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "measuredHeight"    # I
    .param p5, "layoutTop"    # I
    .param p6, "layoutBottom"    # I
    .param p7, "pos"    # [I

    .prologue
    .line 426
    add-int v1, p5, p1

    .line 427
    .local v1, "top":I
    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 430
    :cond_0
    add-int v0, v1, p4

    .line 431
    .local v0, "bottom":I
    const/4 v2, 0x0

    aput v1, p7, v2

    .line 432
    const/4 v2, 0x1

    aput v0, p7, v2

    .line 433
    return-void
.end method

.method private viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 136
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return v0
.end method

.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "wMode"    # I
    .param p4, "height"    # I
    .param p5, "hMode"    # I

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 259
    .local v3, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v0, -0x2

    .line 260
    .local v0, "childDimension":I
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez p2, :cond_2

    .line 262
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    int-to-double v8, p2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 271
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v4

    .line 272
    .local v4, "widthPadding":I
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v6, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 274
    .local v5, "widthSpec":I
    const/4 v0, -0x2

    .line 275
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_5

    .line 276
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v6

    if-eqz v6, :cond_4

    if-lez p4, :cond_4

    .line 277
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    int-to-double v8, p4

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 287
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v1

    .line 288
    .local v1, "heightPadding":I
    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v6, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 290
    .local v2, "heightSpec":I
    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 294
    return-void

    .line 264
    .end local v1    # "heightPadding":I
    .end local v2    # "heightSpec":I
    .end local v4    # "widthPadding":I
    .end local v5    # "widthSpec":I
    :cond_2
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 267
    :cond_3
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 268
    const/4 v0, -0x1

    goto :goto_0

    .line 279
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widthSpec":I
    :cond_4
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v6, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 282
    :cond_5
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 144
    .local v0, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 145
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 146
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 147
    iput-object v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 148
    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 149
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 150
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 151
    return-object v0
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 466
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method protected getMeasuredHeight(II)I
    .locals 1
    .param p1, "maxHeight"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 303
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getMeasuredWidth(II)I
    .locals 1
    .param p1, "maxWidth"    # I
    .param p2, "widthSpec"    # I

    .prologue
    .line 298
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getViewHeightPadding(Landroid/view/View;I)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentHeight"    # I

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 178
    .local v0, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 179
    .local v1, "padding":I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 186
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 193
    :cond_1
    :goto_1
    return v1

    .line 183
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getViewWidthPadding(Landroid/view/View;I)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidth"    # I

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 157
    .local v0, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 158
    .local v1, "padding":I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 165
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 172
    :cond_1
    :goto_1
    return v1

    .line 162
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 169
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 462
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method protected isDefaultArrangement()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHorizontalArrangement()Z
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalArrangement()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 122
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 123
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 129
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 36
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v27

    .line 311
    .local v27, "count":I
    const/16 v17, 0x0

    .line 312
    .local v17, "left":I
    const/4 v8, 0x0

    .line 313
    .local v8, "top":I
    sub-int v7, p4, p2

    .line 314
    .local v7, "right":I
    sub-int v9, p5, p3

    .line 316
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    if-eqz v3, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 318
    const/4 v3, 0x1

    move/from16 v0, v27

    if-le v0, v3, :cond_1

    .line 319
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 321
    .local v26, "child":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 323
    .local v4, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    move/from16 v0, v29

    iput v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 327
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v26    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->detachAllViewsFromParent()V

    .line 328
    const/16 v29, 0x0

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 330
    .restart local v26    # "child":Landroid/view/View;
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "i":I
    .local v30, "i":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move/from16 v29, v30

    .end local v30    # "i":I
    .restart local v29    # "i":I
    goto :goto_1

    .line 333
    .end local v26    # "child":Landroid/view/View;
    .end local v29    # "i":I
    .end local v31    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 337
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 339
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 340
    .local v10, "horizontal":[I
    const/4 v3, 0x2

    new-array v11, v3, [I

    .line 342
    .local v11, "vertical":[I
    const/16 v28, 0x0

    .line 344
    .local v28, "currentHeight":I
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 346
    .restart local v26    # "child":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 348
    .restart local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v12, 0x8

    if-eq v3, v12, :cond_7

    .line 351
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 352
    .local v5, "childMeasuredWidth":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 354
    .local v6, "childMeasuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 355
    if-nez v29, :cond_3

    .line 356
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 357
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    :cond_3
    move-object/from16 v3, p0

    .line 360
    invoke-direct/range {v3 .. v11}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[I)V

    .line 370
    :goto_3
    sget-boolean v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;->DBG:Z

    if-eqz v3, :cond_4

    .line 371
    const-string v3, "TiCompositeLayout"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " {"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_4
    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v12, 0x0

    aget v12, v10, v12

    sub-int v34, v3, v12

    .line 375
    .local v34, "newWidth":I
    const/4 v3, 0x1

    aget v3, v11, v3

    const/4 v12, 0x0

    aget v12, v11, v12

    sub-int v32, v3, v12

    .line 376
    .local v32, "newHeight":I
    move/from16 v0, v34

    if-ne v0, v5, :cond_5

    move/from16 v0, v32

    if-eq v0, v6, :cond_6

    .line 378
    :cond_5
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v34

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 379
    .local v35, "newWidthSpec":I
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 380
    .local v33, "newHeightSpec":I
    move-object/from16 v0, v26

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 382
    .end local v33    # "newHeightSpec":I
    .end local v35    # "newWidthSpec":I
    :cond_6
    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v12, 0x0

    aget v12, v11, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    const/4 v14, 0x1

    aget v14, v11, v14

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 384
    add-int v28, v28, v32

    .line 385
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_7

    .line 386
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v28, v28, v3

    .line 344
    .end local v5    # "childMeasuredWidth":I
    .end local v6    # "childMeasuredHeight":I
    .end local v32    # "newHeight":I
    .end local v34    # "newWidth":I
    :cond_7
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 362
    .restart local v5    # "childMeasuredWidth":I
    .restart local v6    # "childMeasuredHeight":I
    :cond_8
    iget-object v13, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    iget-object v14, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v12, p0

    move/from16 v16, v5

    move/from16 v18, v7

    move-object/from16 v19, v10

    invoke-static/range {v12 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 364
    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v20, v0

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v21, v0

    move-object/from16 v18, p0

    move/from16 v19, v28

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v11

    invoke-direct/range {v18 .. v25}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 366
    :cond_9
    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v19, v0

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v20, v0

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v21, v0

    move-object/from16 v18, p0

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v11

    invoke-static/range {v18 .. v25}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 390
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v5    # "childMeasuredWidth":I
    .end local v6    # "childMeasuredHeight":I
    .end local v26    # "child":Landroid/view/View;
    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v9

    .line 200
    .local v9, "childCount":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 201
    .local v19, "wFromSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 202
    .local v12, "hFromSpec":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v20

    .line 203
    .local v20, "wSuggested":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v13

    .line 204
    .local v13, "hSuggested":I
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 205
    .local v5, "w":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 206
    .local v6, "wMode":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 207
    .local v7, "h":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 209
    .local v8, "hMode":I
    const/16 v16, 0x0

    .line 210
    .local v16, "maxWidth":I
    const/4 v15, 0x0

    .line 212
    .local v15, "maxHeight":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_4

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 214
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v3, v0, :cond_0

    move-object/from16 v3, p0

    .line 215
    invoke-virtual/range {v3 .. v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 218
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 219
    .local v11, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 220
    .local v10, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v11, v3

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v10, v3

    .line 225
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    add-int v16, v16, v11

    .line 231
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    add-int/2addr v15, v10

    .line 212
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 228
    :cond_2
    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_1

    .line 234
    :cond_3
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_2

    .line 239
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "childWidth":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingRight()I

    move-result v21

    add-int v3, v3, v21

    add-int v16, v16, v3

    .line 240
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingBottom()I

    move-result v21

    add-int v3, v3, v21

    add-int/2addr v15, v3

    .line 248
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 249
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredWidth(II)I

    move-result v18

    .line 252
    .local v18, "measuredWidth":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight(II)I

    move-result v17

    .line 253
    .local v17, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMeasuredDimension(II)V

    .line 254
    return-void
.end method

.method public resort()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 116
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->requestLayout()V

    .line 117
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->invalidate()V

    .line 118
    return-void
.end method

.method public setDisableHorizontalWrap(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->disableHorizontalWrap:Z

    .line 524
    return-void
.end method

.method public setLayoutArrangement(Ljava/lang/String;)V
    .locals 1
    .param p1, "arrangementProperty"    # Ljava/lang/String;

    .prologue
    .line 512
    if-eqz p1, :cond_0

    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 519
    :goto_0
    return-void

    .line 514
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0

    .line 517
    :cond_1
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method
