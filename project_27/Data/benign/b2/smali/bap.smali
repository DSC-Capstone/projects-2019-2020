.class Lbap;
.super Lbdi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdi",
        "<",
        "Ljava/net/InetAddress;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lbap;->a:Lbag;

    invoke-direct {p0}, Lbdi;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 442
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lbap;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lbap;->b(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method
