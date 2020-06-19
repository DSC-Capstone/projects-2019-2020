.class public Lkankan/wheel/widget/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lkankan/wheel/widget/WheelAdapter;


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I = 0x0

.field private static final DEFAULT_STEP_VALUE:I = 0x1


# instance fields
.field private maxValue:I

.field private minValue:I

.field private stepValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lkankan/wheel/widget/NumericWheelAdapter;-><init>(III)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkankan/wheel/widget/NumericWheelAdapter;-><init>(III)V

    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "stepValue"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    .line 70
    iput p2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    .line 71
    iput p3, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    .line 72
    return-void
.end method


# virtual methods
.method public getIndex(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 117
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    sub-int v0, p1, v0

    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 77
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lkankan/wheel/widget/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 78
    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 79
    .local v0, "actualValue":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v0    # "actualValue":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 3

    .prologue
    .line 86
    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    sub-int/2addr v1, v2

    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 87
    .local v0, "itemCount":I
    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    return v0
.end method

.method public getMaximumLength()I
    .locals 4

    .prologue
    .line 92
    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    .local v0, "max":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 94
    .local v1, "maxLen":I
    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    if-gez v2, :cond_0

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 97
    :cond_0
    return v1
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    return v0
.end method

.method public getValue(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 109
    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 110
    .local v0, "tmpValue":I
    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    if-le v0, v1, :cond_0

    .line 111
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    .line 113
    .end local v0    # "tmpValue":I
    :cond_0
    return v0
.end method

.method public setStepValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 121
    iput p1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->stepValue:I

    .line 122
    return-void
.end method
