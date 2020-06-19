.class Lcom/google/a/b/c;
.super Lcom/google/a/b/al;


# instance fields
.field final synthetic a:Lcom/google/a/b/b;


# direct methods
.method constructor <init>(Lcom/google/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/c;->a:Lcom/google/a/b/b;

    invoke-direct {p0}, Lcom/google/a/b/al;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/a/b/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/c;->a:Lcom/google/a/b/b;

    return-object v0
.end method
