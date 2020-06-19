.class Lbju;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbjs;


# direct methods
.method constructor <init>(Lbjs;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lbju;->a:Lbjs;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lbju;->a:Lbjs;

    invoke-virtual {v0}, Lbjs;->b()V

    .line 270
    return-void
.end method
