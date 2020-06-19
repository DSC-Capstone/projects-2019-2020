.class public Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
.super Ljava/lang/Object;
.source "TiBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Border"
.end annotation


# static fields
.field public static final SOLID:I


# instance fields
.field private color:I

.field private radius:F

.field private style:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->color:I

    .line 198
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F

    .line 199
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->width:F

    .line 200
    iput v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->style:I

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)I
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .prologue
    .line 194
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->color:I

    return v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .prologue
    .line 194
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F

    return v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .prologue
    .line 194
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->width:F

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->color:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->style:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->width:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 205
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->color:I

    .line 206
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 211
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F

    .line 212
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 223
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->style:I

    .line 224
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 217
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->width:F

    .line 218
    return-void
.end method
