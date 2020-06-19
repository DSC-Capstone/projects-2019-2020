.class Luy;
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Luy;->a:Luc;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Luy;->a:Luc;

    invoke-virtual {p1, v0}, Luc;->c(Luc;)Z

    move-result v0

    return v0
.end method
