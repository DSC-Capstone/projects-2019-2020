.class Lblo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lble;


# direct methods
.method constructor <init>(Lble;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lblo;->b:Lble;

    iput-object p2, p0, Lblo;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lblo;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 731
    return-void
.end method
