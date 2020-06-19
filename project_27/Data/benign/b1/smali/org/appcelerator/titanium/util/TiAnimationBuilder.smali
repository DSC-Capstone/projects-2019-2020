.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiAnimationBuilder"


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

.field protected applyOpacity:Z

.field protected autoreverse:Ljava/lang/Boolean;

.field protected backgroundColor:Ljava/lang/Integer;

.field protected bottom:Ljava/lang/Integer;

.field protected callback:Lorg/appcelerator/kroll/KrollFunction;

.field protected centerX:Ljava/lang/Integer;

.field protected centerY:Ljava/lang/Integer;

.field protected delay:Ljava/lang/Double;

.field protected duration:Ljava/lang/Double;

.field protected fromOpacity:Ljava/lang/Double;

.field protected height:Ljava/lang/Integer;

.field protected left:Ljava/lang/Integer;

.field protected options:Lorg/appcelerator/kroll/KrollDict;

.field protected relayoutChild:Z

.field protected repeat:Ljava/lang/Double;

.field protected right:Ljava/lang/Integer;

.field protected tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected toOpacity:Ljava/lang/Double;

.field protected top:Ljava/lang/Integer;

.field protected view:Landroid/view/View;

.field protected viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 47
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 48
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 49
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    .line 51
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 52
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 53
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    .line 56
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 60
    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 68
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 69
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    return v0
.end method

.method private addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animationSet"    # Landroid/view/animation/AnimationSet;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    return-void

    .line 173
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V
    .locals 1
    .param p1, "anim"    # Lorg/appcelerator/titanium/view/TiAnimation;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    .line 139
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiAnimation;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 140
    return-void
.end method

