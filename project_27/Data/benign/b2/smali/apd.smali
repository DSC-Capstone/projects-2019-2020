.class public final Lapd;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Laak;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lapb;
    .locals 6

    new-instance v0, Lapb;

    iget-boolean v1, p0, Lapd;->a:Z

    iget-boolean v2, p0, Lapd;->b:Z

    iget-object v3, p0, Lapd;->c:Ljava/lang/String;

    iget-object v4, p0, Lapd;->d:Laak;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lapb;-><init>(ZZLjava/lang/String;Laak;Lapc;)V

    return-object v0
.end method
