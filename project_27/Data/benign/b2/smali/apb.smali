.class public final Lapb;
.super Ljava/lang/Object;

# interfaces
.implements Lzy;


# static fields
.field public static final a:Lapb;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Laak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapd;

    invoke-direct {v0}, Lapd;-><init>()V

    invoke-virtual {v0}, Lapd;->a()Lapb;

    move-result-object v0

    sput-object v0, Lapb;->a:Lapb;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Laak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lapb;->b:Z

    iput-boolean p2, p0, Lapb;->c:Z

    iput-object p3, p0, Lapb;->d:Ljava/lang/String;

    iput-object p4, p0, Lapb;->e:Laak;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Laak;Lapc;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lapb;-><init>(ZZLjava/lang/String;Laak;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lapb;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lapb;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Laak;
    .locals 1

    iget-object v0, p0, Lapb;->e:Laak;

    return-object v0
.end method
