.class Lbrw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# instance fields
.field private final a:Landroid/view/LayoutInflater$Factory;

.field private final b:Lbru;

.field private final c:Lbrr;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;Lbru;Lbrr;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lbrw;->a:Landroid/view/LayoutInflater$Factory;

    .line 234
    iput-object p2, p0, Lbrw;->b:Lbru;

    .line 235
    iput-object p3, p0, Lbrw;->c:Lbrr;

    .line 236
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v6, p0, Lbrw;->c:Lbrr;

    iget-object v0, p0, Lbrw;->b:Lbru;

    const/4 v1, 0x0

    iget-object v2, p0, Lbrw;->a:Landroid/view/LayoutInflater$Factory;

    .line 243
    invoke-interface {v2, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 242
    invoke-static/range {v0 .. v5}, Lbru;->a(Lbru;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {v6, v0, p2, p3}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbrw;->c:Lbrr;

    iget-object v1, p0, Lbrw;->a:Landroid/view/LayoutInflater$Factory;

    .line 249
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1, p2, p3}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
