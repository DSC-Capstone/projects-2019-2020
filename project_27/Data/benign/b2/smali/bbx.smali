.class Lbbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbcb",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method constructor <init>(Lbbr;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lbbx;->a:Lbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbbx;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lbbx;->a:Lbbr;

    invoke-static {v0}, Lbbr;->a(Lbbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method
