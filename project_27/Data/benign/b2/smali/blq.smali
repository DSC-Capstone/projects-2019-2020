.class Lblq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbdb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbdb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbdg;

.field final synthetic b:Lblp;


# direct methods
.method constructor <init>(Lblp;Lbdg;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lblq;->b:Lblp;

    iput-object p2, p0, Lblq;->a:Lbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lblq;->b:Lblp;

    iget-object v0, v0, Lblp;->t:Lbbc;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lblq;->a:Lbdg;

    iget-object v1, p0, Lblq;->b:Lblp;

    invoke-virtual {v1, p1, p2}, Lblp;->b(Ljava/lang/Exception;Ljava/lang/Object;)Lbmh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbdg;->b(Ljava/lang/Object;)Z

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lblq;->a:Lbdg;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    goto :goto_0
.end method
