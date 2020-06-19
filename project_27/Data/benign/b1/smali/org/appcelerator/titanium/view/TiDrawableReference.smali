.class public Lorg/appcelerator/titanium/view/TiDrawableReference;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;,
        Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "TiDrawableReference"

.field private static final UNKNOWN:I = -0x1

.field private static boundsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anyDensityFalse:Z

.field private blob:Lorg/appcelerator/titanium/TiBlob;

.field private file:Lorg/appcelerator/titanium/io/TiBaseFile;

.field private oomOccurred:Z

.field private resourceId:I

.field private softActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    .line 69
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v2, -0x1

    iput v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 77
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 78
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 84
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 85
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 94
    return-void

    .line 91
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method private calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 14
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p5, "parent"    # Landroid/view/View;

    .prologue
    .line 371
    new-instance v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 374
    .local v2, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    const/4 v3, -0x1

    .local v3, "containerHeight":I
    move v4, v3

    .local v4, "containerWidth":I
    move v9, v3

    .local v9, "parentHeight":I
    move v10, v3

    .local v10, "parentWidth":I
    move v5, v3

    .local v5, "destHeight":I
    move v6, v3

    .line 376
    .local v6, "destWidth":I
    const/4 v11, 0x0

    .line 377
    .local v11, "widthSpecified":Z
    const/4 v7, 0x0

    .line 379
    .local v7, "heightSpecified":Z
    if-eqz p5, :cond_0

    .line 380
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 381
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 385
    :cond_0
    if-eqz p3, :cond_6

    .line 386
    invoke-virtual/range {p3 .. p3}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 387
    move v4, p1

    .line 397
    :cond_1
    :goto_0
    if-gez v4, :cond_2

    .line 398
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container width for image. Defaulting to source width. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move v4, p1

    .line 403
    :cond_2
    if-eqz p4, :cond_8

    .line 404
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 405
    move/from16 v3, p2

    .line 416
    :cond_3
    :goto_1
    if-gez v3, :cond_4

    .line 417
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container height for image. Defaulting to source height. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move/from16 v3, p2

    .line 421
    :cond_4
    int-to-float v12, p1

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v8, v12, v13

    .line 423
    .local v8, "origAspectRatio":F
    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 424
    move v6, v4

    .line 425
    move v5, v3

    .line 442
    :goto_2
    iput v6, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 443
    iput v5, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 444
    return-object v2

    .line 389
    .end local v8    # "origAspectRatio":F
    :cond_5
    const/4 v11, 0x1

    .line 390
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    .line 393
    :cond_6
    if-ltz v10, :cond_1

    .line 394
    move v4, v10

    goto :goto_0

    .line 407
    :cond_7
    const/4 v7, 0x1

    .line 408
    invoke-virtual/range {p4 .. p5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 411
    :cond_8
    if-ltz v9, :cond_3

    .line 412
    move v3, v9

    goto :goto_1

    .line 426
    .restart local v8    # "origAspectRatio":F
    :cond_9
    if-eqz v11, :cond_a

    .line 427
    move v6, v4

    .line 428
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 429
    :cond_a
    if-eqz v7, :cond_b

    .line 430
    move v5, v3

    .line 431
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2

    .line 433
    :cond_b
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v8, v12

    if-lez v12, :cond_c

    .line 434
    move v6, v4

    .line 435
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 437
    :cond_c
    move v5, v3

    .line 438
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2
.end method

.method public static fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 132
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 133
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    .line 134
    return-object v0
.end method

.method public static fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dict"    # Ljava/util/HashMap;

    .prologue
    .line 168
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    const-string v1, "media"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/util/HashMap;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const-string v0, "TiDrawableReference"

    const-string v1, "Unknown drawable reference inside dictionary.  Expected key \'media\' to be a blob.  Returning null drawable reference"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;

    .prologue
    .line 161
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 162
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 163
    return-object v0
.end method

.method public static fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 199
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 187
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 188
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 190
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 191
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v0, :cond_3

    .line 192
    check-cast p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 193
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_4

    .line 194
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 196
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 198
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    const-string v0, "TiDrawableReference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Returning null drawable reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .prologue
    .line 125
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 126
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 127
    return-object v0
.end method

.method public static fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v1, p0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 145
    .local v1, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 152
    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 153
    iput v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 156
    .end local v0    # "id":I
    :cond_0
    return-object v1
.end method

.method public static fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    return-object v0
.end method

.method private getResourceDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    const/4 v0, 0x0

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    .line 280
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 281
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    if-lez v3, :cond_0

    .line 283
    :try_start_0
    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calcSampleSize(IIII)I
    .locals 2
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "destWidth"    # I
    .param p4, "destHeight"    # I

    .prologue
    .line 710
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 711
    :cond_0
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_1
    div-int v0, p1, p3

    div-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public calcSampleSize(Landroid/view/View;IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I
    .param p4, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p5, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 731
    const/4 v7, -0x1

    .local v7, "destHeight":I
    move v8, v7

    .local v8, "destWidth":I
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 732
    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v6

    .line 733
    .local v6, "destBounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v8, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 734
    iget v7, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 735
    invoke-virtual {p0, p2, p3, v8, v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    check-cast p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 239
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 240
    const-string v4, "TiDrawableReference"

    const-string v5, "Could not open stream to get bitmap"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 247
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 248
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 249
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 253
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 261
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 254
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 256
    const-string v4, "TiDrawableReference"

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

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 260
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v4

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 264
    :goto_2
    throw v4

    .line 262
    :catch_2
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "destWidth"    # I

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v3

    .line 357
    .local v3, "orig":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v5, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 358
    .local v5, "srcWidth":I
    iget v4, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 359
    .local v4, "srcHeight":I
    if-lez v5, :cond_0

    if-gtz v4, :cond_1

    .line 360
    :cond_0
    const-string v6, "TiDrawableReference"

    const-string v7, "Bitmap bounds could not be determined.  If bitmap is loaded, it won\'t be scaled."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 365
    :goto_0
    return-object v6

    .line 363
    :cond_1
    int-to-double v6, v5

    int-to-double v8, v4

    div-double v0, v6, v8

    .line 364
    .local v0, "aspectRatio":D
    int-to-double v6, p1

    div-double/2addr v6, v0

    double-to-int v2, v6

    .line 365
    .local v2, "destHeight":I
    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v11

    .line 462
    .local v11, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v3, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 463
    .local v3, "srcWidth":I
    iget v4, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 465
    .local v4, "srcHeight":I
    if-lez v3, :cond_0

    if-gtz v4, :cond_2

    .line 466
    :cond_0
    const-string v2, "TiDrawableReference"

    const-string v5, "Bitmap bounds could not be determined. If bitmap is loaded, it won\'t be scaled."

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 583
    :cond_1
    :goto_0
    return-object v9

    .line 470
    :cond_2
    if-nez p1, :cond_3

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 472
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 473
    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .end local v8    # "activity":Landroid/app/Activity;
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    .line 477
    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v12

    .line 478
    .local v12, "destBounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v14, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 479
    .local v14, "destWidth":I
    iget v13, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 482
    .local v13, "destHeight":I
    if-ne v3, v14, :cond_4

    if-ne v4, v13, :cond_4

    .line 483
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 486
    :cond_4
    if-lez v14, :cond_5

    if-gtz v13, :cond_6

    .line 488
    :cond_5
    const-string v2, "TiDrawableReference"

    const-string v5, "Bitmap final bounds could not be determined.  If bitmap is loaded, it won\'t be scaled."

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 492
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 493
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_7

    .line 494
    const-string v2, "TiDrawableReference"

    const-string v5, "Could not open stream to get bitmap"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v9, 0x0

    goto :goto_0

    .line 498
    :cond_7
    const/4 v9, 0x0

    .line 500
    .local v9, "b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 501
    .local v18, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 502
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14, v13}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiDrawableReference;->DBG:Z

    if-eqz v2, :cond_8

    .line 505
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Bitmap calcSampleSize results: inSampleSize="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    const-string v2, "; srcWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, "; srcHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    const-string v2, "; finalWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const-string v2, "; finalHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v10, 0x0

    .line 521
    .local v10, "bTemp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 522
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 523
    if-nez v10, :cond_a

    .line 524
    const-string v2, "TiDrawableReference"

    const-string v5, "Decoded bitmap is null"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    const/4 v2, 0x0

    .line 564
    if-eqz v10, :cond_9

    .line 565
    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 566
    const/4 v10, 0x0

    .line 571
    :cond_9
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    move-object v9, v2

    .line 574
    goto/16 :goto_0

    .line 572
    :catch_0
    move-exception v16

    .line 573
    .local v16, "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 528
    .end local v16    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_4
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiDrawableReference;->DBG:Z

    if-eqz v2, :cond_b

    .line 529
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeStream resulting bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; .getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 539
    .local v15, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v15}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 540
    iget v2, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 542
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_d

    .line 544
    move-object v9, v10

    .line 545
    const/4 v10, 0x0

    .line 564
    :goto_2
    if-eqz v10, :cond_c

    .line 565
    :try_start_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 566
    const/4 v10, 0x0

    .line 571
    .end local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_c
    :goto_3
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 576
    :goto_4
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiDrawableReference;->DBG:Z

    if-eqz v2, :cond_1

    .line 577
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Details of returned bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_d
    :try_start_7
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiDrawableReference;->DBG:Z

    if-eqz v2, :cond_e

    .line 548
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scaling bitmap to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    if-eqz v2, :cond_f

    iget v2, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_f

    .line 555
    int-to-float v2, v14

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v14, v2

    .line 556
    int-to-float v2, v13

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v13, v2

    .line 558
    :cond_f
    const/4 v2, 0x1

    invoke-static {v10, v14, v13, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    goto/16 :goto_2

    .line 560
    .end local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catch_1
    move-exception v16

    .line 561
    .local v16, "e":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 562
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 564
    if-eqz v10, :cond_c

    .line 565
    :try_start_9
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 564
    .end local v16    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_10

    .line 565
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    const/4 v10, 0x0

    :cond_10
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 570
    .end local v10    # "bTemp":Landroid/graphics/Bitmap;
    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v2

    .line 571
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 574
    :goto_5
    throw v2

    .line 572
    .restart local v10    # "bTemp":Landroid/graphics/Bitmap;
    .restart local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v16

    .line 573
    .local v16, "e":Ljava/io/IOException;
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 572
    .end local v10    # "bTemp":Landroid/graphics/Bitmap;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v16

    .line 573
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;)V
    .locals 2
    .param p1, "asyncTask"    # Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;

    .prologue
    .line 608
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    const-string v0, "TiDrawableReference"

    const-string v1, "getBitmapAsync called on non-network url.  Will attempt load."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->load(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    const-string v1, "TiDrawableReference"

    const-string v2, "getBitmapAsync called on non-network url.  Will attempt load."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "TiDrawableReference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI Invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 327
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 311
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 312
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 315
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 666
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    const-string v4, "file:///android_asset/Resources/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    .line 669
    .local v2, "tbf":Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 695
    .end local v2    # "tbf":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_0
    :goto_0
    return-object v1

    .line 671
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem opening stream with url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 677
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v3, :cond_3

    .line 679
    :try_start_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 680
    :catch_1
    move-exception v0

    .line 681
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem opening stream from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_4

    .line 685
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 686
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 688
    :try_start_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 689
    :catch_2
    move-exception v0

    .line 690
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TiDrawableReference"

    const-string v4, "Drawable resource could not be opened. Are you sure you have the resource for the current device configuration (orientation, screen size, etc.)?"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v1, 0x11

    .line 105
    .local v1, "total":I
    const/16 v0, 0x25

    .line 106
    .local v0, "constant":I
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->ordinal()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 107
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 108
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 109
    mul-int/lit8 v2, v1, 0x25

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 110
    mul-int/lit8 v2, v1, 0x25

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    add-int v1, v2, v3

    .line 111
    return v1

    .line 107
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 109
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isNetworkUrl()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeBlob()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeFile()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeNull()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeResourceId()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeUrl()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outOfMemoryOccurred()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    return v0
.end method

.method public peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 9

    .prologue
    .line 621
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    .line 622
    .local v3, "hash":I
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-object v1, v5

    .line 651
    :cond_0
    :goto_0
    return-object v1

    .line 625
    :cond_1
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 626
    .local v1, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 628
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 631
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 632
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 633
    .local v0, "bfo":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 634
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 635
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 636
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .end local v0    # "bfo":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    if-eqz v4, :cond_2

    .line 643
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 650
    :cond_2
    :goto_2
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 638
    :cond_3
    :try_start_2
    const-string v5, "TiDrawableReference"

    const-string v6, "Could not open stream for drawable, therefore bounds checking could not be completed"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 641
    :catchall_0
    move-exception v5

    .line 642
    if-eqz v4, :cond_4

    .line 643
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 647
    :cond_4
    :goto_3
    throw v5

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 645
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 646
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem closing stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
