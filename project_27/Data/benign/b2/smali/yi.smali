.class Lyi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lyx;

.field final synthetic b:J

.field final synthetic c:Lyd;


# direct methods
.method constructor <init>(Lyd;Lyx;J)V
    .locals 1

    iput-object p1, p0, Lyi;->c:Lyd;

    iput-object p2, p0, Lyi;->a:Lyx;

    iput-wide p3, p0, Lyi;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lyi;->c:Lyd;

    iget-object v1, p0, Lyi;->a:Lyx;

    iget-wide v2, p0, Lyi;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lyd;->a(Lyx;J)V

    return-void
.end method
