.class Lcom/novioplan/pollennieuws/YearlyViewActivity$3;
.super Ljava/lang/Object;
.source "YearlyViewActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/YearlyViewActivity;->symptomsString([I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$3;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/novioplan/pollennieuws/YearlyViewActivity$3;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 3
    .param p1, "entry1"    # [I
    .param p2, "entry2"    # [I

    .prologue
    const/4 v0, 0x1

    .line 257
    aget v1, p1, v0

    aget v2, p2, v0

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
