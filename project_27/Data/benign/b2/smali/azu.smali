.class Lazu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazr;


# direct methods
.method constructor <init>(Lazr;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lazu;->a:Lazr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lazu;->a:Lazr;

    invoke-virtual {v0}, Lazr;->k()V

    .line 298
    return-void
.end method
