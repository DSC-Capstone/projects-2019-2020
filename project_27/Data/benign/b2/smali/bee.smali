.class Lbee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcn;


# instance fields
.field final synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbee;->a:Lbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbee;->a:Lbed;

    invoke-virtual {v0, p1}, Lbed;->b(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method
