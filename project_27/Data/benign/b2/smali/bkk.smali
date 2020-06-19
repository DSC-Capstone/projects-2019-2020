.class Lbkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbku;

.field final synthetic b:Lbki;


# direct methods
.method constructor <init>(Lbki;Lbku;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lbkk;->b:Lbki;

    iput-object p2, p0, Lbkk;->a:Lbku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lbku;->a:Landroid/os/Handler;

    new-instance v1, Lbkl;

    invoke-direct {v1, p0}, Lbkl;-><init>(Lbkk;)V

    invoke-static {v0, v1}, Lbag;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
