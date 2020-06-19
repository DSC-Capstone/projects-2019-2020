.class public final enum Lcom/squareup/okhttp/ResponseSource;
.super Ljava/lang/Enum;
.source "ResponseSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/okhttp/ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE:Lcom/squareup/okhttp/ResponseSource;

.field public static final enum CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

.field private static final synthetic ENUM$VALUES:[Lcom/squareup/okhttp/ResponseSource;

.field public static final enum NETWORK:Lcom/squareup/okhttp/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/squareup/okhttp/ResponseSource;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/ResponseSource;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    .line 24
    new-instance v0, Lcom/squareup/okhttp/ResponseSource;

    const-string v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/ResponseSource;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    .line 31
    new-instance v0, Lcom/squareup/okhttp/ResponseSource;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/squareup/okhttp/ResponseSource;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/okhttp/ResponseSource;

    sget-object v1, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/squareup/okhttp/ResponseSource;->ENUM$VALUES:[Lcom/squareup/okhttp/ResponseSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/ResponseSource;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/squareup/okhttp/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/ResponseSource;

    return-object v0
.end method

.method public static values()[Lcom/squareup/okhttp/ResponseSource;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/squareup/okhttp/ResponseSource;->ENUM$VALUES:[Lcom/squareup/okhttp/ResponseSource;

    array-length v1, v0

    new-array v2, v1, [Lcom/squareup/okhttp/ResponseSource;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requiresConnection()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
