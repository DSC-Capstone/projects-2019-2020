.class Labg;
.super Ljava/lang/Object;

# interfaces
.implements Labm;


# instance fields
.field final synthetic a:Labf;


# direct methods
.method constructor <init>(Labf;)V
    .locals 0

    iput-object p1, p0, Labg;->a:Labf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labo",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Labg;->a:Labf;

    iget-object v0, v0, Labf;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
