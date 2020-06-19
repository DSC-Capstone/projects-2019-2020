.class public Lblc;
.super Lbla;
.source "SourceFile"


# static fields
.field static final synthetic e:Z


# instance fields
.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lblc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lblc;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbku;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbla;-><init>(Lbku;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lblc;->d:Z

    .line 41
    return-void
.end method
