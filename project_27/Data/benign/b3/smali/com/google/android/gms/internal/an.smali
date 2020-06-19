.class Lcom/google/android/gms/internal/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/al;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->c:Lcom/google/android/gms/internal/al;

    iput-object p2, p0, Lcom/google/android/gms/internal/an;->a:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/gms/internal/an;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->a:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/an;->b:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/a/b;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
