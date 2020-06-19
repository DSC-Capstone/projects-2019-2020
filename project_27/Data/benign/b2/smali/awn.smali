.class Lawn;
.super Lawo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawi",
        "<TK;TV;>.awo<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lawm;


# direct methods
.method constructor <init>(Lawm;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lawn;->a:Lawm;

    iget-object v0, p1, Lawm;->a:Lawi;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lawo;-><init>(Lawi;Lawj;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lawn;->b()Lawp;

    move-result-object v0

    iget-object v0, v0, Lawp;->f:Ljava/lang/Object;

    return-object v0
.end method
