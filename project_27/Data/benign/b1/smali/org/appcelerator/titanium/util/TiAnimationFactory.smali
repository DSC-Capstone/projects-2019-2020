.class public Lorg/appcelerator/titanium/util/TiAnimationFactory;
.super Ljava/lang/Object;
.source "TiAnimationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationFor(Ljava/lang/String;I)Lorg/appcelerator/titanium/util/TiAnimationPair;
    .locals 14
    .param p0, "style"    # Ljava/lang/String;
    .param p1, "duration"    # I

    .prologue
    .line 20
    new-instance v9, Lorg/appcelerator/titanium/util/TiAnimationPair;

    invoke-direct {v9}, Lorg/appcelerator/titanium/util/TiAnimationPair;-><init>()V

    .line 21
    .local v9, "a":Lorg/appcelerator/titanium/util/TiAnimationPair;
    const/4 v12, 0x1

    .line 23
    .local v12, "needsDuration":Z
    const-string v1, "fade-in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 25
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    .line 124
    :cond_0
    :goto_0
    if-eqz v9, :cond_4

    .line 125
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    .line 126
    if-eqz v12, :cond_1

    .line 127
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    :cond_1
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 131
    :cond_2
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 132
    if-eqz v12, :cond_3

    .line 133
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    :cond_3
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    :cond_4
    return-object v9

    .line 26
    :cond_5
    const-string v1, "fade-out"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 28
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto :goto_0

    .line 29
    :cond_6
    const-string v1, "slide-from-left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto :goto_0

    .line 36
    :cond_7
    const-string v1, "slide-from-top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 43
    :cond_8
    const-string v1, "slide-from-right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 47
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 50
    :cond_9
    const-string v1, "slide-from-bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 54
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 57
    :cond_a
    const-string v1, "scale-in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 61
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 64
    :cond_b
    const-string v1, "wink-in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 65
    const/4 v12, 0x0

    .line 66
    div-int/lit8 v11, p1, 0x2

    .line 68
    .local v11, "half":I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 71
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    div-int/lit8 v2, v11, 0x5

    add-int/2addr v2, v11

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 72
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    .line 77
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 78
    .end local v11    # "half":I
    :cond_c
    const-string v1, "headlines"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v12, 0x0

    .line 80
    div-int/lit8 v11, p1, 0x2

    .line 81
    .restart local v11    # "half":I
    div-int/lit8 v13, v11, 0x5

    .line 84
    .local v13, "pause":I
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 85
    .local v10, "as":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v0, "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "t":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, -0x3bcc0000    # -720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 91
    .restart local v0    # "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "t":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 97
    .restart local v0    # "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 98
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iput-object v10, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    .line 101
    iget-object v1, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->in:Landroid/view/animation/Animation;

    add-int v2, v11, v13

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 104
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10    # "as":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .restart local v10    # "as":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "t":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    .restart local v0    # "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "t":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 112
    .restart local v0    # "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "t":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 118
    .restart local v0    # "t":Landroid/view/animation/Animation;
    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iput-object v10, v9, Lorg/appcelerator/titanium/util/TiAnimationPair;->out:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method
