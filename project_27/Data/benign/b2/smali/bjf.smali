.class Lbjf;
.super Lbdg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdg",
        "<",
        "Lbaz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbc;

.field final synthetic b:Lbje;


# direct methods
.method constructor <init>(Lbje;Lbbc;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lbjf;->b:Lbje;

    iput-object p2, p0, Lbjf;->a:Lbbc;

    invoke-direct {p0}, Lbdg;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbjf;->a:Lbbc;

    invoke-interface {v0}, Lbbc;->d()V

    .line 25
    return-void
.end method
