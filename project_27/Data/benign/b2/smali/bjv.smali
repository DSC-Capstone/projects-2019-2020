.class Lbjv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final synthetic b:Lbjs;


# direct methods
.method public constructor <init>(Lbjs;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 24
    iput-object p1, p0, Lbjv;->b:Lbjs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lbjv;->a:J

    .line 26
    return-void
.end method
