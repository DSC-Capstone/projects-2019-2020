.class Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;
.super Ljava/lang/Object;
.source "TiUISearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
