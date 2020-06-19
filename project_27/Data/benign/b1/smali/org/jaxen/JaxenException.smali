.class public Lorg/jaxen/JaxenException;
.super Lorg/jaxen/saxpath/SAXPathException;
.source "JaxenException.java"


# static fields
.field static javaVersion:D = 0.0

.field private static final serialVersionUID:J = 0x62fd1ef8fa6978ffL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const-wide v1, 0x3ff6666666666666L    # 1.4

    sput-wide v1, Lorg/jaxen/JaxenException;->javaVersion:D

    .line 70
    :try_start_0
    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "versionString":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lorg/jaxen/JaxenException;->javaVersion:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "nestedException"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method
