.class Lbfc;
.super Lbfk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbfb;


# direct methods
.method constructor <init>(Lbfb;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbfc;->a:Lbfb;

    invoke-direct {p0}, Lbfk;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    return-object v0
.end method
