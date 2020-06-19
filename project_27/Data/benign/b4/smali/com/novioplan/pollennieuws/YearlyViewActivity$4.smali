.class Lcom/novioplan/pollennieuws/YearlyViewActivity$4;
.super Ljava/lang/Object;
.source "YearlyViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/YearlyViewActivity;->showAnnoyingAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/YearlyViewActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$4;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 332
    return-void
.end method
