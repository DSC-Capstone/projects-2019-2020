.class Lavs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lawq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lawq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lauq;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lavr;


# direct methods
.method constructor <init>(Lavr;Lauq;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lavs;->c:Lavr;

    iput-object p2, p0, Lavs;->a:Lauq;

    iput-object p3, p0, Lavs;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lavs;->a:Lauq;

    iget-object v1, p0, Lavs;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lauq;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
