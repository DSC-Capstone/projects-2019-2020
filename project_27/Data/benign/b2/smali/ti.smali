.class Lti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsw;


# direct methods
.method private constructor <init>(Lsw;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lti;->a:Lsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsw;Lsx;)V
    .locals 0

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Lti;-><init>(Lsw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lti;->a:Lsw;

    invoke-static {v0}, Lsw;->a(Lsw;)Lta;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti;->a:Lsw;

    invoke-static {v0}, Lsw;->a(Lsw;)Lta;

    move-result-object v0

    invoke-virtual {v0}, Lta;->getCount()I

    move-result v0

    iget-object v1, p0, Lti;->a:Lsw;

    invoke-static {v1}, Lsw;->a(Lsw;)Lta;

    move-result-object v1

    invoke-virtual {v1}, Lta;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lti;->a:Lsw;

    invoke-static {v0}, Lsw;->a(Lsw;)Lta;

    move-result-object v0

    invoke-virtual {v0}, Lta;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lti;->a:Lsw;

    iget v1, v1, Lsw;->b:I

    if-gt v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Lti;->a:Lsw;

    invoke-static {v0}, Lsw;->b(Lsw;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1729
    iget-object v0, p0, Lti;->a:Lsw;

    invoke-virtual {v0}, Lsw;->c()V

    .line 1731
    :cond_0
    return-void
.end method
