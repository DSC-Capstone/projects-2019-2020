.class Lbdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbea;

.field final synthetic b:I

.field final synthetic c:Lbdq;

.field final synthetic d:Lbgr;

.field final synthetic e:Lbdj;


# direct methods
.method constructor <init>(Lbdj;Lbea;ILbdq;Lbgr;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lbdk;->e:Lbdj;

    iput-object p2, p0, Lbdk;->a:Lbea;

    iput p3, p0, Lbdk;->b:I

    iput-object p4, p0, Lbdk;->c:Lbdq;

    iput-object p5, p0, Lbdk;->d:Lbgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    iget-object v0, p0, Lbdk;->e:Lbdj;

    iget-object v1, p0, Lbdk;->a:Lbea;

    iget v2, p0, Lbdk;->b:I

    iget-object v3, p0, Lbdk;->c:Lbdq;

    iget-object v4, p0, Lbdk;->d:Lbgr;

    invoke-static {v0, v1, v2, v3, v4}, Lbdj;->a(Lbdj;Lbea;ILbdq;Lbgr;)V

    .line 190
    return-void
.end method
