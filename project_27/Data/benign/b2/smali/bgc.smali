.class Lbgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbds;

.field final synthetic b:Lbgi;

.field final synthetic c:Lbgb;


# direct methods
.method constructor <init>(Lbgb;Lbds;Lbgi;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbgc;->c:Lbgb;

    iput-object p2, p0, Lbgc;->a:Lbds;

    iput-object p3, p0, Lbgc;->b:Lbgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lbgc;->a:Lbds;

    iget-object v0, v0, Lbds;->a:Lbcp;

    const/4 v1, 0x0

    iget-object v2, p0, Lbgc;->b:Lbgi;

    invoke-interface {v0, v1, v2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 172
    iget-object v0, p0, Lbgc;->b:Lbgi;

    invoke-virtual {v0}, Lbgi;->c()V

    .line 173
    return-void
.end method
