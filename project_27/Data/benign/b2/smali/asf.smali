.class public final Lasf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lamy;


# direct methods
.method public constructor <init>(Lamy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laei;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamy;

    iput-object v0, p0, Lasf;->a:Lamy;

    return-void
.end method


# virtual methods
.method public a()Lamy;
    .locals 1

    iget-object v0, p0, Lasf;->a:Lamy;

    return-object v0
.end method
