.class public Lsn;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lrl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Lsn;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lsn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lsn;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lsn;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsn;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v0}, Lrn;->b()V

    .line 58
    invoke-virtual {v0}, Lrn;->c()Lrl;

    move-result-object v0

    iput-object v0, p0, Lsn;->b:Lrl;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lsn;->b:Lrl;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lsn;->b:Lrl;

    invoke-virtual {v0, p1}, Lrl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsn;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0
.end method
