.class public final Laxo;
.super Lavf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lavf",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lavg;


# instance fields
.field private final b:Lauj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Laxp;

    invoke-direct {v0}, Laxp;-><init>()V

    sput-object v0, Laxo;->a:Lavg;

    return-void
.end method

.method private constructor <init>(Lauj;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lavf;-><init>()V

    .line 51
    iput-object p1, p0, Laxo;->b:Lauj;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lauj;Laxp;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Laxo;-><init>(Lauj;)V

    return-void
.end method


# virtual methods
.method public a(Lazm;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lazm;->f()Lazm;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Laxo;->b:Lauj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauj;->a(Ljava/lang/Class;)Lavf;

    move-result-object v0

    .line 101
    instance-of v1, v0, Laxo;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lazm;->d()Lazm;

    .line 103
    invoke-virtual {p1}, Lazm;->e()Lazm;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lavf;->a(Lazm;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lazj;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Lazj;->f()Lazl;

    move-result-object v0

    .line 56
    sget-object v1, Laxq;->a:[I

    invoke-virtual {v0}, Lazl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lazj;->a()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lazj;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Laxo;->b(Lazj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lazj;->b()V

    .line 86
    :goto_1
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Lawi;

    invoke-direct {v0}, Lawi;-><init>()V

    .line 68
    invoke-virtual {p1}, Lazj;->c()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lazj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lazj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Laxo;->b(Lazj;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lazj;->d()V

    goto :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lazj;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lazj;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lazj;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lazj;->j()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
