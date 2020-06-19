.class public Lorg/jaxen/pattern/UnionPattern;
.super Lorg/jaxen/pattern/Pattern;
.source "UnionPattern.java"


# instance fields
.field private lhs:Lorg/jaxen/pattern/Pattern;

.field private matchesNodeName:Ljava/lang/String;

.field private nodeType:S

.field private rhs:Lorg/jaxen/pattern/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jaxen/pattern/Pattern;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/jaxen/pattern/UnionPattern;->nodeType:S

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->matchesNodeName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jaxen/pattern/Pattern;Lorg/jaxen/pattern/Pattern;)V
    .locals 1
    .param p1, "lhs"    # Lorg/jaxen/pattern/Pattern;
    .param p2, "rhs"    # Lorg/jaxen/pattern/Pattern;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/jaxen/pattern/Pattern;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/jaxen/pattern/UnionPattern;->nodeType:S

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->matchesNodeName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    .line 73
    iput-object p2, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    .line 74
    invoke-direct {p0}, Lorg/jaxen/pattern/UnionPattern;->init()V

    .line 75
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 151
    iget-object v4, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v4}, Lorg/jaxen/pattern/Pattern;->getMatchType()S

    move-result v2

    .line 152
    .local v2, "type1":S
    iget-object v4, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v4}, Lorg/jaxen/pattern/Pattern;->getMatchType()S

    move-result v3

    .line 153
    .local v3, "type2":S
    if-ne v2, v3, :cond_1

    .end local v2    # "type1":S
    :goto_0
    iput-short v2, p0, Lorg/jaxen/pattern/UnionPattern;->nodeType:S

    .line 155
    iget-object v4, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v4}, Lorg/jaxen/pattern/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "name1":Ljava/lang/String;
    iget-object v4, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v4}, Lorg/jaxen/pattern/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "name2":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jaxen/pattern/UnionPattern;->matchesNodeName:Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iput-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->matchesNodeName:Ljava/lang/String;

    .line 163
    :cond_0
    return-void

    .line 153
    .end local v0    # "name1":Ljava/lang/String;
    .end local v1    # "name2":Ljava/lang/String;
    .restart local v2    # "type1":S
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLHS()Lorg/jaxen/pattern/Pattern;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    return-object v0
.end method

.method public getMatchType()S
    .locals 1

    .prologue
    .line 119
    iget-short v0, p0, Lorg/jaxen/pattern/UnionPattern;->nodeType:S

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->matchesNodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRHS()Lorg/jaxen/pattern/Pattern;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v1}, Lorg/jaxen/pattern/Pattern;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v1}, Lorg/jaxen/pattern/Pattern;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnionPatterns()[Lorg/jaxen/pattern/Pattern;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jaxen/pattern/Pattern;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .param p2, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lorg/jaxen/pattern/Pattern;->matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lorg/jaxen/pattern/Pattern;->matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLHS(Lorg/jaxen/pattern/Pattern;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/pattern/Pattern;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    .line 86
    invoke-direct {p0}, Lorg/jaxen/pattern/UnionPattern;->init()V

    .line 87
    return-void
.end method

.method public setRHS(Lorg/jaxen/pattern/Pattern;)V
    .locals 0
    .param p1, "rhs"    # Lorg/jaxen/pattern/Pattern;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    .line 97
    invoke-direct {p0}, Lorg/jaxen/pattern/UnionPattern;->init()V

    .line 98
    return-void
.end method

.method public simplify()Lorg/jaxen/pattern/Pattern;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->simplify()Lorg/jaxen/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    .line 132
    iget-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->simplify()Lorg/jaxen/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    .line 133
    invoke-direct {p0}, Lorg/jaxen/pattern/UnionPattern;->init()V

    .line 134
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ lhs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaxen/pattern/UnionPattern;->lhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rhs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaxen/pattern/UnionPattern;->rhs:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
