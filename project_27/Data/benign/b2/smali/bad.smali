.class Lbad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazx;


# direct methods
.method constructor <init>(Lazx;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lbad;->a:Lazx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lbad;->a:Lazx;

    iget-object v0, v0, Lazx;->j:Lbcu;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lbad;->a:Lazx;

    iget-object v0, v0, Lazx;->j:Lbcu;

    invoke-interface {v0}, Lbcu;->a()V

    .line 337
    :cond_0
    return-void
.end method
