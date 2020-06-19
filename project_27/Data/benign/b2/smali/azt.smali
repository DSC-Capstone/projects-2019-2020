.class Lazt;
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
    .line 265
    iput-object p1, p0, Lazt;->a:Lazr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lazt;->a:Lazr;

    invoke-virtual {v0}, Lazr;->j()V

    .line 269
    return-void
.end method
