.class Lcom/novioplan/pollennieuws/KalenderActivity$1;
.super Ljava/lang/Object;
.source "KalenderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/KalenderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/KalenderActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/KalenderActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/novioplan/pollennieuws/KalenderActivity$1;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, ""

    .line 47
    .local v0, "calendarHtml":Ljava/lang/String;
    iget-object v3, p0, Lcom/novioplan/pollennieuws/KalenderActivity$1;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-virtual {v3}, Lcom/novioplan/pollennieuws/KalenderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f050000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "items":[Ljava/lang/String;
    aget-object v3, v2, p3

    const-string v4, "Ambrosia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v0, "ambrosia"

    .line 92
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/novioplan/pollennieuws/KalenderActivity$1;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    const-class v4, Lcom/novioplan/pollennieuws/AboutActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/novioplan/pollennieuws/data/Constants;->URL_TO_LOAD:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset/html/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v3, p0, Lcom/novioplan/pollennieuws/KalenderActivity$1;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-virtual {v3, v1}, Lcom/novioplan/pollennieuws/KalenderActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 51
    :cond_1
    aget-object v3, v2, p3

    const-string v4, "Berk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    const-string v0, "berk"

    goto :goto_0

    .line 53
    :cond_2
    aget-object v3, v2, p3

    const-string v4, "Bijvoet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    const-string v0, "bijvoet"

    goto :goto_0

    .line 55
    :cond_3
    aget-object v3, v2, p3

    const-string v4, "Ceder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    const-string v0, "ceder"

    goto :goto_0

    .line 57
    :cond_4
    aget-object v3, v2, p3

    const-string v4, "Eik"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    const-string v0, "eik"

    goto :goto_0

    .line 59
    :cond_5
    aget-object v3, v2, p3

    const-string v4, "Els"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 60
    const-string v0, "els"

    goto :goto_0

    .line 61
    :cond_6
    aget-object v3, v2, p3

    const-string v4, "Engels raaigras"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 62
    const-string v0, "engels_raaigras"

    goto :goto_0

    .line 63
    :cond_7
    aget-object v3, v2, p3

    const-string v4, "Es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 64
    const-string v0, "es"

    goto/16 :goto_0

    .line 65
    :cond_8
    aget-object v3, v2, p3

    const-string v4, "Gestreepte witbol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 66
    const-string v0, "gestreepte_witbol"

    goto/16 :goto_0

    .line 67
    :cond_9
    aget-object v3, v2, p3

    const-string v4, "Grote vossenstaart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 68
    const-string v0, "grote_vossenstaart"

    goto/16 :goto_0

    .line 69
    :cond_a
    aget-object v3, v2, p3

    const-string v4, "Hazelaar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 70
    const-string v0, "hazelaar"

    goto/16 :goto_0

    .line 71
    :cond_b
    aget-object v3, v2, p3

    const-string v4, "Kropaar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 72
    const-string v0, "kropaar"

    goto/16 :goto_0

    .line 73
    :cond_c
    aget-object v3, v2, p3

    const-string v4, "Melganzenvoet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 74
    const-string v0, "melganzenvoet"

    goto/16 :goto_0

    .line 75
    :cond_d
    aget-object v3, v2, p3

    const-string v4, "Reukgras"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 76
    const-string v0, "reukgras"

    goto/16 :goto_0

    .line 77
    :cond_e
    aget-object v3, v2, p3

    const-string v4, "Timoteegras"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 78
    const-string v0, "timoteegras"

    goto/16 :goto_0

    .line 79
    :cond_f
    aget-object v3, v2, p3

    const-string v4, "Weegbree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 80
    const-string v0, "weegbree"

    goto/16 :goto_0

    .line 81
    :cond_10
    aget-object v3, v2, p3

    const-string v4, "Zuring"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v0, "zuring"

    goto/16 :goto_0
.end method
