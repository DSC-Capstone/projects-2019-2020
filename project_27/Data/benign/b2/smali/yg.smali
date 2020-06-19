.class Lyg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyd;


# direct methods
.method constructor <init>(Lyd;)V
    .locals 0

    iput-object p1, p0, Lyg;->a:Lyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lyg;->a:Lyd;

    invoke-virtual {v0}, Lyd;->c()V

    return-void
.end method
