.class Labi;
.super Ljava/lang/Object;

# interfaces
.implements Ladm;


# instance fields
.field final synthetic a:Labf;


# direct methods
.method constructor <init>(Labf;)V
    .locals 0

    iput-object p1, p0, Labi;->a:Labf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Labi;->a:Labf;

    invoke-virtual {v0}, Labf;->d()Z

    move-result v0

    return v0
.end method
