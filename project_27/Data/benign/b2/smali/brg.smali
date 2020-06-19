.class public Lbrg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:Lbri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrg;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lbrh;

    invoke-direct {v0}, Lbrh;-><init>()V

    invoke-direct {p0, p1, v0}, Lbrg;-><init>(ILbri;)V

    .line 69
    return-void
.end method

.method public constructor <init>(ILbri;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lbrg;->b:I

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Lbqh;

    invoke-direct {v0}, Lbqh;-><init>()V

    throw v0

    .line 84
    :cond_0
    iput p1, p0, Lbrg;->a:I

    .line 85
    iput-object p2, p0, Lbrg;->c:Lbri;

    .line 86
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lbrg;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbrg;->b:I

    iget v1, p0, Lbrg;->a:I

    if-le v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lbrg;->c:Lbri;

    iget v1, p0, Lbrg;->a:I

    invoke-interface {v0, v1}, Lbri;->a(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lbrg;->a:I

    .line 97
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lbrg;->b:I

    .line 165
    return-void
.end method
