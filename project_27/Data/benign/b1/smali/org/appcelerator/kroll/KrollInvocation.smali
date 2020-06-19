.class public Lorg/appcelerator/kroll/KrollInvocation;
.super Ljava/lang/Object;
.source "KrollInvocation.java"


# instance fields
.field private sourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollInvocation;->sourceUrl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method
