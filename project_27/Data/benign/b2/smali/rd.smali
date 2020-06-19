.class public Lrd;
.super Lsw;
.source "SourceFile"

# interfaces
.implements Lrg;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 983
    iput-object p1, p0, Lrd;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 984
    invoke-direct {p0, p2, p3, p4}, Lsw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 986
    invoke-virtual {p0, p1}, Lrd;->a(Landroid/view/View;)V

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrd;->a(Z)V

    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrd;->a(I)V

    .line 990
    new-instance v0, Lre;

    invoke-direct {v0, p0, p1}, Lre;-><init>(Lrd;Landroid/support/v7/internal/widget/SpinnerCompat;)V

    invoke-virtual {p0, v0}, Lrd;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1001
    return-void
.end method

.method static synthetic a(Lrd;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lrd;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 1005
    invoke-super {p0, p1}, Lsw;->a(Landroid/widget/ListAdapter;)V

    .line 1006
    iput-object p1, p0, Lrd;->d:Landroid/widget/ListAdapter;

    .line 1007
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lrd;->c:Ljava/lang/CharSequence;

    .line 1016
    return-void
.end method
