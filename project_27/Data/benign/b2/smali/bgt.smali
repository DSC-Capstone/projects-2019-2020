.class public Lbgt;
.super Lbbl;
.source "SourceFile"


# static fields
.field static final synthetic e:Z


# instance fields
.field d:Lbaz;

.field private f:I

.field private g:I

.field private h:Lbgv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbgt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbgt;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lbbl;-><init>()V

    .line 9
    iput v0, p0, Lbgt;->f:I

    .line 10
    iput v0, p0, Lbgt;->g:I

    .line 11
    sget-object v0, Lbgv;->a:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    .line 46
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbgt;->d:Lbaz;

    return-void
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lbgt;->a(CC)Z

    move-result v0

    return v0
.end method

.method private a(CC)Z
    .locals 3

    .prologue
    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Lbgs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbgs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbgt;->a(Ljava/lang/Exception;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(C)Z
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lbgt;->a(CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lbbc;Lbaz;)V
    .locals 4

    .prologue
    .line 50
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 51
    sget-object v0, Lbgu;->a:[I

    iget-object v1, p0, Lbgt;->h:Lbgv;

    invoke-virtual {v1}, Lbgv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p2}, Lbaz;->g()C

    move-result v0

    .line 54
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 55
    sget-object v0, Lbgv;->b:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    .line 70
    :goto_1
    iget v0, p0, Lbgt;->f:I

    iput v0, p0, Lbgt;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {p0, v0}, Lbgt;->a(Ljava/lang/Exception;)V

    .line 118
    :cond_1
    :goto_2
    return-void

    .line 58
    :cond_2
    :try_start_1
    iget v1, p0, Lbgt;->f:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lbgt;->f:I

    .line 59
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 60
    iget v1, p0, Lbgt;->f:I

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lbgt;->f:I

    goto :goto_1

    .line 61
    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 62
    iget v1, p0, Lbgt;->f:I

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lbgt;->f:I

    goto :goto_1

    .line 63
    :cond_4
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x46

    if-gt v0, v1, :cond_5

    .line 64
    iget v1, p0, Lbgt;->f:I

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lbgt;->f:I

    goto :goto_1

    .line 66
    :cond_5
    new-instance v1, Lbgs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid chunk length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbgs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbgt;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 73
    :pswitch_1
    invoke-virtual {p2}, Lbaz;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lbgt;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lbgv;->d:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    goto/16 :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p2}, Lbaz;->d()I

    move-result v0

    .line 79
    iget v1, p0, Lbgt;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    iget v1, p0, Lbgt;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lbgt;->g:I

    .line 81
    iget v1, p0, Lbgt;->g:I

    if-nez v1, :cond_6

    .line 82
    sget-object v1, Lbgv;->e:Lbgv;

    iput-object v1, p0, Lbgt;->h:Lbgv;

    .line 84
    :cond_6
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lbgt;->d:Lbaz;

    invoke-virtual {p2, v1, v0}, Lbaz;->a(Lbaz;I)V

    .line 87
    iget-object v0, p0, Lbgt;->d:Lbaz;

    invoke-static {p0, v0}, Lbch;->a(Lbbc;Lbaz;)V

    goto/16 :goto_0

    .line 90
    :pswitch_3
    invoke-virtual {p2}, Lbaz;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lbgt;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lbgv;->f:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    goto/16 :goto_0

    .line 95
    :pswitch_4
    invoke-virtual {p2}, Lbaz;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lbgt;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lbgt;->f:I

    if-lez v0, :cond_7

    .line 98
    sget-object v0, Lbgv;->a:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    .line 105
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lbgt;->f:I

    goto/16 :goto_0

    .line 102
    :cond_7
    sget-object v0, Lbgv;->g:Lbgv;

    iput-object v0, p0, Lbgt;->h:Lbgv;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbgt;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 108
    :pswitch_5
    sget-boolean v0, Lbgt;->e:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
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

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    iget-object v0, p0, Lbgt;->h:Lbgv;

    sget-object v1, Lbgv;->g:Lbgv;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance p1, Lbgs;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lbgs;-><init>(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lbbl;->a(Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
