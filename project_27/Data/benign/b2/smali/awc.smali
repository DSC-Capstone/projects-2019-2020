.class Lawc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lawq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lawq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lavr;


# direct methods
.method constructor <init>(Lavr;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lawc;->a:Lavr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
