.class final Lbhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjc;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lbhn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbhz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbhz;->a:Ljava/util/logging/Logger;

    .line 48
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lbhn;->a(Ljava/lang/String;)Lbhn;

    move-result-object v0

    sput-object v0, Lbhz;->b:Lbhn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1}, Lbhz;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbhz;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic a(SBS)S
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lbhz;->b(SBS)S

    move-result v0

    return v0
.end method

.method static synthetic b()Lbhn;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbhz;->b:Lbhn;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1}, Lbhz;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private static b(SBS)S
    .locals 4

    .prologue
    .line 644
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    int-to-short p0, v0

    .line 645
    :cond_0
    if-le p2, p0, :cond_1

    .line 646
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbhz;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 648
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lbbc;Lbhq;Z)Lbhp;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lbib;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, p2, v1, p3}, Lbib;-><init>(Lbbc;Lbhq;IZ)V

    return-object v0
.end method

.method public a(Lbax;Z)Lbhr;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lbie;

    invoke-direct {v0, p1, p2}, Lbie;-><init>(Lbax;Z)V

    return-object v0
.end method
