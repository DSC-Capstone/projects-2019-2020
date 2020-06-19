.class Lcom/novioplan/pollennieuws/YearlyViewActivity$2;
.super Ljava/lang/Object;
.source "YearlyViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novioplan/pollennieuws/YearlyViewActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 103
    iput-object p1, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$2;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/novioplan/pollennieuws/YearlyViewActivity$2;->this$0:Lcom/novioplan/pollennieuws/YearlyViewActivity;

    invoke-static {v0}, Lcom/novioplan/pollennieuws/YearlyViewActivity;->access$100(Lcom/novioplan/pollennieuws/YearlyViewActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method
