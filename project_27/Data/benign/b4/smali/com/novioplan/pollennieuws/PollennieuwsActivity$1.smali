.class Lcom/novioplan/pollennieuws/PollennieuwsActivity$1;
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
    .line 161
    iput-object p1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$1;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novioplan/pollennieuws/PollennieuwsActivity$1;->this$0:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v1, v0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method
