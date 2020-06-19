.class public abstract Lbnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Laut;",
        ">",
        "Ljava/lang/Object;",
        "Lbjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Laut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbnm;->b:Ljava/lang/Class;

    .line 30
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lbbc;->n()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lbje;

    invoke-direct {v1}, Lbje;-><init>()V

    invoke-virtual {v1, p1}, Lbje;->a(Lbbc;)Lbda;

    move-result-object v1

    new-instance v2, Lbnn;

    invoke-direct {v2, p0, v0}, Lbnn;-><init>(Lbnm;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lbda;->b(Lbdb;)Lbdb;

    move-result-object v0

    check-cast v0, Lbda;

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lbnm;->b:Ljava/lang/Class;

    return-object v0
.end method
