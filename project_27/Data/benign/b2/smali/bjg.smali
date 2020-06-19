.class Lbjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# instance fields
.field final synthetic a:Lbaz;

.field final synthetic b:Lbje;


# direct methods
.method constructor <init>(Lbje;Lbaz;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbjg;->b:Lbje;

    iput-object p2, p0, Lbjg;->a:Lbaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbjg;->a:Lbaz;

    invoke-virtual {p2, v0}, Lbaz;->a(Lbaz;)V

    .line 31
    return-void
.end method
