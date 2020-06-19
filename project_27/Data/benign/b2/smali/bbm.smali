.class Lbbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbbl;


# direct methods
.method constructor <init>(Lbbl;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lbbm;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbbm;->a:Lbbl;

    invoke-virtual {v0, p1}, Lbbl;->a(Ljava/lang/Exception;)V

    .line 25
    return-void
.end method
