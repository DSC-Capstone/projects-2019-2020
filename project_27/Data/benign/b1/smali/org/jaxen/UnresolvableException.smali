.class public Lorg/jaxen/UnresolvableException;
.super Lorg/jaxen/JaxenException;
.source "UnresolvableException.java"


# static fields
.field private static final serialVersionUID:J = 0xd3bca92e26f2081L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method
