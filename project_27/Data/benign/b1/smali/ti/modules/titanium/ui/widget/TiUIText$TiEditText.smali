.class public Lti/modules/titanium/ui/widget/TiUIText$TiEditText;
.super Landroid/widget/EditText;
.source "TiUIText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIText;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIText;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIText;->access$000(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "softKeyboardOnFocus"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIText;->access$100(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "softKeyboardOnFocus"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIText;->access$200(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "editable"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIText;->access$300(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "editable"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0
.end method
