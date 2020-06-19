.class Lcom/novioplan/pollennieuws/MessagesActivity$10;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/MessagesActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

.field final synthetic val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/MessagesActivity;Lcom/novioplan/pollennieuws/data/ObservationData;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iput-object p2, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 545
    sget-object v1, Lcom/novioplan/pollennieuws/MessagesActivity;->tag:Ljava/lang/String;

    const-string v2, "deleting observation..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v1, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzDeleted(I)V

    .line 547
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationData;->getzServerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-virtual {v1, v3}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSynced(I)V

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->updateLog(Lcom/novioplan/pollennieuws/data/ObservationData;)I

    move-result v0

    .line 554
    .local v0, "i":I
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$900(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    .line 556
    if-lez v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$1000(Lcom/novioplan/pollennieuws/MessagesActivity;)Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    move-result-object v1

    invoke-static {}, Lcom/novioplan/pollennieuws/data/SQLiteHelper;->getObservations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->setObservationList(Ljava/util/List;)V

    .line 559
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$1000(Lcom/novioplan/pollennieuws/MessagesActivity;)Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->sort()V

    .line 560
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$1000(Lcom/novioplan/pollennieuws/MessagesActivity;)Lcom/novioplan/pollennieuws/data/ObservationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/data/ObservationAdapter;->notifyDataSetChanged()V

    .line 562
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 563
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-static {v1}, Lcom/novioplan/pollennieuws/MessagesActivity;->access$1100(Lcom/novioplan/pollennieuws/MessagesActivity;)V

    .line 564
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v1, v1, Lcom/novioplan/pollennieuws/MessagesActivity;->parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v1}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->fetchJSONStrings()V

    .line 565
    return-void

    .line 550
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$10;->val$observation:Lcom/novioplan/pollennieuws/data/ObservationData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/novioplan/pollennieuws/data/ObservationData;->setzSynced(I)V

    goto :goto_0
.end method
