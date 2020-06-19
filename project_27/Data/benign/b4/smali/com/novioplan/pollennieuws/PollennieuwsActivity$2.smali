.class Lcom/novioplan/pollennieuws/PollennieuwsActivity$2;
.super Ljava/lang/Object;
.source "PollennieuwsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/PollennieuwsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/PollennieuwsActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$2;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 174
    return-void
.end method
