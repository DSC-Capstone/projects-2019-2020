.class public final Lbpt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)Lbpm;
    .locals 4

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    sget-object v0, Lbpm;->f:Lbpm;

    .line 36
    :goto_0
    return-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lio/senseai/kelvinsdk/Temperature;->getTempC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 27
    const v2, 0x7f0b0008

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 28
    sget-object v0, Lbpm;->a:Lbpm;

    goto :goto_0

    .line 29
    :cond_2
    const v2, 0x7f0b0006

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    .line 30
    sget-object v0, Lbpm;->b:Lbpm;

    goto :goto_0

    .line 31
    :cond_3
    const v2, 0x7f0b0007

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 32
    sget-object v0, Lbpm;->c:Lbpm;

    goto :goto_0

    .line 33
    :cond_4
    const v2, 0x7f0b0009

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 34
    sget-object v0, Lbpm;->d:Lbpm;

    goto :goto_0

    .line 36
    :cond_5
    sget-object v0, Lbpm;->e:Lbpm;

    goto :goto_0
.end method

.method public static b(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lbpt;->a(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)Lbpm;

    move-result-object v0

    .line 47
    sget-object v1, Lbpu;->a:[I

    invoke-virtual {v0}, Lbpm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 51
    :pswitch_1
    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 53
    :pswitch_2
    const v0, 0x7f0c002c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 55
    :pswitch_3
    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_4
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 59
    :pswitch_5
    const v0, 0x7f0c0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static c(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 71
    invoke-static {p0, p1}, Lbpt;->a(Lio/senseai/kelvinsdk/Temperature;Landroid/content/res/Resources;)Lbpm;

    move-result-object v0

    .line 72
    sget-object v1, Lbpu;->a:[I

    invoke-virtual {v0}, Lbpm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :pswitch_0
    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_1
    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_2
    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 80
    :pswitch_3
    const v0, 0x7f0c002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_4
    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_5
    const v0, 0x7f0c0031

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
