.class Lban;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/net/InetAddress;

.field final synthetic b:Lbam;


# direct methods
.method constructor <init>(Lbam;[Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lban;->b:Lbam;

    iput-object p2, p0, Lban;->a:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lban;->b:Lbam;

    iget-object v0, v0, Lbam;->b:Lbdg;

    const/4 v1, 0x0

    iget-object v2, p0, Lban;->a:[Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Lbdg;->a(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 425
    return-void
.end method
