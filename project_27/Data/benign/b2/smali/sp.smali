.class public Lsp;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lrl;

.field private c:Lrk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsp;->a:[I

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
    .line 55
    sget v0, Lnb;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lsp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {p1}, Lri;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lsp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lsp;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lrn;->c()Lrl;

    move-result-object v1

    iput-object v1, p0, Lsp;->b:Lrl;

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
    invoke-virtual {p0, v1}, Lsp;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 72
    :cond_0
    invoke-virtual {v0, v4}, Lrn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v4}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsp;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_1
    invoke-virtual {v0}, Lrn;->b()V

    .line 77
    :cond_2
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lsp;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsp;->c:Lrk;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lsp;->c:Lrk;

    invoke-static {p0, v0}, Lrl;->a(Landroid/view/View;Lrk;)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 150
    invoke-direct {p0}, Lsp;->a()V

    .line 151
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lsp;->c:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsp;->c:Lrk;

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
    .line 144
    iget-object v0, p0, Lsp;->c:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsp;->c:Lrk;

    iget-object v0, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lsp;->b:Lrl;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lsp;->b:Lrl;

    invoke-virtual {v0, p1}, Lrl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsp;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lsp;->c:Lrk;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lsp;->c:Lrk;

    .line 100
    :cond_0
    iget-object v0, p0, Lsp;->c:Lrk;

    iput-object p1, v0, Lrk;->a:Landroid/content/res/ColorStateList;

    .line 101
    iget-object v0, p0, Lsp;->c:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->d:Z

    .line 103
    invoke-direct {p0}, Lsp;->a()V

    .line 104
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lsp;->c:Lrk;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lsp;->c:Lrk;

    .line 129
    :cond_0
    iget-object v0, p0, Lsp;->c:Lrk;

    iput-object p1, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    .line 130
    iget-object v0, p0, Lsp;->c:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->c:Z

    .line 132
    invoke-direct {p0}, Lsp;->a()V

    .line 133
    return-void
.end method
