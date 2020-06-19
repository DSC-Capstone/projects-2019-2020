.class public Lcom/a/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final i:Lcom/a/a/w;

.field private static final j:Lcom/a/a/w;

.field private static k:[Ljava/lang/Class;

.field private static l:[Ljava/lang/Class;

.field private static m:[Ljava/lang/Class;

.field private static final n:Ljava/util/HashMap;

.field private static final o:Ljava/util/HashMap;


# instance fields
.field a:Ljava/lang/String;

.field protected b:Lcom/a/b/a;

.field c:Ljava/lang/reflect/Method;

.field d:Ljava/lang/Class;

.field e:Lcom/a/a/r;

.field final f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final g:[Ljava/lang/Object;

.field private h:Ljava/lang/reflect/Method;

.field private p:Lcom/a/a/w;

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0}, Lcom/a/a/m;-><init>()V

    sput-object v0, Lcom/a/a/s;->i:Lcom/a/a/w;

    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    sput-object v0, Lcom/a/a/s;->j:Lcom/a/a/w;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/s;->k:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/s;->l:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/s;->m:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/s;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/s;->o:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/s;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/a/a/s;->h:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/a/a/s;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/s;->g:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/a/a/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/s;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[F)Lcom/a/a/s;
    .locals 1

    new-instance v0, Lcom/a/a/u;

    invoke-direct {v0, p0, p1}, Lcom/a/a/u;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[I)Lcom/a/a/s;
    .locals 1

    new-instance v0, Lcom/a/a/v;

    invoke-direct {v0, p0, p1}, Lcom/a/a/v;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/s;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/s;

    iget-object v1, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/s;->b:Lcom/a/b/a;

    iput-object v1, v0, Lcom/a/a/s;->b:Lcom/a/b/a;

    iget-object v1, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    invoke-virtual {v1}, Lcom/a/a/r;->b()Lcom/a/a/r;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/s;->e:Lcom/a/a/r;

    iget-object v1, p0, Lcom/a/a/s;->p:Lcom/a/a/w;

    iput-object v1, v0, Lcom/a/a/s;->p:Lcom/a/a/w;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->a(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/s;->q:Ljava/lang/Object;

    return-void
.end method

.method public varargs a([F)V
    .locals 1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/s;->d:Ljava/lang/Class;

    invoke-static {p1}, Lcom/a/a/r;->a([F)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    return-void
.end method

.method public varargs a([I)V
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/s;->d:Ljava/lang/Class;

    invoke-static {p1}, Lcom/a/a/r;->a([I)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/s;->p:Lcom/a/a/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/s;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/a/a/s;->i:Lcom/a/a/w;

    :goto_0
    iput-object v0, p0, Lcom/a/a/s;->p:Lcom/a/a/w;

    :cond_0
    iget-object v0, p0, Lcom/a/a/s;->p:Lcom/a/a/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    iget-object v1, p0, Lcom/a/a/s;->p:Lcom/a/a/w;

    invoke-virtual {v0, v1}, Lcom/a/a/r;->a(Lcom/a/a/w;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/a/s;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/a/a/s;->j:Lcom/a/a/w;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/s;->a()Lcom/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/a/a/s;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/s;->e:Lcom/a/a/r;

    invoke-virtual {v1}, Lcom/a/a/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
