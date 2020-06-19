.class public Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
.super Lkankan/wheel/widget/NumericWheelAdapter;
.source "FormatNumericWheelAdapter.java"


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private maxCharacterLength:I


# direct methods
.method public constructor <init>(IILjava/text/NumberFormat;I)V
    .locals 6
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "formatter"    # Ljava/text/NumberFormat;
    .param p4, "maxCharLength"    # I

    .prologue
    .line 21
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;II)V

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/text/NumberFormat;II)V
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "formatter"    # Ljava/text/NumberFormat;
    .param p4, "maxCharLength"    # I
    .param p5, "stepValue"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p5}, Lkankan/wheel/widget/NumericWheelAdapter;-><init>(III)V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 27
    iput-object p3, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    .line 28
    iput p4, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 29
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    .line 38
    .local v0, "actualValue":I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    if-nez v1, :cond_0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    return v0
.end method

.method public setFormatter(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "formatter"    # Ljava/text/NumberFormat;

    .prologue
    .line 32
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    .line 33
    return-void
.end method

.method public setMaximumLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 53
    return-void
.end method
