.class Lbbz;
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
    .line 233
    iput-object p1, p0, Lbbz;->a:Lbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lbbz;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lbbz;->a:Lbbr;

    invoke-static {v0}, Lbbr;->a(Lbbr;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method
