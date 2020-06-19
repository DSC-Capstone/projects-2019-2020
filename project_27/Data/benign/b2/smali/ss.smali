.class public Lss;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lrk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lss;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    sget v0, Lnb;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lss;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lss;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Lrn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lrn;->c()Lrl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lrn;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrl;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lss;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 72
    :cond_0
    invoke-virtual {v0, v4}, Lrn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v4}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 75
    invoke-virtual {p0, v1}, Lss;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lrn;->b()V

    .line 82
    :cond_2
    return-void

    .line 76
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 77
    invoke-static {p0, v1}, Lss;->a(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lss;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss;->b:Lrk;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lss;->b:Lrk;

    invoke-static {p0, v0}, Lrl;->a(Landroid/view/View;Lrk;)V

    .line 171
    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 87
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 164
    invoke-direct {p0}, Lss;->a()V

    .line 165
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lss;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss;->b:Lrk;

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
    .line 158
    iget-object v0, p0, Lss;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lss;->b:Lrk;

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
    .line 111
    iget-object v0, p0, Lss;->b:Lrk;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lss;->b:Lrk;

    .line 114
    :cond_0
    iget-object v0, p0, Lss;->b:Lrk;

    iput-object p1, v0, Lrk;->a:Landroid/content/res/ColorStateList;

    .line 115
    iget-object v0, p0, Lss;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->d:Z

    .line 117
    invoke-direct {p0}, Lss;->a()V

    .line 118
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lss;->b:Lrk;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lss;->b:Lrk;

    .line 143
    :cond_0
    iget-object v0, p0, Lss;->b:Lrk;

    iput-object p1, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    .line 144
    iget-object v0, p0, Lss;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->c:Z

    .line 146
    invoke-direct {p0}, Lss;->a()V

    .line 147
    return-void
.end method
