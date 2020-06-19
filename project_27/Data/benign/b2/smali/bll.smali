.class Lbll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lblk;


# direct methods
.method constructor <init>(Lblk;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lbll;->a:Lblk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lbll;->a:Lblk;

    iget-object v0, v0, Lblk;->n:Lble;

    iget-object v1, p0, Lbll;->a:Lblk;

    iget-object v1, v1, Lblk;->a:Lblp;

    iget-object v2, p0, Lbll;->a:Lblk;

    iget-object v2, v2, Lblk;->m:Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lble;->a(Lble;Lblp;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 597
    return-void
.end method
