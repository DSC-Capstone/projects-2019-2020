.class Lbnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbea;

.field final synthetic b:Lbku;

.field final synthetic c:Lbnw;

.field final synthetic d:Lbdb;

.field final synthetic e:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Lbea;Lbku;Lbnw;Lbdb;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbnv;->e:Lbnt;

    iput-object p2, p0, Lbnv;->a:Lbea;

    iput-object p3, p0, Lbnv;->b:Lbku;

    iput-object p4, p0, Lbnv;->c:Lbnw;

    iput-object p5, p0, Lbnv;->d:Lbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 92
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lbnv;->a:Lbea;

    invoke-virtual {v0}, Lbea;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 93
    new-instance v1, Lbbj;

    iget-object v0, p0, Lbnv;->b:Lbku;

    invoke-virtual {v0}, Lbku;->e()Lbdj;

    move-result-object v0

    invoke-virtual {v0}, Lbdj;->d()Lbag;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lbbj;-><init>(Lbag;Ljava/io/File;)V

    .line 94
    iget-object v0, p0, Lbnv;->c:Lbnw;

    invoke-virtual {v0, v1}, Lbnw;->b(Ljava/lang/Object;)Z

    .line 95
    iget-object v7, p0, Lbnv;->d:Lbdb;

    new-instance v0, Lbmd;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    sget-object v4, Lbmi;->b:Lbmi;

    iget-object v6, p0, Lbnv;->a:Lbea;

    invoke-direct/range {v0 .. v6}, Lbmd;-><init>(Lbbc;JLbmi;Lbkt;Lbea;)V

    invoke-interface {v7, v5, v0}, Lbdb;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 96
    return-void
.end method
