.class Lbrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqb;


# instance fields
.field final synthetic a:Lbrc;


# direct methods
.method constructor <init>(Lbrc;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lbrd;->a:Lbrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lbrd;->a:Lbrc;

    invoke-virtual {v0, p1}, Lbrc;->a([D)D

    move-result-wide v0

    return-wide v0
.end method
