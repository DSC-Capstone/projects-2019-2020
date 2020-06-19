.class Lbln;
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
.field final synthetic a:Lblm;


# direct methods
.method constructor <init>(Lblm;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lbln;->a:Lblm;

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
    .line 633
    iget-object v0, p0, Lbln;->a:Lblm;

    iget-object v0, v0, Lblm;->c:Lble;

    iget-object v1, p0, Lbln;->a:Lblm;

    iget-object v1, v1, Lblm;->a:Lblp;

    invoke-static {v0, v1, p1, p2}, Lble;->a(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 634
    return-void
.end method
