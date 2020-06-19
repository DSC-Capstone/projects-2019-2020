.class Lawl;
.super Lawo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawi",
        "<TK;TV;>.awo<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lawk;


# direct methods
.method constructor <init>(Lawk;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lawl;->a:Lawk;

    iget-object v0, p1, Lawk;->a:Lawi;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lawo;-><init>(Lawi;Lawj;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lawl;->b()Lawp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lawl;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
