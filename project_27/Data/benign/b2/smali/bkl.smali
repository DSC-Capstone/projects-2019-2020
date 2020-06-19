.class Lbkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkk;


# direct methods
.method constructor <init>(Lbkk;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbkl;->a:Lbkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lbkl;->a:Lbkk;

    iget-object v0, v0, Lbkk;->a:Lbku;

    iget-object v0, v0, Lbku;->x:Lbjy;

    iget-object v1, p0, Lbkl;->a:Lbkk;

    iget-object v1, v1, Lbkk;->b:Lbki;

    iget-object v1, v1, Lbki;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbjy;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 141
    return-void
.end method
