.class Lcom/novioplan/pollennieuws/Tab2Activity$1;
.super Ljava/lang/Object;
.source "Tab2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/Tab2Activity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab2Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab2Activity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab2Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab2Activity$1;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-virtual {v1, v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
