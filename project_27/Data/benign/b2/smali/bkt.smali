.class public Lbkt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbfb;

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lbfb;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lbkt;->a:Lbfb;

    .line 11
    iput p1, p0, Lbkt;->b:I

    .line 12
    iput-object p2, p0, Lbkt;->c:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lbfb;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbkt;->a:Lbfb;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lbkt;->b:I

    return v0
.end method
