.class public Lorg/jaxen/FunctionCallException;
.super Lorg/jaxen/JaxenException;
.source "FunctionCallException.java"


# static fields
.field private static final serialVersionUID:J = 0x6dc12aebb5d5596fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "nestedException"    # Ljava/lang/Exception;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "nestedException"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/jaxen/FunctionCallException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
