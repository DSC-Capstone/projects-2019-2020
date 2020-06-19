.class public Lorg/appcelerator/titanium/util/TiUIHelper;
.super Ljava/lang/Object;
.source "TiUIHelper.java"


# static fields
.field private static final DBG:Z

.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final LANDSCAPE_LEFT:I = 0x3

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field private static final LCAT:Ljava/lang/String; = "TiUIHelper"

.field public static final PORTRAIT:I = 0x1

.field public static final SIZED_VALUE:Ljava/util/regex/Pattern;

.field public static final UNKNOWN:I = 0x7

.field public static final UPSIDE_PORTRAIT:I = 0x2

.field private static final customFontPath:Ljava/lang/String; = "Resources/fonts"

.field private static mCustomTypeFaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static overridePendingTransition:Ljava/lang/reflect/Method;

.field private static resourceImageKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    .line 90
    const-string v0, "([0-9]*\\.?[0-9]+)\\W*(px|dp|dip|sp|sip|mm|pt|in)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 14
    .param p0, "image"    # Ljava/lang/String;
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "selectedImage"    # Ljava/lang/String;
    .param p3, "selectedColor"    # Ljava/lang/String;
    .param p4, "disabledImage"    # Ljava/lang/String;
    .param p5, "disabledColor"    # Ljava/lang/String;
    .param p6, "focusedImage"    # Ljava/lang/String;
    .param p7, "focusedColor"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v6, 0x0

    .line 451
    .local v6, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x0

    .line 452
    .local v3, "bgDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 453
    .local v5, "bgSelectedDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 454
    .local v4, "bgFocusedDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 456
    .local v2, "bgDisabledDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 457
    .local v1, "appContext":Landroid/content/Context;
    new-instance v11, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-direct {v11, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 459
    .local v11, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    if-eqz p0, :cond_9

    .line 460
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 465
    :cond_0
    :goto_0
    if-eqz p2, :cond_a

    .line 466
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 477
    :cond_1
    :goto_1
    if-eqz p6, :cond_d

    .line 478
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v11, v0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 489
    :cond_2
    :goto_2
    if-eqz p4, :cond_10

    .line 490
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 501
    :cond_3
    :goto_3
    if-nez v3, :cond_4

    if-nez v5, :cond_4

    if-nez v4, :cond_4

    if-eqz v2, :cond_8

    .line 502
    :cond_4
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    .end local v6    # "sld":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 504
    .restart local v6    # "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v2, :cond_5

    .line 505
    const/4 v12, 0x1

    new-array v10, v12, [I

    const/4 v12, 0x0

    const v13, -0x101009e

    aput v13, v10, v12

    .line 508
    .local v10, "stateSet":[I
    invoke-virtual {v6, v10, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 511
    .end local v10    # "stateSet":[I
    :cond_5
    if-eqz v4, :cond_6

    .line 512
    const/4 v12, 0x3

    new-array v7, v12, [I

    fill-array-data v7, :array_0

    .line 517
    .local v7, "ss":[I
    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 520
    .end local v7    # "ss":[I
    :cond_6
    if-eqz v5, :cond_7

    .line 521
    const/4 v12, 0x3

    new-array v7, v12, [I

    fill-array-data v7, :array_1

    .line 526
    .restart local v7    # "ss":[I
    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 529
    const/4 v12, 0x4

    new-array v8, v12, [I

    fill-array-data v8, :array_2

    .line 535
    .local v8, "ss1":[I
    invoke-virtual {v6, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 541
    .end local v7    # "ss":[I
    .end local v8    # "ss1":[I
    :cond_7
    if-eqz v3, :cond_8

    .line 542
    const/4 v12, 0x2

    new-array v8, v12, [I

    fill-array-data v8, :array_3

    .line 546
    .restart local v8    # "ss1":[I
    invoke-virtual {v6, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 547
    const/4 v12, 0x1

    new-array v9, v12, [I

    const/4 v12, 0x0

    const v13, 0x101009e

    aput v13, v9, v12

    .line 548
    .local v9, "ss2":[I
    invoke-virtual {v6, v9, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 552
    .end local v8    # "ss1":[I
    .end local v9    # "ss2":[I
    :cond_8
    return-object v6

    .line 461
    :cond_9
    if-eqz p1, :cond_0

    .line 462
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v3, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v3    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 467
    :cond_a
    if-eqz p3, :cond_b

    .line 468
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .end local v5    # "bgSelectedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v5, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v5    # "bgSelectedDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 470
    :cond_b
    if-eqz p0, :cond_c

    .line 471
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_1

    .line 472
    :cond_c
    if-eqz p1, :cond_1

    .line 473
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .end local v5    # "bgSelectedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v5, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v5    # "bgSelectedDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 479
    :cond_d
    if-eqz p7, :cond_e

    .line 480
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "bgFocusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p7 .. p7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v4, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v4    # "bgFocusedDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 482
    :cond_e
    if-eqz p0, :cond_f

    .line 483
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_2

    .line 484
    :cond_f
    if-eqz p1, :cond_2

    .line 485
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .end local v4    # "bgFocusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v4, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v4    # "bgFocusedDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 491
    :cond_10
    if-eqz p5, :cond_11

    .line 492
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "bgDisabledDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p5 .. p5}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v2, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "bgDisabledDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 494
    :cond_11
    if-eqz p0, :cond_12

    .line 495
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 496
    :cond_12
    if-eqz p1, :cond_3

    .line 497
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "bgDisabledDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v2, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "bgDisabledDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 512
    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
    .end array-data

    .line 521
    :array_1
    .array-data 4
        0x101009d
        0x101009e
        0x10100a7
    .end array-data

    .line 529
    :array_2
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
        0x10100a7
    .end array-data

    .line 542
    :array_3
    .array-data 4
        0x101009d
        0x101009e
    .end array-data
.end method

.method public static createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x1

    .line 651
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 652
    .local v3, "pad":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 653
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 654
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4, v5, p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 662
    :goto_0
    return-object v0

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "TiUIHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;
    .locals 4
    .param p0, "opacity"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 828
    const/16 v1, 0x14

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput p0, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    .line 835
    .local v0, "matrix":[F
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 557
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 558
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v2, "width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v2, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 564
    .local v0, "cropRect":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v2, "width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v2, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-object v1
.end method

.method public static createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$1;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$1;-><init>()V

    return-object v0
.end method

.method public static createFinishListener(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "me"    # Landroid/app/Activity;

    .prologue
    .line 113
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createKillListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$2;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$2;-><init>()V

    return-object v0
.end method

.method public static doKillOrContinueDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 121
    if-nez p3, :cond_0

    .line 122
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p3

    .line 124
    :cond_0
    if-nez p4, :cond_1

    .line 125
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createKillListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p4

    .line 128
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Kill"

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void
.end method

.method public static doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance p2, Lorg/appcelerator/titanium/util/TiUIHelper$5;

    .end local p2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p2}, Lorg/appcelerator/titanium/util/TiUIHelper$5;-><init>()V

    .line 172
    .restart local p2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    move-object v0, p2

    .line 173
    .local v0, "fListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lorg/appcelerator/titanium/util/TiUIHelper$6;

    invoke-direct {v1, p0, p1, v0}, Lorg/appcelerator/titanium/util/TiUIHelper$6;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    .line 192
    return-void
.end method

.method public static getDefaultFontSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    const-string v0, "15.0px"

    .line 359
    .local v0, "size":Ljava/lang/String;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v1, 0x0

    .line 365
    :cond_0
    return-object v0
.end method

.method public static getDefaultFontWeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string v0, "normal"

    .line 370
    .local v0, "style":Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 371
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 373
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const-string v0, "bold"

    .line 378
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :cond_0
    return-object v0
.end method

.method public static getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p0, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 576
    if-eqz p0, :cond_0

    .line 577
    const-string v1, "media"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "media"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 579
    .local v0, "media":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 580
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .line 584
    .end local v0    # "media":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRawDIPSize(FLandroid/content/Context;)F
    .locals 1
    .param p0, "size"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getRawSize(IFLandroid/content/Context;)F
    .locals 2
    .param p0, "unit"    # I
    .param p1, "size"    # F
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    .local v0, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 259
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public static getRawSize(Ljava/lang/String;Landroid/content/Context;)F
    .locals 2
    .param p0, "size"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getResourceBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "res_id"    # I

    .prologue
    const/4 v3, 0x1

    .line 737
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 738
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 739
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 741
    const/4 v0, 0x0

    .line 743
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 747
    :goto_0
    return-object v0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getResourceBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 728
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 729
    const/4 v1, 0x0

    .line 731
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res_id"    # I

    .prologue
    .line 782
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "path"    # Ljava/lang/Object;

    .prologue
    .line 789
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 790
    new-instance v1, Lorg/appcelerator/titanium/util/TiUrl;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 791
    .local v1, "imageUrl":Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v2, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 792
    .local v2, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 797
    .end local v1    # "imageUrl":Lorg/appcelerator/titanium/util/TiUrl;
    .end local v2    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 794
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->loadFastDevDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 768
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 777
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 772
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 773
    .local v1, "id":I
    if-nez v1, :cond_1

    .line 774
    const/4 v0, 0x0

    goto :goto_0

    .line 777
    :cond_1
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 709
    const-string v3, "Resources/images/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v2

    .line 713
    :cond_1
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 719
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;Z)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    goto :goto_0
.end method

.method private static getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 667
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 668
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 704
    :cond_0
    :goto_0
    return-object v8

    .line 671
    :cond_1
    const-string v9, "^.*/Resources/images/(.*$)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 672
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 673
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 677
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "chopped":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 683
    move-object v2, v0

    .line 684
    .local v2, "forHash":Ljava/lang/String;
    const-string v8, ".9.png"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 685
    const-string v8, ".9.png"

    const-string v9, ".png"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 687
    :cond_2
    move-object v7, v0

    .line 689
    .local v7, "withoutExtension":Ljava/lang/String;
    const-string v8, "^.*\\..*$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 690
    const-string v8, ".9.png"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 691
    const-string v8, ".9.png"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 697
    :cond_3
    :goto_1
    const-string v8, "[^a-z0-9_]"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "cleanedWithoutExtension":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 699
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x50

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "sResult":Ljava/lang/String;
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    .line 704
    goto/16 :goto_0

    .line 693
    .end local v1    # "cleanedWithoutExtension":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/StringBuilder;
    .end local v6    # "sResult":Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getSize(Ljava/lang/String;)F
    .locals 4
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 243
    const/high16 v1, 0x41700000    # 15.0f

    .line 244
    .local v1, "value":F
    if-eqz p0, :cond_0

    .line 245
    sget-object v2, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 246
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 251
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return v1
.end method

.method public static getSizeUnits(Ljava/lang/String;)I
    .locals 6
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "units":I
    if-eqz p0, :cond_0

    .line 209
    sget-object v3, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 210
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 212
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "unit":Ljava/lang/String;
    const-string v3, "px"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const/4 v2, 0x0

    .line 239
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "unit":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 215
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "unit":Ljava/lang/String;
    :cond_1
    const-string v3, "pt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    const/4 v2, 0x3

    goto :goto_0

    .line 217
    :cond_2
    const-string v3, "dp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "dip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 219
    :cond_4
    const-string v3, "sp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 220
    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    .line 221
    :cond_6
    const-string v3, "pt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    const/4 v2, 0x3

    goto :goto_0

    .line 223
    :cond_7
    const-string v3, "mm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 224
    const/4 v2, 0x5

    goto :goto_0

    .line 225
    :cond_8
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 226
    const/4 v2, 0x4

    goto :goto_0

    .line 228
    :cond_9
    sget-boolean v3, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v3, :cond_0

    .line 229
    if-eqz v1, :cond_0

    .line 230
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadFastDevDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 753
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v3

    .line 754
    .local v3, "tbf":Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 755
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "tbf":Lorg/appcelerator/titanium/io/TiBaseFile;
    :goto_0
    return-object v0

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TiUIHelper"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 329
    if-nez p0, :cond_0

    .line 354
    :goto_0
    return-object v8

    .line 332
    :cond_0
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 333
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 337
    .local v6, "mgr":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v9, "Resources/fonts"

    invoke-virtual {v6, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "fontFiles":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 339
    .local v2, "f":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    if-eq v9, v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 340
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resources/fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 341
    .local v7, "tf":Landroid/graphics/Typeface;
    sget-object v10, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :try_start_1
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    monitor-exit v10

    move-object v8, v7

    .line 344
    goto :goto_0

    .line 343
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "f":Ljava/lang/String;
    .end local v3    # "fontFiles":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tf":Landroid/graphics/Typeface;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v9, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v9, :cond_3

    .line 349
    const-string v9, "TiUIHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load \'fonts\' assets. Perhaps doesn\'t exist? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 338
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "f":Ljava/lang/String;
    .restart local v3    # "fontFiles":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static overridePendingTransition(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 802
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 808
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 815
    :cond_2
    :goto_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 817
    :try_start_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called incorrectly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "TiUIHelper"

    const-string v2, "Activity.overridePendingTransition() not found"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 820
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V
    .locals 4
    .param p0, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "focusState":I
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 858
    :cond_0
    if-lez v0, :cond_1

    .line 859
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 860
    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 861
    :cond_2
    if-ne v0, v2, :cond_3

    .line 862
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    goto :goto_0

    .line 864
    :cond_3
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown onFocus state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static runUiDelayed(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 895
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$7;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$7;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 912
    return-void
.end method

.method public static runUiDelayedIfBlock(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 921
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->runUiDelayed(Ljava/lang/Runnable;)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "textAlign"    # Ljava/lang/String;
    .param p2, "verticalAlign"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "gravity":I
    if-eqz p1, :cond_5

    .line 386
    const-string v1, "left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    or-int/lit8 v0, v0, 0x3

    .line 408
    :cond_0
    :goto_0
    if-eqz p2, :cond_a

    .line 409
    const-string v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 410
    or-int/lit8 v0, v0, 0x30

    .line 430
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 431
    return-void

    .line 388
    :cond_2
    const-string v1, "center"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_3
    const-string v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    or-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 393
    :cond_4
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported horizontal alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_5
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v1, :cond_6

    .line 399
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No alignment set - old horiz align was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 411
    :cond_7
    const-string v1, "middle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 413
    :cond_8
    const-string v1, "bottom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 414
    or-int/lit8 v0, v0, 0x50

    goto :goto_1

    .line 416
    :cond_9
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported vertical alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 421
    :cond_a
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v1, :cond_b

    .line 422
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No alignment set - old vert align was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    goto/16 :goto_1
.end method

.method public static setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "opacity"    # F

    .prologue
    .line 839
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 840
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    if-eqz p0, :cond_1

    .line 842
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public static setPaintOpacity(Landroid/graphics/Paint;F)V
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "opacity"    # F

    .prologue
    .line 847
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 848
    return-void
.end method

.method public static setTextViewDIPPadding(Landroid/widget/TextView;II)V
    .locals 4
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "horizontalPadding"    # I
    .param p2, "verticalPadding"    # I

    .prologue
    .line 434
    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v0, v2

    .line 435
    .local v0, "rawHPadding":I
    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v1, v2

    .line 436
    .local v1, "rawVPadding":I
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 437
    return-void
.end method

.method public static showSoftKeyboard(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 873
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    .line 874
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_4

    :cond_0
    move v2, v4

    .line 875
    .local v2, "useForce":Z
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "model":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "droid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    const/4 v2, 0x1

    .line 880
    :cond_1
    if-eqz p1, :cond_5

    .line 881
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    :cond_2
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 886
    .end local v1    # "model":Ljava/lang/String;
    .end local v2    # "useForce":Z
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v3

    .line 874
    goto :goto_0

    .line 883
    .restart local v1    # "model":Ljava/lang/String;
    .restart local v2    # "useForce":Z
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v0, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontSize"    # Ljava/lang/String;
    .param p3, "fontWeight"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 291
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 292
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 293
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    return-void
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 274
    .local v1, "fontSize":Ljava/lang/String;
    const/4 v2, 0x0

    .line 275
    .local v2, "fontWeight":Ljava/lang/String;
    const/4 v0, 0x0

    .line 277
    .local v0, "fontFamily":Ljava/lang/String;
    const-string v3, "fontSize"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    const-string v3, "fontSize"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_0
    const-string v3, "fontWeight"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    const-string v3, "fontWeight"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_1
    const-string v3, "fontFamily"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    const-string v3, "fontFamily"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_2
    invoke-static {p0, v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 298
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 300
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 301
    const-string v2, "monospace"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 321
    :cond_0
    :goto_0
    return-object v1

    .line 303
    :cond_1
    const-string v2, "serif"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 305
    :cond_2
    const-string v2, "sans-serif"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 308
    :cond_3
    const/4 v0, 0x0

    .line 309
    .local v0, "loadedTf":Landroid/graphics/Typeface;
    if-eqz p0, :cond_4

    .line 310
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->loadTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 312
    :cond_4
    if-nez v0, :cond_5

    .line 313
    sget-boolean v2, Lorg/appcelerator/titanium/util/TiUIHelper;->DBG:Z

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "TiUIHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported font: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' supported fonts are \'monospace\', \'serif\', \'sans-serif\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static toTypefaceStyle(Ljava/lang/String;)I
    .locals 2
    .param p0, "fontWeight"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "style":I
    if-eqz p0, :cond_0

    .line 197
    const-string v1, "bold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method

.method public static viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;
    .locals 12
    .param p0, "proxyDict"    # Lorg/appcelerator/kroll/KrollDict;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 589
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 591
    .local v5, "image":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_6

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 593
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 596
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-nez v8, :cond_0

    .line 597
    if-eqz p0, :cond_0

    .line 598
    const-string v8, "width"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 599
    new-instance v7, Lorg/appcelerator/titanium/TiDimension;

    const-string v8, "width"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 600
    .local v7, "widthDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v7, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    .line 604
    .end local v7    # "widthDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    if-nez v8, :cond_1

    .line 605
    if-eqz p0, :cond_1

    .line 606
    const-string v8, "height"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 607
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    const-string v8, "height"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-direct {v4, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 608
    .local v4, "heightDimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v4, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    .line 612
    .end local v4    # "heightDimension":Lorg/appcelerator/titanium/TiDimension;
    :cond_1
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_2

    .line 614
    const-string v8, "TiUIHelper"

    const-string v9, "view does not have parent, calling layout"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p1, v10, v10, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 619
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 623
    if-nez v6, :cond_3

    .line 624
    const/16 v6, 0x64

    .line 625
    const-string v8, "TiUIHelper"

    const-string v9, "width property is 0 for view, display view before calling toImage()"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    if-nez v3, :cond_4

    .line 628
    const/16 v3, 0x64

    .line 629
    const-string v8, "TiUIHelper"

    const-string v9, "height property is 0 for view, display view before calling toImage()"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 635
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 637
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 638
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 639
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v6, v3, v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    .line 642
    :cond_5
    const/4 v2, 0x0

    .line 643
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v6    # "width":I
    :cond_6
    return-object v5
.end method

.method public static waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
    .locals 4
    .param p0, "l"    # Lorg/appcelerator/kroll/common/CurrentActivityListener;

    .prologue
    .line 139
    invoke-static {}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getWaitingForOpen()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    .line 140
    .local v2, "waitingForOpen":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-eqz v2, :cond_1

    .line 141
    new-instance v3, Lorg/appcelerator/titanium/util/TiUIHelper$4;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$4;-><init>(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setPostOpenListener(Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 154
    .local v1, "app":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 155
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p0, v0}, Lorg/appcelerator/kroll/common/CurrentActivityListener;->onCurrentActivityReady(Landroid/app/Activity;)V

    goto :goto_0
.end method
