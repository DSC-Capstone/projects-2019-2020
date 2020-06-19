.class Lrj;
.super Lqs;
.source "SourceFile"


# instance fields
.field private final a:Lrl;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lrl;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lqs;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Lrj;->a:Lrl;

    .line 63
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lqs;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lrj;->a:Lrl;

    invoke-virtual {v1, p1, v0}, Lrl;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v0
.end method
