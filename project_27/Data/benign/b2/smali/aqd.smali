.class Laqd;
.super Laqf;


# instance fields
.field final synthetic b:Lapn;

.field final synthetic c:Laqb;


# direct methods
.method constructor <init>(Laqb;Laag;Lapn;)V
    .locals 0

    iput-object p1, p0, Laqd;->c:Laqb;

    iput-object p3, p0, Laqd;->b:Lapn;

    invoke-direct {p0, p2}, Laqf;-><init>(Laag;)V

    return-void
.end method


# virtual methods
.method protected a(Laqt;)V
    .locals 1

    iget-object v0, p0, Laqd;->b:Lapn;

    invoke-virtual {p1, v0}, Laqt;->a(Lapn;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqd;->a(Laaq;)V

    return-void
.end method

.method protected synthetic b(Lzz;)V
    .locals 0

    check-cast p1, Laqt;

    invoke-virtual {p0, p1}, Laqd;->a(Laqt;)V

    return-void
.end method
