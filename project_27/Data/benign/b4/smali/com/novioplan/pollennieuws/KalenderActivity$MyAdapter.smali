.class Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KalenderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/KalenderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/KalenderActivity;


# direct methods
.method public constructor <init>(Lcom/novioplan/pollennieuws/KalenderActivity;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "strings"    # [Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    .line 196
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 198
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f020003

    .line 202
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/novioplan/pollennieuws/KalenderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 203
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v0, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "row":Landroid/view/View;
    iget-object v5, p0, Lcom/novioplan/pollennieuws/KalenderActivity$MyAdapter;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-virtual {v5}, Lcom/novioplan/pollennieuws/KalenderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f050000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "items":[Ljava/lang/String;
    const v5, 0x7f090002

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 207
    .local v2, "iv":Landroid/widget/ImageView;
    const v5, 0x7f090001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 209
    .local v4, "tv":Landroid/widget/TextView;
    const-string v5, " "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    aget-object v5, v1, p1

    const-string v6, "Hazelaar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    const v5, 0x7f02000f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    :goto_0
    return-object v3

    .line 212
    :cond_1
    aget-object v5, v1, p1

    const-string v6, "Els"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    const v5, 0x7f02000a

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 214
    :cond_2
    aget-object v5, v1, p1

    const-string v6, "Es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const v5, 0x7f02000c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 216
    :cond_3
    aget-object v5, v1, p1

    const-string v6, "Berk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    const v5, 0x7f020006

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 218
    :cond_4
    aget-object v5, v1, p1

    const-string v6, "Eik"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    const v5, 0x7f020009

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 220
    :cond_5
    aget-object v5, v1, p1

    const-string v6, "Ceder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 221
    const v5, 0x7f020008

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 222
    :cond_6
    aget-object v5, v1, p1

    const-string v6, "Grote vossenstaart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 223
    const v5, 0x7f02000e

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 224
    :cond_7
    aget-object v5, v1, p1

    const-string v6, "Reukgras"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 225
    const v5, 0x7f020012

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 226
    :cond_8
    aget-object v5, v1, p1

    const-string v6, "Gestreepte witbol"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 227
    const v5, 0x7f02000d

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 228
    :cond_9
    aget-object v5, v1, p1

    const-string v6, "Engels raaigras"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 229
    const v5, 0x7f02000b

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 230
    :cond_a
    aget-object v5, v1, p1

    const-string v6, "Timoteegras"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 231
    const v5, 0x7f020013

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 232
    :cond_b
    aget-object v5, v1, p1

    const-string v6, "Zuring"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 233
    const v5, 0x7f020015

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 234
    :cond_c
    aget-object v5, v1, p1

    const-string v6, "Weegbree"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 235
    const v5, 0x7f020014

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 236
    :cond_d
    aget-object v5, v1, p1

    const-string v6, "Melganzenvoet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 237
    const v5, 0x7f020011

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 238
    :cond_e
    aget-object v5, v1, p1

    const-string v6, "Bijvoet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 239
    const v5, 0x7f020007

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 240
    :cond_f
    aget-object v5, v1, p1

    const-string v6, "Ambrosia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 241
    const v5, 0x7f020005

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 242
    :cond_10
    aget-object v5, v1, p1

    const-string v6, "Legend"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 243
    const/high16 v5, 0x7f020000

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 244
    :cond_11
    aget-object v5, v1, p1

    const-string v6, "hBomen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 245
    const v5, 0x7f020001

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 246
    :cond_12
    aget-object v5, v1, p1

    const-string v6, "hGrassen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 247
    const v5, 0x7f020002

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 248
    :cond_13
    aget-object v5, v1, p1

    const-string v6, "hKruiden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 249
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 250
    :cond_14
    aget-object v5, v1, p1

    const-string v6, "hLegend"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
