.class Lcom/novioplan/pollennieuws/Tab2Activity$2;
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
    .line 112
    iput-object p1, p0, Lcom/novioplan/pollennieuws/Tab2Activity$2;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/novioplan/pollennieuws/Tab2Activity$2;->this$0:Lcom/novioplan/pollennieuws/Tab2Activity;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/Tab2Activity;->finish()V

    .line 117
    return-void
.end method
