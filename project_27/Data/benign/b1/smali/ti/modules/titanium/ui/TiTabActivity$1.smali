.class Lti/modules/titanium/ui/TiTabActivity$1;
.super Ljava/lang/Object;
.source "TiTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiTabActivity;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiTabActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lti/modules/titanium/ui/TiTabActivity$1;->this$0:Lti/modules/titanium/ui/TiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lti/modules/titanium/ui/TiTabActivity$1;->this$0:Lti/modules/titanium/ui/TiTabActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
