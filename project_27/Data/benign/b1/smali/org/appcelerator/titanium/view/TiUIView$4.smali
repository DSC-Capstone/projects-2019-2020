.class Lorg/appcelerator/titanium/view/TiUIView$4;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1008
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiUIView;->access$200(Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/view/TiUIView;->access$400(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1009
    return-void
.end method
