.class final Lakq;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lafd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lafd;

    const/4 v1, 0x0

    new-instance v2, Lakr;

    const-string v3, "0\u0082\u0003\u00d90\u0082\u0002\u00c1\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c4:\u00e0&\u00ed\u00dc=\u00d40"

    invoke-static {v3}, Lafd;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lakr;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lakq;->a:[Lafd;

    return-void
.end method
