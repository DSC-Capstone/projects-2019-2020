.class public Lorg/jaxen/dom/DOMXPath;
.super Lorg/jaxen/BaseXPath;
.source "DOMXPath.java"


# static fields
.field private static final serialVersionUID:J = 0x4d09e6cb2bfa9573L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "xpathExpr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lorg/jaxen/dom/DocumentNavigator;->getInstance()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    .line 88
    return-void
.end method
