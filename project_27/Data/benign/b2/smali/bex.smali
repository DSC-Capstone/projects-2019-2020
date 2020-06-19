.class Lbex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbaw;

.field b:J

.field final synthetic c:Lbeo;


# direct methods
.method public constructor <init>(Lbeo;Lbaw;)V
    .locals 2

    .prologue
    .line 98
    iput-object p1, p0, Lbex;->c:Lbeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbex;->b:J

    .line 99
    iput-object p2, p0, Lbex;->a:Lbaw;

    .line 100
    return-void
.end method
