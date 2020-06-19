.class Ldo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv;


# instance fields
.field final synthetic a:Ldm;

.field final synthetic b:Ldn;


# direct methods
.method constructor <init>(Ldn;Ldm;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Ldo;->b:Ldn;

    iput-object p2, p0, Ldo;->a:Ldm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2}, Ldm;->a(Landroid/view/View;I)V

    .line 160
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Ldo;->a:Ldm;

    new-instance v1, Ljg;

    invoke-direct {v1, p2}, Ljg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ldm;->a(Landroid/view/View;Ljg;)V

    .line 144
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2}, Ldm;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2, p3}, Ldm;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2}, Ldm;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 138
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2}, Ldm;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ldo;->a:Ldm;

    invoke-virtual {v0, p1, p2}, Ldm;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    return-void
.end method
