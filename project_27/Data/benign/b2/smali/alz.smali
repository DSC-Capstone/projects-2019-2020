.class final Lalz;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Lama;

    const-string v3, "0\u0082\u0003\u00ed0\u0082\u0002\u00d5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a7\u00cb\u0092\u00c6\u0006\u0095N\u000c0"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lama;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lamb;

    const-string v3, "0\u0082\u0003\u00ed0\u0082\u0002\u00d5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0089ai\u00b21\u00c1\u0018\u00e60"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lamb;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lalz;->a:[Lafd;

    return-void
.end method
