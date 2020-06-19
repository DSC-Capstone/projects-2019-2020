.class Laqe;
.super Laqf;


# instance fields
.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Laqb;


# direct methods
.method constructor <init>(Laqb;Laag;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Laqe;->c:Laqb;

    iput-object p3, p0, Laqe;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Laqf;-><init>(Laag;)V

    return-void
.end method


# virtual methods
.method protected a(Laqt;)V
    .locals 1

    iget-object v0, p0, Laqe;->b:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Laqt;->a(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqe;->a(Laaq;)V

    return-void
.end method

.method protected synthetic b(Lzz;)V
    .locals 0

    check-cast p1, Laqt;

    invoke-virtual {p0, p1}, Laqe;->a(Laqt;)V

    return-void
.end method
