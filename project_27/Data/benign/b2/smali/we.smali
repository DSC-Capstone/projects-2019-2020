.class public Lwe;
.super Lwf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwf",
        "<",
        "Lwe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lwf;-><init>()V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lwe;->a(Ljava/lang/String;Ljava/lang/String;)Lwf;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lwf;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lwe;
    .locals 1

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, Lwe;->a(Ljava/lang/String;Ljava/lang/String;)Lwf;

    return-object p0
.end method

.method public a(Z)Lwe;
    .locals 2

    const-string v0, "&exf"

    invoke-static {p1}, Lxh;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwe;->a(Ljava/lang/String;Ljava/lang/String;)Lwf;

    return-object p0
.end method
