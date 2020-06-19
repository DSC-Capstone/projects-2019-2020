.class Lij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Lig;

.field final synthetic c:Lii;


# direct methods
.method private constructor <init>(Lii;Lig;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lij;->c:Lii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lij;->a:Ljava/lang/ref/WeakReference;

    .line 298
    iput-object p2, p0, Lij;->b:Lig;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lii;Lig;Landroid/view/View;Lih;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p3}, Lij;-><init>(Lii;Lig;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lij;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lij;->c:Lii;

    iget-object v2, p0, Lij;->b:Lig;

    invoke-static {v1, v2, v0}, Lii;->a(Lii;Lig;Landroid/view/View;)V

    .line 307
    :cond_0
    return-void
.end method
