.class public final Lcom/google/ads/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# direct methods
.method private static a(Landroid/content/Context;FI)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 74
    int-to-float v0, p2

    div-float/2addr v0, p1

    float-to-int p2, v0

    .line 76
    :cond_0
    return p2
.end method

.method public static a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0, v1}, Lcom/google/ads/util/e;->a(Landroid/content/Context;FI)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2

    .prologue
    .line 58
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v0, v1}, Lcom/google/ads/util/e;->a(Landroid/content/Context;FI)I

    move-result v0

    return v0
.end method
