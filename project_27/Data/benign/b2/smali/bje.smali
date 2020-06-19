.class public Lbje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbjd",
        "<",
        "Lbaz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;)Lbda;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc;",
            ")",
            "Lbda",
            "<",
            "Lbaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    .line 21
    new-instance v1, Lbjf;

    invoke-direct {v1, p0, p1}, Lbjf;-><init>(Lbje;Lbbc;)V

    .line 27
    new-instance v2, Lbjg;

    invoke-direct {v2, p0, v0}, Lbjg;-><init>(Lbje;Lbaz;)V

    invoke-interface {p1, v2}, Lbbc;->a(Lbcr;)V

    .line 34
    new-instance v2, Lbjh;

    invoke-direct {v2, p0, v1, v0}, Lbjh;-><init>(Lbje;Lbdg;Lbaz;)V

    invoke-interface {p1, v2}, Lbbc;->b(Lbcn;)V

    .line 51
    return-object v1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lbaz;

    return-object v0
.end method
