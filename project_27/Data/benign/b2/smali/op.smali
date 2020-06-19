.class Lop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb;


# instance fields
.field final synthetic a:Loo;


# direct methods
.method constructor <init>(Loo;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lop;->a:Loo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lop;->a:Loo;

    invoke-static {v0}, Loo;->a(Loo;)Lok;

    move-result-object v0

    iget-object v1, p0, Lop;->a:Loo;

    invoke-virtual {v0, v1}, Lok;->a(Loo;)V

    .line 667
    return-void
.end method
