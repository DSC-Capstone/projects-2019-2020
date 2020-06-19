.class public Lcs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lct;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    sput-object v0, Lcs;->a:Lct;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcu;

    invoke-direct {v0}, Lcu;-><init>()V

    sput-object v0, Lcs;->a:Lct;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcs;->a:Lct;

    invoke-interface {v0, p0}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcs;->a:Lct;

    invoke-interface {v0, p0}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
