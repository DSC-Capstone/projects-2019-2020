.class public final Lcom/google/ads/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 127
    invoke-static {v1, v3}, Lcom/google/ads/av;->a(II)I

    move-result v0

    sput v0, Lcom/google/ads/av;->a:I

    .line 129
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/google/ads/av;->a(II)I

    move-result v0

    sput v0, Lcom/google/ads/av;->b:I

    .line 131
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/ads/av;->a(II)I

    move-result v0

    sput v0, Lcom/google/ads/av;->c:I

    .line 133
    invoke-static {v3, v2}, Lcom/google/ads/av;->a(II)I

    move-result v0

    sput v0, Lcom/google/ads/av;->d:I

    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 42
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
