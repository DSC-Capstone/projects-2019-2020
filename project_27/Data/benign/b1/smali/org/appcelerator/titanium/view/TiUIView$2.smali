.class Lorg/appcelerator/titanium/view/TiUIView$2;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;

.field final synthetic val$detector:Landroid/view/GestureDetector;

.field final synthetic val$touchable:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/GestureDetector;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$detector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$touchable:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 851
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 852
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v6}, Lorg/appcelerator/titanium/view/TiUIView;->access$200(Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v6}, Lorg/appcelerator/titanium/view/TiUIView;->access$200(Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_0
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 856
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    .line 888
    :goto_0
    return v5

    .line 860
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$300()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 861
    .local v3, "motionEvent":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 862
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 863
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v4, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 864
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 867
    .local v0, "actualAction":I
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$300()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 868
    .local v1, "actualEvent":Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v6, v6, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move v5, v2

    .line 869
    goto :goto_0

    .line 864
    .end local v0    # "actualAction":I
    .end local v1    # "actualEvent":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    .line 872
    .restart local v0    # "actualAction":I
    .restart local v1    # "actualEvent":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v6, v6, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v7, p2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 873
    if-eqz v2, :cond_4

    if-ne v0, v5, :cond_4

    .line 879
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$touchable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    :cond_4
    move v5, v2

    .line 881
    goto :goto_0

    .line 883
    .end local v0    # "actualAction":I
    .end local v1    # "actualEvent":Ljava/lang/String;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_5
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v5, v5, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 884
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v5, v5, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v6, p2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    :cond_6
    move v5, v2

    .line 888
    goto/16 :goto_0
.end method
