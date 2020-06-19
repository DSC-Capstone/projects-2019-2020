.class Lbjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbjm;


# direct methods
.method constructor <init>(Lbjm;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lbjn;->a:Lbjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lbjn;->a:Lbjm;

    iget-object v0, v0, Lbjm;->a:Lbjk;

    iget-object v1, p0, Lbjn;->a:Lbjm;

    iget-object v1, v1, Lbjm;->a:Lbjk;

    iget-object v1, v1, Lbjk;->f:Lbaz;

    invoke-static {v0, v1}, Lbch;->a(Lbbc;Lbaz;)V

    .line 84
    return-void
.end method
