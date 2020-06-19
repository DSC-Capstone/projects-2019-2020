.class public Lorg/appcelerator/titanium/view/Ti2DMatrix;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANCHOR_VALUE:F = -1.0f


# instance fields
.field protected next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

.field protected prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V
    .locals 1
    .param p1, "prev"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .param p2, "opType"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 74
    iput-object p0, p1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 76
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-direct {v0, p2}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 77
    return-void
.end method


# virtual methods
.method public finalValuesAfterInterpolation(II)[F
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 175
    const/high16 v1, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 176
    .local v6, "m":Landroid/graphics/Matrix;
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 177
    .local v7, "result":[F
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 178
    return-object v7
.end method

.method protected handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 99
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 101
    .local v0, "anchorPoint":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "x"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 103
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "y"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 106
    .end local v0    # "anchorPoint":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 83
    const-string v0, "rotate"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 85
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 86
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v1, "rotate"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 87
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 89
    :cond_0
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 91
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 92
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "scale"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 93
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 95
    :cond_1
    return-void
.end method

.method public interpolate(FIIFF)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "interpolatedTime"    # F
    .param p2, "childWidth"    # I
    .param p3, "childHeight"    # I
    .param p4, "anchorX"    # F
    .param p5, "anchorY"    # F

    .prologue
    .line 183
    move-object v8, p0

    .line 184
    .local v8, "first":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v10, "preMatrixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix;>;"
    :goto_0
    iget-object v0, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_0

    .line 188
    iget-object v8, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 195
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 196
    .local v7, "current":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 200
    .end local v7    # "current":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    .line 203
    :cond_3
    return-object v2
.end method

.method public invert()Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    return-object v0
.end method

.method public multiply(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2
    .param p1, "other"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    .line 167
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 168
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-object p0, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 169
    return-object v0
.end method

.method public rotate([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 147
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    array-length v1, p1

    if-ne v1, v4, :cond_1

    .line 148
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x0

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 149
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 152
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    goto :goto_0
.end method

.method public scale([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v3}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 121
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput v5, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 122
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput v5, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 124
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 126
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 127
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 128
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v6

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 129
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 131
    :cond_0
    array-length v1, p1

    if-ne v1, v6, :cond_2

    .line 133
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 134
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 140
    :cond_1
    :goto_0
    return-object v0

    .line 135
    :cond_2
    array-length v1, p1

    if-ne v1, v4, :cond_1

    .line 137
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v3, p1, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    goto :goto_0
.end method

.method public translate(DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 111
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 112
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p1

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    .line 113
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p3

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    .line 114
    return-object v0
.end method
