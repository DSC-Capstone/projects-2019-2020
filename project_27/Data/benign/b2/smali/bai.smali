.class Lbai;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbce;

.field final synthetic b:Ljava/util/PriorityQueue;

.field final synthetic c:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/lang/String;Lbce;Ljava/util/PriorityQueue;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lbai;->c:Lbag;

    iput-object p3, p0, Lbai;->a:Lbce;

    iput-object p4, p0, Lbai;->b:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lbai;->c:Lbag;

    iget-object v1, p0, Lbai;->a:Lbce;

    iget-object v2, p0, Lbai;->b:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v2}, Lbag;->a(Lbag;Lbce;Ljava/util/PriorityQueue;)V

    .line 569
    return-void
.end method
