.class Lbli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbdb",
        "<",
        "Lbea;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lblp;

.field final synthetic b:Lble;


# direct methods
.method constructor <init>(Lble;Lblp;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lbli;->b:Lble;

    iput-object p2, p0, Lbli;->a:Lblp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbea;)V
    .locals 2

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lbli;->a:Lblp;

    invoke-virtual {v0, p1}, Lblp;->a(Ljava/lang/Exception;)Z

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lbli;->a:Lblp;

    iput-object p2, v0, Lblp;->p:Lbea;

    .line 361
    iget-object v0, p0, Lbli;->b:Lble;

    iget-object v1, p0, Lbli;->a:Lblp;

    invoke-virtual {v0, p2, v1}, Lble;->a(Lbea;Lblp;)V

    goto :goto_0
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    check-cast p2, Lbea;

    invoke-virtual {p0, p1, p2}, Lbli;->a(Ljava/lang/Exception;Lbea;)V

    return-void
.end method
