.class public Lcom/novioplan/pollennieuws/data/ObservationListItem;
.super Landroid/widget/LinearLayout;
.source "ObservationListItem.java"


# instance fields
.field private dateMonth:Landroid/widget/TextView;

.field private dateNumber:Landroid/widget/TextView;

.field private dateTime:Landroid/widget/TextView;

.field private intensityImage:Landroid/widget/ImageView;

.field private locationMunicipality:Landroid/widget/TextView;

.field private observation:Lcom/novioplan/pollennieuws/data/ObservationData;

.field private observationIntensity:Landroid/widget/TextView;

.field private symptomList:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public static getImageId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getObservation()Lcom/novioplan/pollennieuws/data/ObservationData;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateNumber:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateMonth:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateTime:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->locationMunicipality:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observationIntensity:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->symptomList:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/novioplan/pollennieuws/data/ObservationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    .line 44
    return-void
.end method

.method public setObservation(Lcom/novioplan/pollennieuws/data/ObservationData;)V
    .locals 12
    .param p1, "observation"    # Lcom/novioplan/pollennieuws/data/ObservationData;

    .prologue
    const v11, 0x7f02004c

    const/4 v10, 0x1

    .line 53
    iput-object p1, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "formatterDateMonth":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "d"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "formatterDateNumber":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "H:mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "formatterDateTime":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateNumber:Landroid/widget/TextView;

    new-instance v5, Ljava/sql/Date;

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateMonth:Landroid/widget/TextView;

    new-instance v5, Ljava/sql/Date;

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->dateTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/sql/Date;

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzDate()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 62
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->locationMunicipality:Landroid/widget/TextView;

    const-string v5, "Locatie onbekend"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observationIntensity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v3, ""

    .line 69
    .local v3, "symptomString":Ljava/lang/String;
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom1()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ogen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom2()I

    move-result v4

    if-ne v4, v10, :cond_1

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "neus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom3()I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "moe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_2
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom4()I

    move-result v4

    if-ne v4, v10, :cond_3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "slecht slapen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom5()I

    move-result v4

    if-ne v4, v10, :cond_4

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "benauwdheid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_4
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v4}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzSymptom6()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    const-string v4, ""

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hoesten"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_5
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->symptomList:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzIntensity()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 113
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_7
    return-void

    .line 64
    .end local v3    # "symptomString":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->locationMunicipality:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 70
    .restart local v3    # "symptomString":Ljava/lang/String;
    :cond_7
    const-string v4, ","

    goto/16 :goto_1

    .line 73
    :cond_8
    const-string v4, ","

    goto/16 :goto_2

    .line 76
    :cond_9
    const-string v4, ","

    goto/16 :goto_3

    .line 79
    :cond_a
    const-string v4, ","

    goto/16 :goto_4

    .line 82
    :cond_b
    const-string v4, ","

    goto :goto_5

    .line 85
    :cond_c
    const-string v4, ","

    goto :goto_6

    .line 92
    :pswitch_0
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 96
    :pswitch_1
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 100
    :pswitch_2
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 105
    :pswitch_3
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 109
    :pswitch_4
    iget-object v4, p0, Lcom/novioplan/pollennieuws/data/ObservationListItem;->intensityImage:Landroid/widget/ImageView;

    const v5, 0x7f02004e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
