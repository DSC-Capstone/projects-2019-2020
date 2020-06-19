.class public Lio/senseai/kelvin/widget/TermsView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field public a:Lbpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TermsView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TermsView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lio/senseai/kelvin/widget/TermsView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lio/senseai/kelvin/widget/TermsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030023

    invoke-static {v0, v1, p0}, Lio/senseai/kelvin/widget/TermsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    const v0, 0x7f0d0066

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 43
    const v1, 0x7f0d0067

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 47
    new-instance v1, Lbpw;

    invoke-direct {v1, p0}, Lbpw;-><init>(Lio/senseai/kelvin/widget/TermsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    const v1, 0x7f0d0065

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 56
    const v3, 0x7f0d0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 57
    new-instance v3, Lbpx;

    invoke-direct {v3, p0, v0}, Lbpx;-><init>(Lio/senseai/kelvin/widget/TermsView;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Lbpy;

    invoke-direct {v0, p0}, Lbpy;-><init>(Lio/senseai/kelvin/widget/TermsView;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method


# virtual methods
.method public setListener(Lbpz;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lio/senseai/kelvin/widget/TermsView;->a:Lbpz;

    .line 75
    return-void
.end method
