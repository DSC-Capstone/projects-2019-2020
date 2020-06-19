.class Lbmp;
.super Lbjz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbjz",
        "<",
        "Ljava/lang/String;",
        "Lbmm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lbms;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbms",
            "<",
            "Ljava/lang/String;",
            "Lbmm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 13
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lbjz;-><init>(J)V

    .line 6
    new-instance v0, Lbms;

    invoke-direct {v0}, Lbms;-><init>()V

    iput-object v0, p0, Lbmp;->a:Lbms;

    .line 14
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 5
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lbmm;

    invoke-virtual {p0, p1, p2}, Lbmp;->b(Ljava/lang/String;Lbmm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Lbmm;)V
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lbmp;->a:Lbms;

    invoke-virtual {v0, p1, p2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lbmm;

    check-cast p4, Lbmm;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbmp;->a(ZLjava/lang/String;Lbmm;Lbmm;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lbmm;Lbmm;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lbjz;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lbmp;->a:Lbms;

    invoke-virtual {v0, p2, p3}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Lbmm;)J
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p2}, Lbmm;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
