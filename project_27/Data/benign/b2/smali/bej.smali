.class Lbej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbae;


# instance fields
.field final synthetic a:Lbcp;

.field final synthetic b:Lbei;


# direct methods
.method constructor <init>(Lbei;Lbcp;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbej;->b:Lbei;

    iput-object p2, p0, Lbej;->a:Lbcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lazw;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lbej;->a:Lbcp;

    invoke-interface {v0, p1, p2}, Lbcp;->a(Ljava/lang/Exception;Lbaw;)V

    .line 76
    return-void
.end method
