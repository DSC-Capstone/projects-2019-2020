.class public Lti/modules/titanium/filesystem/FileProxy;
.super Lorg/appcelerator/titanium/TiFileProxy;
.source "FileProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "FileProxy"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceUrl"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "resolve"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;)V
    .locals 2
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "parts"    # [Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "resolve"    # Z

    .prologue
    .line 35
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 36
    return-void
.end method
