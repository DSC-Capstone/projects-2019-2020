.class public Luq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field private a:Lut;


# direct methods
.method public constructor <init>(Lut;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Luq;->a:Lut;

    .line 219
    return-void
.end method


# virtual methods
.method public a(Lut;)Luq;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lup;

    iget-object v1, p0, Luq;->a:Lut;

    invoke-direct {v0, v1, p1}, Lup;-><init>(Lut;Lut;)V

    iput-object v0, p0, Luq;->a:Lut;

    .line 230
    return-object p0
.end method

.method public a(Luc;)Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Luq;->a:Lut;

    invoke-interface {v0, p1}, Lut;->a(Luc;)Z

    move-result v0

    return v0
.end method

.method public b(Lut;)Luq;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lvg;

    iget-object v1, p0, Luq;->a:Lut;

    invoke-direct {v0, v1, p1}, Lvg;-><init>(Lut;Lut;)V

    iput-object v0, p0, Luq;->a:Lut;

    .line 243
    return-object p0
.end method
