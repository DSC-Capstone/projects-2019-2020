.class public Lsh;
.super Lsv;
.source "SourceFile"


# instance fields
.field public a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lsv;-><init>(II)V

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsh;->a:Z

    .line 804
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1, p2}, Lsv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 790
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lsv;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    return-void
.end method

.method public constructor <init>(Lsh;)V
    .locals 1

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lsv;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    iget-boolean v0, p1, Lsh;->a:Z

    iput-boolean v0, p0, Lsh;->a:Z

    .line 799
    return-void
.end method
