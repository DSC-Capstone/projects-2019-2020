.class public final enum Lti/modules/titanium/network/NetworkModule$State;
.super Ljava/lang/Enum;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/NetworkModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/modules/titanium/network/NetworkModule$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/modules/titanium/network/NetworkModule$State;

.field public static final enum CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

.field public static final enum NOT_CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

.field public static final enum UNKNOWN:Lti/modules/titanium/network/NetworkModule$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lti/modules/titanium/network/NetworkModule$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModule$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/network/NetworkModule$State;->UNKNOWN:Lti/modules/titanium/network/NetworkModule$State;

    .line 46
    new-instance v0, Lti/modules/titanium/network/NetworkModule$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lti/modules/titanium/network/NetworkModule$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/network/NetworkModule$State;->CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    .line 56
    new-instance v0, Lti/modules/titanium/network/NetworkModule$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lti/modules/titanium/network/NetworkModule$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/network/NetworkModule$State;->NOT_CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lti/modules/titanium/network/NetworkModule$State;

    sget-object v1, Lti/modules/titanium/network/NetworkModule$State;->UNKNOWN:Lti/modules/titanium/network/NetworkModule$State;

    aput-object v1, v0, v2

    sget-object v1, Lti/modules/titanium/network/NetworkModule$State;->CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    aput-object v1, v0, v3

    sget-object v1, Lti/modules/titanium/network/NetworkModule$State;->NOT_CONNECTED:Lti/modules/titanium/network/NetworkModule$State;

    aput-object v1, v0, v4

    sput-object v0, Lti/modules/titanium/network/NetworkModule$State;->$VALUES:[Lti/modules/titanium/network/NetworkModule$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lti/modules/titanium/network/NetworkModule$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lti/modules/titanium/network/NetworkModule$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/network/NetworkModule$State;

    return-object v0
.end method

.method public static values()[Lti/modules/titanium/network/NetworkModule$State;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lti/modules/titanium/network/NetworkModule$State;->$VALUES:[Lti/modules/titanium/network/NetworkModule$State;

    invoke-virtual {v0}, [Lti/modules/titanium/network/NetworkModule$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/network/NetworkModule$State;

    return-object v0
.end method
