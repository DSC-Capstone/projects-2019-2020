.class Lcom/novioplan/pollennieuws/KalenderActivity$2;
.super Landroid/webkit/WebViewClient;
.source "KalenderActivity.java"


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
    .line 106
    iput-object p1, p0, Lcom/novioplan/pollennieuws/KalenderActivity$2;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/novioplan/pollennieuws/KalenderActivity$2;->this$0:Lcom/novioplan/pollennieuws/KalenderActivity;

    invoke-virtual {v0}, Lcom/novioplan/pollennieuws/KalenderActivity;->updateIntensities()V

    .line 113
    return-void
.end method
