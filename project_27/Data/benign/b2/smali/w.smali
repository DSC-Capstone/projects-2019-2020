.class Lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lv;


# direct methods
.method constructor <init>(Lv;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lw;->a:Lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lw;->a:Lv;

    invoke-virtual {v0}, Lv;->f()Z

    .line 459
    return-void
.end method
