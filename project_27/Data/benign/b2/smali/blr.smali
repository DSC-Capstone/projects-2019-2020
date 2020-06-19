.class Lblr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkt;

.field final synthetic b:Lblp;


# direct methods
.method constructor <init>(Lblp;Lbkt;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lblr;->b:Lblp;

    iput-object p2, p0, Lblr;->a:Lbkt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lblr;->b:Lblp;

    iget-object v0, v0, Lblp;->u:Lble;

    iget-object v0, v0, Lble;->A:Lbks;

    iget-object v1, p0, Lblr;->a:Lbkt;

    invoke-interface {v0, v1}, Lbks;->a(Lbkt;)V

    .line 479
    return-void
.end method
