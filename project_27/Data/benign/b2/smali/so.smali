.class public Lso;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lrk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lso;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    sget v0, Lnb;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lso;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {p1}, Lri;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lso;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lso;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3}, Lrn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Lrn;->c()Lrl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lrn;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrl;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lso;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    :cond_0
    invoke-virtual {v0}, Lrn;->b()V

    .line 68
    :cond_1
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lso;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lso;->b:Lrk;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lso;->b:Lrk;

    invoke-static {p0, v0}, Lrl;->a(Landroid/view/View;Lrk;)V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 132
    invoke-direct {p0}, Lso;->a()V

    .line 133
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lso;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lso;->b:Lrk;

    iget-object v0, v0, Lrk;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lso;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lso;->b:Lrk;

    iget-object v0, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lso;->b:Lrk;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lso;->b:Lrk;

    .line 82
    :cond_0
    iget-object v0, p0, Lso;->b:Lrk;

    iput-object p1, v0, Lrk;->a:Landroid/content/res/ColorStateList;

    .line 83
    iget-object v0, p0, Lso;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->d:Z

    .line 85
    invoke-direct {p0}, Lso;->a()V

    .line 86
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lso;->b:Lrk;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lso;->b:Lrk;

    .line 111
    :cond_0
    iget-object v0, p0, Lso;->b:Lrk;

    iput-object p1, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    .line 112
    iget-object v0, p0, Lso;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->c:Z

    .line 114
    invoke-direct {p0}, Lso;->a()V

    .line 115
    return-void
.end method
