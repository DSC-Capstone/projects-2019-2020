.class Lus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field private final a:Luc;


# direct methods
.method constructor <init>(Luc;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lus;->a:Luc;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lus;->a:Luc;

    invoke-virtual {p1, v0}, Luc;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
