.class Lbrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field protected final a:Landroid/view/LayoutInflater$Factory2;

.field protected final b:Lbrr;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lbrr;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lbrx;->a:Landroid/view/LayoutInflater$Factory2;

    .line 265
    iput-object p2, p0, Lbrx;->b:Lbrr;

    .line 266
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lbrx;->b:Lbrr;

    iget-object v1, p0, Lbrx;->a:Landroid/view/LayoutInflater$Factory2;

    .line 278
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1, p3, p4}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lbrx;->b:Lbrr;

    iget-object v1, p0, Lbrx;->a:Landroid/view/LayoutInflater$Factory2;

    .line 271
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1, p2, p3}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
