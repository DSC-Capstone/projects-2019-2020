.class public final Lcom/google/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/a/a;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/a/a/a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/e;->a:Lcom/google/a/a/a;

    invoke-static {p2}, Lcom/google/a/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/a;Ljava/lang/String;Lcom/google/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/a/e;-><init>(Lcom/google/a/a/a;Ljava/lang/String;)V

    return-void
.end method
