.class public Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDateSpinner.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiUIDateSpinner"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private dayBeforeMonth:Z

.field private dayWheel:Lkankan/wheel/widget/WheelView;

.field private ignoreItemSelection:Z

.field private locale:Ljava/util/Locale;

.field private maxDate:Ljava/util/Calendar;

.field private minDate:Ljava/util/Calendar;

.field private monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private monthWheel:Lkankan/wheel/widget/WheelView;

.field private numericMonths:Z

.field private suppressChangeEvent:Z

.field private yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private yearWheel:Lkankan/wheel/widget/WheelView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 43
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->suppressChangeEvent:Z

    .line 44
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    .line 48
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    .line 49
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 60
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->createNativeView(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method private createNativeView(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    const/16 v3, 0xb

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 67
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1, v2, v6, v5}, Ljava/util/Calendar;->set(III)V

    .line 70
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    .line 71
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    .line 72
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    .line 74
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 75
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 76
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 78
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 79
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 80
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "dayBeforeMonth"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :cond_0
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setNativeView(Landroid/view/View;)V

    .line 100
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getSelectedDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 386
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v3

    .line 387
    .local v3, "year":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedMonth()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 388
    .local v2, "month":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedDay()I

    move-result v1

    .line 389
    .local v1, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 390
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 391
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method private getSelectedDay()I
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private getSelectedMonth()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private getSelectedYear()I
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private setAdapters()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setYearAdapter()V

    .line 172
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter()V

    .line 173
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setDayAdapter()V

    .line 175
    return-void
.end method

.method private setCalendar(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 361
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    return-void
.end method

.method private setCalendar(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 366
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 367
    return-void
.end method

.method private setDayAdapter()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x5

    const/4 v13, 0x1

    .line 238
    const/4 v9, 0x1

    .line 239
    .local v9, "setMinDay":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 241
    .local v8, "setMaxDay":I
    const/4 v1, -0x1

    .local v1, "currentMin":I
    const/4 v0, -0x1

    .line 242
    .local v0, "currentMax":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v10, :cond_0

    .line 243
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v1

    .line 244
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v0

    .line 247
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 248
    .local v3, "maxYear":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 249
    .local v5, "minYear":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v7

    .line 250
    .local v7, "selYear":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 251
    .local v2, "maxMonth":I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 252
    .local v4, "minMonth":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedMonth()I

    move-result v6

    .line 254
    .local v6, "selMonth":I
    if-ne v7, v3, :cond_1

    if-ne v6, v2, :cond_1

    .line 255
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 258
    :cond_1
    if-ne v7, v5, :cond_2

    if-ne v6, v4, :cond_2

    .line 259
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 262
    :cond_2
    if-ne v1, v9, :cond_3

    if-eq v0, v8, :cond_4

    .line 263
    :cond_3
    new-instance v10, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x4

    invoke-direct {v10, v9, v8, v11, v12}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 264
    iput-boolean v13, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 265
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v11, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10, v11}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 266
    const/4 v10, 0x0

    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 268
    :cond_4
    return-void
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 10
    .param p1, "localeString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 335
    .local v2, "locale":Ljava/util/Locale;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_0

    .line 336
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "stripped":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 338
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 352
    .end local v3    # "stripped":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    .line 354
    invoke-direct {p0, v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter(Z)V

    .line 355
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->syncWheels()V

    .line 357
    :cond_1
    return-void

    .line 339
    .restart local v3    # "stripped":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_4

    .line 340
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 343
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 345
    :cond_3
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 348
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    :cond_4
    const-string v4, "TiUIDateSpinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale string \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not understood.  Using default locale."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMonthAdapter()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter(Z)V

    .line 194
    return-void
.end method

.method private setMonthAdapter(Z)V
    .locals 12
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 198
    const/4 v7, 0x1

    .line 199
    .local v7, "setMinMonth":I
    const/16 v6, 0xc

    .line 201
    .local v6, "setMaxMonth":I
    const/4 v1, -0x1

    .local v1, "currentMin":I
    const/4 v0, -0x1

    .line 202
    .local v0, "currentMax":I
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v9, :cond_0

    .line 203
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v1

    .line 204
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v0

    .line 207
    :cond_0
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 208
    .local v3, "maxYear":I
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 209
    .local v4, "minYear":I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v5

    .line 211
    .local v5, "selYear":I
    if-ne v5, v3, :cond_1

    .line 212
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 215
    :cond_1
    if-ne v5, v4, :cond_2

    .line 216
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 219
    :cond_2
    if-ne v1, v7, :cond_3

    if-ne v0, v6, :cond_3

    if-eqz p1, :cond_4

    .line 221
    :cond_3
    const/4 v8, 0x4

    .line 222
    .local v8, "width":I
    iget-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    if-eqz v9, :cond_5

    .line 223
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "format":Ljava/text/NumberFormat;
    :goto_0
    new-instance v9, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-direct {v9, v7, v6, v2, v8}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 229
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 230
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 231
    const/4 v9, 0x0

    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 234
    .end local v2    # "format":Ljava/text/NumberFormat;
    .end local v8    # "width":I
    :cond_4
    return-void

    .line 225
    .restart local v8    # "width":I
    :cond_5
    new-instance v2, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    invoke-direct {v2, p0, v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;-><init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Ljava/util/Locale;)V

    .restart local v2    # "format":Ljava/text/NumberFormat;
    move-object v9, v2

    .line 226
    check-cast v9, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->getLongestMonthName()I

    move-result v8

    goto :goto_0
.end method

.method private setYearAdapter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 179
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 180
    .local v1, "minYear":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 181
    .local v0, "maxYear":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {v2, v1, v0, v3, v4}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 186
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 187
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2, v3}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 188
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    goto :goto_0
.end method

.method private syncWheels()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 272
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 273
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 274
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 275
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 277
    return-void
.end method


# virtual methods
.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 1
    .param p1, "view"    # Lkankan/wheel/widget/WheelView;
    .param p2, "index"    # I

    .prologue
    .line 397
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "valueExistsInProxy":Z
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 110
    const/4 v1, 0x1

    .line 113
    :cond_0
    const-string v2, "minDate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "c":Ljava/util/Calendar;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    const-string v3, "minDate"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 116
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 119
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_1
    const-string v2, "maxDate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .restart local v0    # "c":Ljava/util/Calendar;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    const-string v3, "maxDate"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 122
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_2
    const-string v2, "locale"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    const-string v2, "locale"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setLocale(Ljava/lang/String;)V

    .line 129
    :cond_3
    const-string v2, "dayBeforeMonth"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const-string v2, "dayBeforeMonth"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    .line 133
    :cond_4
    const-string v2, "numericMonths"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    const-string v2, "numericMonths"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    .line 137
    :cond_5
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 142
    :cond_6
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 143
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 148
    :cond_7
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 150
    if-nez v1, :cond_8

    .line 151
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_8
    return-void

    .line 144
    :cond_9
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 145
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 159
    const-string v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 160
    check-cast v0, Ljava/util/Date;

    .line 161
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(J)V

    .line 165
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 166
    return-void

    .line 162
    :cond_1
    const-string v1, "locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValue()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(Ljava/util/Date;)V

    .line 330
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 282
    return-void
.end method

.method public setValue(JZ)V
    .locals 6
    .param p1, "value"    # J
    .param p3, "suppressEvent"    # Z

    .prologue
    .line 287
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 289
    .local v3, "oldVal":Ljava/util/Date;
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(J)V

    .line 290
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 291
    .local v2, "newVal":Ljava/util/Date;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 293
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(Ljava/util/Date;)V

    .line 299
    :cond_0
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 301
    .local v1, "isChanged":Z
    :goto_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setAdapters()V

    .line 303
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->syncWheels()V

    .line 304
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 307
    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->suppressChangeEvent:Z

    if-nez v4, :cond_1

    .line 308
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 309
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "change"

    invoke-virtual {v4, v5, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 314
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 294
    .end local v1    # "isChanged":Z
    :cond_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 296
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(Ljava/util/Date;)V

    goto :goto_0

    .line 299
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(Ljava/util/Date;Z)V

    .line 325
    return-void
.end method

.method public setValue(Ljava/util/Date;Z)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;
    .param p2, "suppressEvent"    # Z

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 319
    .local v0, "millis":J
    invoke-virtual {p0, v0, v1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 320
    return-void
.end method
