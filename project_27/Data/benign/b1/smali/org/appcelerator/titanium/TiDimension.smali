.class public Lorg/appcelerator/titanium/TiDimension;
.super Ljava/lang/Object;
.source "TiDimension.java"


# static fields
.field public static final COMPLEX_UNIT_AUTO:I = 0x12

.field public static final COMPLEX_UNIT_PERCENT:I = 0x11

.field public static final COMPLEX_UNIT_UNDEFINED:I = 0x10

.field private static final DBG:Z

.field public static DIMENSION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LCAT:Ljava/lang/String; = "TiDimension"

.field public static final MM_INCH:D = 25.4

.field public static final POINT_DPI:D = 72.0

.field public static final TYPE_BOTTOM:I = 0x5

.field public static final TYPE_CENTER_X:I = 0x1

.field public static final TYPE_CENTER_Y:I = 0x4

.field public static final TYPE_HEIGHT:I = 0x7

.field public static final TYPE_LEFT:I = 0x0

.field public static final TYPE_RIGHT:I = 0x2

.field public static final TYPE_TOP:I = 0x3

.field public static final TYPE_WIDTH:I = 0x6

.field protected static metrics:Landroid/util/DisplayMetrics;


# instance fields
.field protected units:I

.field protected value:D

.field protected valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiDimension;->DBG:Z

    .line 43
    const-string v0, "(-?[0-9]*\\.?[0-9]+)\\s*(px|dp|dip|sp|sip|mm|pt|in|%)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/TiDimension;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "valueType"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 52
    iput p3, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "svalue"    # Ljava/lang/String;
    .param p2, "valueType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    .line 59
    iput v5, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 62
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 63
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 65
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "unit":Ljava/lang/String;
    const-string v2, "px"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iput v5, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 94
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "unit":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "unit":Ljava/lang/String;
    :cond_1
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const/4 v2, 0x3

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 71
    :cond_2
    const-string v2, "dp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    :cond_3
    iput v6, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 73
    :cond_4
    const-string v2, "sp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    :cond_5
    iput v4, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 75
    :cond_6
    const-string v2, "%"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    const/16 v2, 0x11

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 77
    :cond_7
    const-string v2, "mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    const/4 v2, 0x5

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 79
    :cond_8
    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    const/4 v2, 0x4

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 82
    :cond_9
    sget-boolean v2, Lorg/appcelerator/titanium/TiDimension;->DBG:Z

    if-eqz v2, :cond_0

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const-string v2, "TiDimension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v1    # "unit":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 91
    const/16 v2, 0x12

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto/16 :goto_0
.end method

.method protected static getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;
    .locals 4
    .param p0, "parent"    # Landroid/view/View;

    .prologue
    .line 163
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 165
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    .line 167
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    return-object v2
.end method


# virtual methods
.method public getAsPixels(Landroid/view/View;)I
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 123
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 126
    :pswitch_1
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    double-to-int v0, v0

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPercentPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 131
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getScaledPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getSizePixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIntValue()I
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method protected getPercentPixels(Landroid/view/View;)I
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 142
    const/4 v0, -0x1

    .line 143
    .local v0, "dimension":I
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    packed-switch v2, :pswitch_data_0

    .line 155
    :goto_0
    if-eq v0, v1, :cond_0

    .line 156
    iget-wide v1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 158
    :cond_0
    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getScaledPixels(Landroid/view/View;)I
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-static {p1}, Lorg/appcelerator/titanium/TiDimension;->getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 176
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    iget-wide v3, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 180
    :goto_0
    return v1

    .line 177
    :cond_0
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 178
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v1, v1

    iget-wide v3, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getSizePixels(Landroid/view/View;)I
    .locals 8
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-static {p1}, Lorg/appcelerator/titanium/TiDimension;->getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 186
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v0, -0x40800000    # -1.0f

    .line 187
    .local v0, "dpi":F
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_0
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 200
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    float-to-double v4, v0

    const-wide/high16 v6, 0x4052000000000000L    # 72.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 206
    :goto_1
    return v2

    .line 192
    :pswitch_0
    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_0

    .line 197
    :pswitch_1
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 201
    :cond_0
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 202
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide v4, 0x4039666666666666L    # 25.4

    div-double/2addr v2, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_1

    .line 203
    :cond_1
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 204
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_1

    .line 206
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUnits()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    return-wide v0
.end method

.method public isUnitAuto()Z
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitPercent()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitUndefined()Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUnits(I)V
    .locals 0
    .param p1, "units"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 119
    return-void
.end method

.method public setValue(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 108
    iput-wide p1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-wide v1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 229
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    sparse-switch v1, :sswitch_data_0

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    :sswitch_0
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :sswitch_1
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :sswitch_2
    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :sswitch_3
    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :sswitch_4
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    :sswitch_5
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 236
    :sswitch_6
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 239
    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x11 -> :sswitch_6
    .end sparse-switch
.end method
