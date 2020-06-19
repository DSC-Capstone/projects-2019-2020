.class Lbeu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbaw;

.field final synthetic b:Lbeo;


# direct methods
.method constructor <init>(Lbeo;Lbaw;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lbeu;->b:Lbeo;

    iput-object p2, p0, Lbeu;->a:Lbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lbeu;->a:Lbaw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbaw;->a(Lbcn;)V

    .line 320
    iget-object v0, p0, Lbeu;->a:Lbaw;

    invoke-interface {v0}, Lbaw;->d()V

    .line 321
    return-void
.end method
