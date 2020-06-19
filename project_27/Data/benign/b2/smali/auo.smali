.class Lauo;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lauj;


# direct methods
.method constructor <init>(Lauj;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lauo;->a:Lauj;

    invoke-direct {p0}, Lavf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazj;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    sget-object v1, Lazl;->i:Lazl;

    if-ne v0, v1, :cond_0

    .line 311
    invoke-virtual {p1}, Lazj;->j()V

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lazj;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lazm;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lazm;->b(Ljava/lang/String;)Lazm;

    goto :goto_0
.end method

.method public bridge synthetic a(Lazm;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lauo;->a(Lazm;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lazj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lauo;->a(Lazj;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
