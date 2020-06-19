.class public Lbmh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lbmi;

.field private b:Lbea;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Exception;

.field private e:Lbkt;


# direct methods
.method public constructor <init>(Lbea;Lbmi;Lbkt;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbea;",
            "Lbmi;",
            "Lbkt;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lbmh;->b:Lbea;

    .line 11
    iput-object p2, p0, Lbmh;->a:Lbmi;

    .line 12
    iput-object p3, p0, Lbmh;->e:Lbkt;

    .line 13
    iput-object p4, p0, Lbmh;->d:Ljava/lang/Exception;

    .line 14
    iput-object p5, p0, Lbmh;->c:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lbmi;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbmh;->a:Lbmi;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lbmh;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbmh;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method public d()Lbkt;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbmh;->e:Lbkt;

    return-object v0
.end method
