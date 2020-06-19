.class Lorg/appcelerator/titanium/view/TiCompositeLayout$1;
.super Ljava/lang/Object;
.source "TiCompositeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiCompositeLayout;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;->this$0:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "o1"    # Landroid/view/View;
    .param p2, "o2"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x80000000

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 58
    .local v0, "p1":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 61
    .local v1, "p2":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v2, 0x0

    .line 63
    .local v2, "result":I
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_3

    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_3

    .line 64
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-ge v3, v4, :cond_2

    .line 65
    const/4 v2, -0x1

    .line 83
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 84
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    if-ge v3, v4, :cond_7

    .line 85
    const/4 v2, -0x1

    .line 93
    :cond_1
    :goto_1
    return v2

    .line 66
    :cond_2
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-le v3, v4, :cond_0

    .line 67
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    :cond_3
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_5

    .line 70
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-gez v3, :cond_4

    .line 71
    const/4 v2, -0x1

    .line 72
    :cond_4
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-lez v3, :cond_0

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :cond_5
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_0

    .line 76
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-gez v3, :cond_6

    .line 77
    const/4 v2, 0x1

    .line 78
    :cond_6
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-lez v3, :cond_0

    .line 79
    const/4 v2, -0x1

    goto :goto_0

    .line 86
    :cond_7
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    if-le v3, v4, :cond_8

    .line 87
    const/4 v2, 0x1

    goto :goto_1

    .line 89
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Ambiguous Z-Order"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
