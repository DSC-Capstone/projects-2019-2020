.class public Lorg/appcelerator/titanium/proxy/DecorViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "DecorViewProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorViewProxy"


# instance fields
.field protected layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field protected orientationModes:[I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 1
    .param p1, "layout"    # Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 27
    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    .line 33
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 34
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 35
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIDecorView;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIDecorView;-><init>(Lorg/appcelerator/titanium/proxy/DecorViewProxy;)V

    return-object v0
.end method

.method public getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertConfigToTiOrientationMode(I)I

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 60
    :cond_0
    const-string v1, "DecorViewProxy"

    const-string v2, "unable to get orientation, activity not found for window"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrientationModes()[I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    return-object v0
.end method

.method public setOrientationModes([I)V
    .locals 11
    .param p1, "modes"    # [I

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x9

    .line 67
    const/4 v1, -0x1

    .line 68
    .local v1, "activityOrientationMode":I
    const/4 v4, 0x0

    .line 69
    .local v4, "hasPortrait":Z
    const/4 v5, 0x0

    .line 70
    .local v5, "hasPortraitReverse":Z
    const/4 v2, 0x0

    .line 71
    .local v2, "hasLandscape":Z
    const/4 v3, 0x0

    .line 74
    .local v3, "hasLandscapeReverse":Z
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    .line 76
    if-eqz p1, :cond_13

    .line 79
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 81
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 83
    const/4 v4, 0x1

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 87
    const/4 v5, 0x1

    goto :goto_1

    .line 89
    :cond_2
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 91
    const/4 v2, 0x1

    goto :goto_1

    .line 93
    :cond_3
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 95
    const/4 v3, 0x1

    goto :goto_1

    .line 100
    :cond_4
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->orientationModes:[I

    array-length v7, v7

    if-nez v7, :cond_7

    .line 102
    const/4 v1, 0x4

    .line 155
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 158
    if-eq v1, v10, :cond_12

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 179
    .end local v6    # "i":I
    :cond_6
    :goto_3
    return-void

    .line 104
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "i":I
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 106
    :cond_9
    const/4 v1, 0x4

    goto :goto_2

    .line 108
    :cond_a
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 114
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_b

    .line 116
    const/4 v1, 0x7

    goto :goto_2

    .line 120
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 123
    :cond_c
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 129
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_d

    .line 131
    const/4 v1, 0x6

    goto :goto_2

    .line 135
    :cond_d
    const/4 v1, 0x0

    goto :goto_2

    .line 138
    :cond_e
    if-eqz v4, :cond_f

    .line 140
    const/4 v1, 0x1

    goto :goto_2

    .line 142
    :cond_f
    if-eqz v5, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_10

    .line 144
    const/16 v1, 0x9

    goto :goto_2

    .line 146
    :cond_10
    if-eqz v2, :cond_11

    .line 148
    const/4 v1, 0x0

    goto :goto_2

    .line 150
    :cond_11
    if-eqz v3, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_5

    .line 152
    const/16 v1, 0x8

    goto :goto_2

    .line 164
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_12
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 170
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "i":I
    :cond_13
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 173
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_6

    move-object v7, v0

    .line 175
    check-cast v7, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getOriginalOrientationMode()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3
.end method
