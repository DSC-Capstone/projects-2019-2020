.class public final enum Lbfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbfo;

.field public static final enum b:Lbfo;

.field public static final enum c:Lbfo;

.field public static final enum d:Lbfo;

.field private static final f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lbfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lbfo;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lbfo;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lbfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbfo;->a:Lbfo;

    .line 31
    new-instance v0, Lbfo;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lbfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbfo;->b:Lbfo;

    .line 43
    new-instance v0, Lbfo;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lbfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbfo;->c:Lbfo;

    .line 57
    new-instance v0, Lbfo;

    const-string v1, "HTTP_2"

    const-string v2, "h2-13"

    invoke-direct {v0, v1, v6, v2}, Lbfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbfo;->d:Lbfo;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lbfo;

    sget-object v1, Lbfo;->a:Lbfo;

    aput-object v1, v0, v3

    sget-object v1, Lbfo;->b:Lbfo;

    aput-object v1, v0, v4

    sget-object v1, Lbfo;->c:Lbfo;

    aput-object v1, v0, v5

    sget-object v1, Lbfo;->d:Lbfo;

    aput-object v1, v0, v6

    sput-object v0, Lbfo;->g:[Lbfo;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbfo;->f:Ljava/util/Hashtable;

    .line 63
    sget-object v0, Lbfo;->f:Ljava/util/Hashtable;

    sget-object v1, Lbfo;->a:Lbfo;

    invoke-virtual {v1}, Lbfo;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbfo;->a:Lbfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lbfo;->f:Ljava/util/Hashtable;

    sget-object v1, Lbfo;->b:Lbfo;

    invoke-virtual {v1}, Lbfo;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbfo;->b:Lbfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lbfo;->f:Ljava/util/Hashtable;

    sget-object v1, Lbfo;->c:Lbfo;

    invoke-virtual {v1}, Lbfo;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbfo;->c:Lbfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lbfo;->f:Ljava/util/Hashtable;

    sget-object v1, Lbfo;->d:Lbfo;

    invoke-virtual {v1}, Lbfo;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbfo;->d:Lbfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lbfo;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbfo;
    .locals 2

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbfo;->f:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfo;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbfo;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lbfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbfo;

    return-object v0
.end method

.method public static values()[Lbfo;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbfo;->g:[Lbfo;

    invoke-virtual {v0}, [Lbfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbfo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbfo;->e:Ljava/lang/String;

    return-object v0
.end method
