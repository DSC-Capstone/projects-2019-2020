.class Lazs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbaz;

.field final synthetic b:Lazr;


# direct methods
.method constructor <init>(Lazr;Lbaz;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lazs;->b:Lazr;

    iput-object p2, p0, Lazs;->a:Lbaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lazs;->b:Lazr;

    iget-object v1, p0, Lazs;->a:Lbaz;

    invoke-virtual {v0, v1}, Lazr;->a(Lbaz;)V

    .line 71
    return-void
.end method
