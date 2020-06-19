.class Labb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laaw;

.field final synthetic b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

.field final synthetic c:Laba;


# direct methods
.method constructor <init>(Laba;Laaw;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    iput-object p1, p0, Labb;->c:Laba;

    iput-object p2, p0, Labb;->a:Laaw;

    iput-object p3, p0, Labb;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Labb;->a:Laaw;

    iget-object v1, p0, Labb;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-static {v0, v1}, Laaw;->a(Laaw;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method
