.class Lcom/novioplan/pollennieuws/Tab5Activity$3;
.super Ljava/lang/Object;
.source "Tab5Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/Tab5Activity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/Tab5Activity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/Tab5Activity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab5Activity$3;->this$0:Lcom/novioplan/pollennieuws/Tab5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab5Activity$3;->this$0:Lcom/novioplan/pollennieuws/Tab5Activity;

    const-class v2, Lcom/novioplan/pollennieuws/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novioplan/pollennieuws/Tab5Activity$3;->this$0:Lcom/novioplan/pollennieuws/Tab5Activity;

    invoke-virtual {v1, v0}, Lcom/novioplan/pollennieuws/Tab5Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