.method public applyOptions(Ljava/util/HashMap;)V
    .locals 5
    .param p1, "optionsMap"    # Ljava/util/HashMap;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 80
    .local v1, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "anchorPoint"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string v3, "anchorPoint"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    .line 82
    .local v2, "point":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "x"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 83
    const-string v3, "y"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 86
    .end local v2    # "point":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const-string v3, "transform"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "transform"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 89
    :cond_2
    const-string v3, "delay"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const-string v3, "delay"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 92
    :cond_3
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    const-string v3, "duration"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 95
    :cond_4
    const-string v3, "opacity"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "opacity"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 98
    :cond_5
    const-string v3, "repeat"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    const-string v3, "repeat"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 101
    :cond_6
    const-string v3, "autoreverse"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 102
    const-string v3, "autoreverse"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 104
    :cond_7
    const-string v3, "top"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 105
    const-string v3, "top"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    .line 107
    :cond_8
    const-string v3, "bottom"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    const-string v3, "bottom"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    .line 110
    :cond_9
    const-string v3, "left"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 111
    const-string v3, "left"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    .line 113
    :cond_a
    const-string v3, "right"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 114
    const-string v3, "right"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    .line 116
    :cond_b
    const-string v3, "center"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 117
    const-string v3, "center"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 118
    .local v0, "center":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_c

    .line 119
    const-string v3, "x"

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    .line 120
    const-string v3, "y"

    invoke-static {v0, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    .line 123
    .end local v0    # "center":Lorg/appcelerator/kroll/KrollDict;
    :cond_c
    const-string v3, "width"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 124
    const-string v3, "width"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    .line 126
    :cond_d
    const-string v3, "height"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 127
    const-string v3, "height"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    .line 129
    :cond_e
    const-string v3, "backgroundColor"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 130
    const-string v3, "backgroundColor"

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 133
    :cond_f
    iput-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Lorg/appcelerator/kroll/KrollDict;

    goto/16 :goto_0
.end method

.method public createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    .locals 3
    .param p1, "matrix"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    .line 182
    new-instance v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    invoke-direct {v0, p1, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    return-object v0
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;
    .locals 11
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 150
    .local v10, "parent":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 151
    .local v7, "parentWidth":I
    const/4 v8, 0x0

    .line 153
    .local v8, "parentHeight":I
    instance-of v0, v10, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v9, v10

    .line 154
    check-cast v9, Landroid/view/ViewGroup;

    .line 155
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 156
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    .line 159
    .end local v9    # "group":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;
    .locals 37
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "parentWidth"    # I
    .param p8, "parentHeight"    # I

    .prologue
    .line 187
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 190
    new-instance v30, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 191
    .local v30, "as":Landroid/view/animation/AnimationSet;
    new-instance v29, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 193
    .local v29, "animationListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v7, :cond_0

    .line 194
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 195
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    .line 201
    :goto_0
    new-instance v19, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->floatValue()F

    move-result v8

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 202
    .local v19, "animation":Landroid/view/animation/Animation;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 204
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 206
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v36

    .line 207
    .local v36, "uiView":Lorg/appcelerator/titanium/view/TiUIView;
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v7, :cond_0

    if-eqz v36, :cond_0

    .line 212
    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 216
    .end local v19    # "animation":Landroid/view/animation/Animation;
    .end local v36    # "uiView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 217
    const/16 v31, 0x0

    .line 219
    .local v31, "fromBackgroundColor":I
    const-string v7, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 220
    const-string v7, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v31

    .line 225
    :goto_1
    new-instance v28, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v7}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;-><init>(Landroid/view/View;II)V

    .line 226
    .local v28, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 229
    .end local v28    # "a":Landroid/view/animation/Animation;
    .end local v31    # "fromBackgroundColor":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v7, :cond_3

    .line 230
    const/4 v7, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 231
    const/4 v7, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 232
    new-instance v32, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    move-object/from16 v0, p0

    iget v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    move-object/from16 v0, v32

    invoke-direct {v0, v7, v8, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    .line 234
    .local v32, "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v7, v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setDuration(J)V

    .line 238
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 242
    .end local v32    # "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    if-eqz v7, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    if-eqz v7, :cond_10

    .line 251
    :cond_6
    const/4 v12, 0x0

    .local v12, "optionTop":Lorg/appcelerator/titanium/TiDimension;
    const/4 v14, 0x0

    .line 252
    .local v14, "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    const/4 v4, 0x0

    .local v4, "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    const/4 v6, 0x0

    .line 253
    .local v6, "optionRight":Lorg/appcelerator/titanium/TiDimension;
    const/4 v5, 0x0

    .local v5, "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    const/4 v13, 0x0

    .line 255
    .local v13, "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 256
    new-instance v12, Lorg/appcelerator/titanium/TiDimension;

    .end local v12    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x3

    invoke-direct {v12, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 258
    .restart local v12    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 259
    new-instance v14, Lorg/appcelerator/titanium/TiDimension;

    .end local v14    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x5

    invoke-direct {v14, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 261
    .restart local v14    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    if-eqz v7, :cond_9

    .line 262
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    .end local v4    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x0

    invoke-direct {v4, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 264
    .restart local v4    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    if-eqz v7, :cond_a

    .line 265
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    .end local v6    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 267
    .restart local v6    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    if-eqz v7, :cond_b

    .line 268
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    invoke-direct {v5, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 270
    .restart local v5    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    if-eqz v7, :cond_c

    .line 271
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x4

    invoke-direct {v13, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 274
    .restart local v13    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    :cond_c
    const/4 v7, 0x2

    new-array v10, v7, [I

    .line 275
    .local v10, "horizontal":[I
    const/4 v7, 0x2

    new-array v0, v7, [I

    move-object/from16 v18, v0

    .line 276
    .local v18, "vertical":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    .line 277
    .local v33, "parent":Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 279
    .local v3, "parentView":Landroid/view/View;
    move-object/from16 v0, v33

    instance-of v7, v0, Landroid/view/View;

    if-eqz v7, :cond_d

    move-object/from16 v3, v33

    .line 280
    check-cast v3, Landroid/view/View;

    .line 284
    :cond_d
    const/4 v8, 0x0

    move/from16 v7, p5

    move/from16 v9, p7

    invoke-static/range {v3 .. v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 285
    const/16 v16, 0x0

    move-object v11, v3

    move/from16 v15, p6

    move/from16 v17, p8

    invoke-static/range {v11 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 287
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v7, 0x0

    aget v7, v10, v7

    sub-int v7, v7, p3

    int-to-float v0, v7

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v7, 0x0

    aget v7, v18, v7

    sub-int v7, v7, p4

    int-to-float v0, v7

    move/from16 v27, v0

    invoke-direct/range {v19 .. v27}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 289
    .restart local v19    # "animation":Landroid/view/animation/Animation;
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 290
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_e

    .line 293
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 296
    :cond_e
    const/4 v7, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 297
    const/4 v7, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 298
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 299
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 301
    sget-boolean v7, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    if-eqz v7, :cond_f

    .line 302
    const-string v7, "TiAnimationBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " relative to self: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v10, v9

    sub-int v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v18, v9

    sub-int v9, v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_f
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 308
    .end local v3    # "parentView":Landroid/view/View;
    .end local v4    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v5    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .end local v6    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v10    # "horizontal":[I
    .end local v12    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v13    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v18    # "vertical":[I
    .end local v19    # "animation":Landroid/view/animation/Animation;
    .end local v33    # "parent":Landroid/view/ViewParent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-nez v7, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    if-nez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    if-eqz v7, :cond_13

    .line 310
    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    if-nez v7, :cond_18

    move/from16 v35, p5

    .line 311
    .local v35, "toWidth":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    if-nez v7, :cond_19

    move/from16 v34, p6

    .line 312
    .local v34, "toHeight":I
    :goto_3
    new-instance v20, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v21, p0

    move-object/from16 v22, p2

    invoke-direct/range {v20 .. v26}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V

    .line 314
    .local v20, "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_12

    .line 315
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setDuration(J)V

    .line 318
    :cond_12
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 320
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 322
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 325
    .end local v20    # "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v34    # "toHeight":I
    .end local v35    # "toWidth":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-nez v7, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v7, :cond_15

    .line 326
    :cond_14
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 329
    :cond_15
    return-object v30

    .line 198
    :cond_16
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    sub-double/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    goto/16 :goto_0

    .line 222
    .restart local v31    # "fromBackgroundColor":I
    :cond_17
    const-string v7, "TiAnimationBuilder"

    const-string v8, "Cannot animate view without a backgroundColor. View doesn\'t have that property. Using #00000000"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v31

    goto/16 :goto_1

    .line 310
    .end local v31    # "fromBackgroundColor":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v35

    goto/16 :goto_2

    .line 311
    .restart local v35    # "toWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_3
.end method

.method public setCallback(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 145
    return-void
.end method
