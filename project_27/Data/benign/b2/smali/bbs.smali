.class Lbbs;
.super Lbcd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method constructor <init>(Lbbr;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lbbs;->a:Lbbr;

    invoke-direct {p0, p2}, Lbcd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)Lbcd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lbbs;->a:Lbbr;

    invoke-static {v0}, Lbbr;->a(Lbbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v1
.end method
