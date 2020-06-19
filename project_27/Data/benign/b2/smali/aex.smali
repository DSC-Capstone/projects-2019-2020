.class public final Laex;
.super Ljava/lang/Object;


# static fields
.field public static a:Lanf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanf",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gms:common:stats:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanf;->a(Ljava/lang/String;Z)Lanf;

    move-result-object v0

    sput-object v0, Laex;->a:Lanf;

    return-void
.end method
