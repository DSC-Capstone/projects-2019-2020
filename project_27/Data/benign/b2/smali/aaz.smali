.class Laaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laaw;

.field final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic c:Laay;


# direct methods
.method constructor <init>(Laay;Laaw;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Laaz;->c:Laay;

    iput-object p2, p0, Laaz;->a:Laaw;

    iput-object p3, p0, Laaz;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laaz;->a:Laaw;

    iget-object v1, p0, Laaz;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Laaw;->c(Laaw;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
