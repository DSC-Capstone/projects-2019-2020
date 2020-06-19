.class Lbbw;
.super Lbcd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbbr;


# direct methods
.method constructor <init>(Lbbr;I)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lbbw;->a:Lbbr;

    invoke-direct {p0, p2}, Lbcd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)Lbcd;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lbbw;->a:Lbbr;

    invoke-static {v0}, Lbbr;->a(Lbbr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lbaz;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method
