.class public Lnet/simonvt/menudrawer/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final a:Lnet/simonvt/menudrawer/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/simonvt/menudrawer/v;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/v;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/o;->a:Lnet/simonvt/menudrawer/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x40400000    # 3.0f

    const v2, 0x3eaaaaab

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    sget-object v0, Lnet/simonvt/menudrawer/o;->a:Lnet/simonvt/menudrawer/v;

    mul-float v1, p1, v3

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/v;->getInterpolation(F)F

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x3f2aaaab

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-float v1, p1, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    sget-object v2, Lnet/simonvt/menudrawer/o;->a:Lnet/simonvt/menudrawer/v;

    invoke-virtual {v2, v1}, Lnet/simonvt/menudrawer/v;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method
