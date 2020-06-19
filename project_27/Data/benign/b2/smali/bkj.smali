.class Lbkj;
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
        "Lbmm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbkf;

.field final synthetic b:Lbki;


# direct methods
.method constructor <init>(Lbki;Lbkf;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lbkj;->b:Lbki;

    iput-object p2, p0, Lbkj;->a:Lbkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lbmm;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbkj;->a:Lbkf;

    invoke-virtual {v0, p1, p2}, Lbkf;->a(Ljava/lang/Exception;Lbmm;)V

    .line 66
    return-void
.end method

.method public synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Lbmm;

    invoke-virtual {p0, p1, p2}, Lbkj;->a(Ljava/lang/Exception;Lbmm;)V

    return-void
.end method
