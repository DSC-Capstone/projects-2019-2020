.class public Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
.super Landroid/widget/ImageButton;
.source "UnityAdsMuteVideoButton.java"


# instance fields
.field private a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

.field private b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;->Medium:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    .line 24
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;->Medium:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    .line 29
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;->Medium:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    .line 35
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b()V

    .line 36
    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->b:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;->Medium:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/unity3d/ads/android/view/b;->a:[I

    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->ICON_AUDIO_UNMUTED_50x50:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 52
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->ICON_AUDIO_UNMUTED_32x32:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->getBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->ICON_AUDIO_MUTED_50x50:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 58
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->ICON_AUDIO_MUTED_32x32:Ljava/lang/String;

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsGraphicsBundle;->getBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setAdjustViewBounds(Z)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setPadding(IIII)V

    .line 74
    return-void
.end method


# virtual methods
.method public setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 41
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    :cond_0
    return-void
.end method
