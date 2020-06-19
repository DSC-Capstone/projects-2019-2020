.class public Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;
.super Ljava/lang/Object;
.source "TextWheelAdapter.java"

# interfaces
.implements Lkankan/wheel/widget/WheelAdapter;


# instance fields
.field private maxLength:I

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->setValues(Ljava/util/ArrayList;)V

    .line 24
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 29
    return-void
.end method

.method private calcMaxLength()I
    .locals 4

    .prologue
    .line 49
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 56
    :cond_0
    return v1

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    .local v1, "max":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->maxLength:I

    return v0
.end method

.method public setValues(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->values:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->calcMaxLength()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->maxLength:I

    .line 70
    return-void
.end method

.method public setValues([Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValues"    # [Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;->setValues(Ljava/util/ArrayList;)V

    .line 63
    return-void
.end method
