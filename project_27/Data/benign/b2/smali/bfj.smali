.class final Lbfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfi;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lbfi;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lbfj;->a:Lbfi;

    iput-object p2, p0, Lbfj;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lbfj;->a:Lbfi;

    iget-object v1, p0, Lbfj;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lbfi;->a(Lbfi;Ljava/lang/Exception;)V

    .line 56
    return-void
.end method
