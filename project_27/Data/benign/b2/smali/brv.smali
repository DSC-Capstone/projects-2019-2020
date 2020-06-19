.class Lbrv;
.super Lbrx;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final c:Lbru;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lbru;Lbrr;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1, p3}, Lbrx;-><init>(Landroid/view/LayoutInflater$Factory2;Lbrr;)V

    .line 294
    iput-object p2, p0, Lbrv;->c:Lbru;

    .line 295
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    .line 299
    iget-object v6, p0, Lbrv;->b:Lbrr;

    iget-object v0, p0, Lbrv;->c:Lbru;

    iget-object v1, p0, Lbrv;->a:Landroid/view/LayoutInflater$Factory2;

    .line 301
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 300
    invoke-static/range {v0 .. v5}, Lbru;->a(Lbru;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-virtual {v6, v0, p3, p4}, Lbrr;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
