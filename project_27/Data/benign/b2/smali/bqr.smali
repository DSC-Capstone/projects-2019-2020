.class public abstract Lbqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbqs",
        "<TPAIR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final c:D

.field private final d:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 40
    sget-wide v0, Lbrk;->a:D

    mul-double/2addr v0, v2

    sput-wide v0, Lbqr;->a:D

    .line 47
    sget-wide v0, Lbrk;->b:D

    mul-double/2addr v0, v2

    sput-wide v0, Lbqr;->b:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-wide v0, Lbqr;->a:D

    iput-wide v0, p0, Lbqr;->c:D

    .line 68
    sget-wide v0, Lbqr;->b:D

    iput-wide v0, p0, Lbqr;->d:D

    .line 69
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lbqr;->c:D

    .line 80
    iput-wide p3, p0, Lbqr;->d:D

    .line 81
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lbqr;->c:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lbqr;->d:D

    return-wide v0
.end method
