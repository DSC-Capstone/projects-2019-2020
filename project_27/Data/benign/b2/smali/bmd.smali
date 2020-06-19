.class public Lbmd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbbc;

.field b:J

.field c:Lbmi;

.field d:Lbkt;

.field e:Lbea;


# direct methods
.method public constructor <init>(Lbbc;JLbmi;Lbkt;Lbea;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p2, p0, Lbmd;->b:J

    .line 24
    iput-object p1, p0, Lbmd;->a:Lbbc;

    .line 25
    iput-object p4, p0, Lbmd;->c:Lbmi;

    .line 26
    iput-object p5, p0, Lbmd;->d:Lbkt;

    .line 27
    iput-object p6, p0, Lbmd;->e:Lbea;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lbbc;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbmd;->a:Lbbc;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lbmd;->b:J

    return-wide v0
.end method

.method public c()Lbmi;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbmd;->c:Lbmi;

    return-object v0
.end method

.method public d()Lbkt;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbmd;->d:Lbkt;

    return-object v0
.end method

.method public e()Lbea;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbmd;->e:Lbea;

    return-object v0
.end method
