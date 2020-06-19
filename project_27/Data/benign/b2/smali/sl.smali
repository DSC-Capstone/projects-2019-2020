.class public Lsl;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lrk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lsl;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    sget v0, Lnb;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lsl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const v5, 0x1010038

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lsl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lsl;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Lrn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lrn;->c()Lrl;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Lrn;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lrl;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lsl;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_0
    invoke-virtual {v0}, Lrn;->b()V

    .line 75
    :cond_1
    sget-object v0, Lnl;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Lnl;->AppCompatTextView_android_textAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    if-eq v1, v4, :cond_3

    .line 82
    sget-object v0, Lnl;->TextAppearance:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    sget v1, Lnl;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget v1, Lnl;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lsl;->setAllCaps(Z)V

    .line 86
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    :cond_3
    sget-object v0, Lnl;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    sget v1, Lnl;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    sget v1, Lnl;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lsl;->setAllCaps(Z)V

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p0}, Lsl;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    .line 105
    invoke-static {p1, v5}, Lrh;->c(Landroid/content/Context;I)I

    move-result v0

    .line 115
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1, v0}, Lrh;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsl;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    :cond_5
    return-void

    .line 111
    :cond_6
    invoke-static {p1, v5}, Lrh;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lsl;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsl;->b:Lrk;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lsl;->b:Lrk;

    invoke-static {p0, v0}, Lrl;->a(Landroid/view/View;Lrk;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 182
    invoke-direct {p0}, Lsl;->a()V

    .line 183
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lsl;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsl;->b:Lrk;

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
    .line 176
    iget-object v0, p0, Lsl;->b:Lrk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsl;->b:Lrk;

    iget-object v0, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 194
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 200
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2

    .prologue
    .line 204
    if-eqz p1, :cond_0

    new-instance v0, Lnt;

    invoke-virtual {p0}, Lsl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnt;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Lsl;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lsl;->b:Lrk;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lsl;->b:Lrk;

    .line 132
    :cond_0
    iget-object v0, p0, Lsl;->b:Lrk;

    iput-object p1, v0, Lrk;->a:Landroid/content/res/ColorStateList;

    .line 133
    iget-object v0, p0, Lsl;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->d:Z

    .line 135
    invoke-direct {p0}, Lsl;->a()V

    .line 136
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lsl;->b:Lrk;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    iput-object v0, p0, Lsl;->b:Lrk;

    .line 161
    :cond_0
    iget-object v0, p0, Lsl;->b:Lrk;

    iput-object p1, v0, Lrk;->b:Landroid/graphics/PorterDuff$Mode;

    .line 162
    iget-object v0, p0, Lsl;->b:Lrk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrk;->c:Z

    .line 164
    invoke-direct {p0}, Lsl;->a()V

    .line 165
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 211
    sget-object v0, Lnl;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    sget v1, Lnl;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget v1, Lnl;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lsl;->setAllCaps(Z)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return-void
.end method
