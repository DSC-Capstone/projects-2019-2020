.class Lcom/novioplan/pollennieuws/MessagesActivity$7;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novioplan/pollennieuws/MessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novioplan/pollennieuws/MessagesActivity;


# direct methods
.method constructor <init>(Lcom/novioplan/pollennieuws/MessagesActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/novioplan/pollennieuws/MessagesActivity$7;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "MessagesActivity"

    const-string v1, "wworker sscheduled rrun"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/novioplan/pollennieuws/MessagesActivity$7;->this$0:Lcom/novioplan/pollennieuws/MessagesActivity;

    iget-object v0, v0, Lcom/novioplan/pollennieuws/MessagesActivity;->parent:Lcom/novioplan/pollennieuws/PollennieuwsActivity;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/PollennieuwsActivity;->fetchJSONStrings()V

    .line 322
    return-void
.end method
