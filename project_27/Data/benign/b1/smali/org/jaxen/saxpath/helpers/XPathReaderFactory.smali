.class public Lorg/jaxen/saxpath/helpers/XPathReaderFactory;
.super Ljava/lang/Object;
.source "XPathReaderFactory.java"


# static fields
.field protected static final DEFAULT_DRIVER:Ljava/lang/String; = "org.jaxen.saxpath.base.XPathReader"

.field public static final DRIVER_PROPERTY:Ljava/lang/String; = "org.saxpath.driver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReader()Lorg/jaxen/saxpath/XPathReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 96
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    const-string v1, "org.saxpath.driver"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    const-string v0, "org.jaxen.saxpath.base.XPathReader"

    .line 110
    :cond_1
    invoke-static {v0}, Lorg/jaxen/saxpath/helpers/XPathReaderFactory;->createReader(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathReader;

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createReader(Ljava/lang/String;)Lorg/jaxen/saxpath/XPathReader;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "readerClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 137
    .local v1, "reader":Lorg/jaxen/saxpath/XPathReader;
    const/4 v3, 0x1

    :try_start_0
    const-class v4, Lorg/jaxen/saxpath/helpers/XPathReaderFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {p0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 144
    const-class v3, Lorg/jaxen/saxpath/XPathReader;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    new-instance v3, Lorg/jaxen/saxpath/SAXPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] does not implement the org.jaxen.saxpath.XPathReader interface."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/jaxen/saxpath/SAXPathException;

    invoke-direct {v3, v0}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 157
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "reader":Lorg/jaxen/saxpath/XPathReader;
    check-cast v1, Lorg/jaxen/saxpath/XPathReader;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    .restart local v1    # "reader":Lorg/jaxen/saxpath/XPathReader;
    return-object v1

    .line 159
    .end local v1    # "reader":Lorg/jaxen/saxpath/XPathReader;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/jaxen/saxpath/SAXPathException;

    invoke-direct {v3, v0}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 163
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/jaxen/saxpath/SAXPathException;

    invoke-direct {v3, v0}, Lorg/jaxen/saxpath/SAXPathException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
