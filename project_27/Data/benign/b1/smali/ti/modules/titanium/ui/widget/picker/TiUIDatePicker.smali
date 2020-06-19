.class public Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "TiUIDatePicker"


# instance fields
.field protected maxDate:Ljava/util/Date;

.field protected minDate:Ljava/util/Date;

.field protected minuteInterval:I

.field private suppressChangeEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    sget-boolean v1, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->DBG:Z

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "TiUIDatePicker"

    const-string v2, "Creating a date picker"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v0, Landroid/widget/DatePicker;

    invoke-direct {v0, p2}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "picker":Landroid/widget/DatePicker;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setNativeView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 5
    .param p1, "picker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 119
    .local v1, "targetCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 122
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 123
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 127
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 129
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 131
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 135
    :cond_1
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    if-nez v2, :cond_2

    .line 136
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 137
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 140
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "valueExistsInProxy":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    .line 56
    .local v4, "picker":Landroid/widget/DatePicker;
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 58
    const/4 v5, 0x1

    .line 60
    :cond_0
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 62
    .local v3, "minDateCalendar":Ljava/util/Calendar;
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 64
    invoke-virtual {v3, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v3, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 66
    const/16 v6, 0xe

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 70
    .end local v3    # "minDateCalendar":Ljava/util/Calendar;
    :cond_1
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 72
    .local v1, "maxDateCalendar":Ljava/util/Calendar;
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v1, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 75
    invoke-virtual {v1, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 80
    .end local v1    # "maxDateCalendar":Ljava/util/Calendar;
    :cond_2
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    .local v2, "mi":I
    if-lt v2, v7, :cond_3

    const/16 v6, 0x1e

    if-gt v2, v6, :cond_3

    rem-int/lit8 v6, v2, 0x3c

    if-nez v6, :cond_3

    .line 83
    iput v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minuteInterval:I

    .line 86
    .end local v2    # "mi":I
    :cond_3
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 87
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 88
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 90
    if-nez v5, :cond_4

    .line 91
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    .line 96
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-gtz v6, :cond_5

    .line 97
    const-string v6, "TiUIDatePicker"

    const-string v7, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 99
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 102
    :cond_5
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 108
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 110
    check-cast v0, Ljava/util/Date;

    .line 111
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(J)V

    .line 113
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 114
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 146
    return-void
.end method

.method public setValue(JZ)V
    .locals 5
    .param p1, "value"    # J
    .param p3, "suppressEvent"    # Z

    .prologue
    .line 150
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 151
    .local v1, "picker":Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 154
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 157
    return-void
.end method
