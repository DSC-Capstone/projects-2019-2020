.class public final Laey;
.super Ljava/lang/Object;


# static fields
.field public static a:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Laez;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/Integer;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->a:Lanf;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->b:Lanf;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->c:Lanf;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->d:Lanf;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->e:Lanf;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Ljava/lang/Long;)Lanf;

    move-result-object v0

    sput-object v0, Laey;->f:Lanf;

    return-void
.end method
