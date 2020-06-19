.class Lbgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgf;


# direct methods
.method constructor <init>(Lbgf;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lbgg;->a:Lbgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lbgg;->a:Lbgf;

    invoke-virtual {v0}, Lbgf;->c()V

    .line 423
    return-void
.end method
