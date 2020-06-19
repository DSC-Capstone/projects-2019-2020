.class public Lbbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcr;


# static fields
.field static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lbbc;

.field b:Ljava/nio/ByteOrder;

.field c:Lbaz;

.field private e:Lbcd;

.field private f:Lbcd;

.field private g:Lbcd;

.field private h:Lbcd;

.field private i:Lbcd;

.field private j:Lbcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcb",
            "<[B>;"
        }
    .end annotation
.end field

.field private k:Lbcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcb",
            "<",
            "Lbaz;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lbcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcb",
            "<[B>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbbr;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lbbc;)V
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lbbs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbbs;-><init>(Lbbr;I)V

    iput-object v0, p0, Lbbr;->e:Lbcd;

    .line 187
    new-instance v0, Lbbt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lbbt;-><init>(Lbbr;I)V

    iput-object v0, p0, Lbbr;->f:Lbcd;

    .line 195
    new-instance v0, Lbbu;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lbbu;-><init>(Lbbr;I)V

    iput-object v0, p0, Lbbr;->g:Lbcd;

    .line 203
    new-instance v0, Lbbv;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lbbv;-><init>(Lbbr;I)V

    iput-object v0, p0, Lbbr;->h:Lbcd;

    .line 211
    new-instance v0, Lbbw;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lbbw;-><init>(Lbbr;I)V

    iput-object v0, p0, Lbbr;->i:Lbcd;

    .line 219
    new-instance v0, Lbbx;

    invoke-direct {v0, p0}, Lbbx;-><init>(Lbbr;)V

    iput-object v0, p0, Lbbr;->j:Lbcb;

    .line 226
    new-instance v0, Lbby;

    invoke-direct {v0, p0}, Lbby;-><init>(Lbbr;)V

    iput-object v0, p0, Lbbr;->k:Lbcb;

    .line 233
    new-instance v0, Lbbz;

    invoke-direct {v0, p0}, Lbbz;-><init>(Lbbr;)V

    iput-object v0, p0, Lbbr;->l:Lbcb;

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbr;->n:Ljava/util/ArrayList;

    .line 243
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lbbr;->b:Ljava/nio/ByteOrder;

    .line 327
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    iput-object v0, p0, Lbbr;->c:Lbaz;

    .line 251
    iput-object p1, p0, Lbbr;->a:Lbbc;

    .line 252
    iget-object v0, p0, Lbbr;->a:Lbbc;

    invoke-interface {v0, p0}, Lbbc;->a(Lbcr;)V

    .line 253
    return-void
.end method

.method static synthetic a(Lbbr;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lbbr;->n:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(BLbcr;)Lbbr;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    new-instance v1, Lbcc;

    invoke-direct {v1, p1, p2}, Lbcc;-><init>(BLbcr;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method

.method public a(ILbcb;)Lbbr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbcb",
            "<[B>;)",
            "Lbbr;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    new-instance v1, Lbca;

    invoke-direct {v1, p1, p2}, Lbca;-><init>(ILbcb;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    return-object p0
.end method

.method public a(Lbbc;Lbaz;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lbbr;->c:Lbaz;

    invoke-virtual {p2, v0}, Lbaz;->a(Lbaz;)V

    .line 331
    :cond_0
    :goto_0
    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbbr;->c:Lbaz;

    invoke-virtual {v0}, Lbaz;->d()I

    move-result v1

    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcd;

    iget v0, v0, Lbcd;->c:I

    if-lt v1, v0, :cond_1

    .line 332
    iget-object v0, p0, Lbbr;->c:Lbaz;

    iget-object v1, p0, Lbbr;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lbaz;->a(Ljava/nio/ByteOrder;)Lbaz;

    .line 333
    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcd;

    iget-object v1, p0, Lbbr;->c:Lbaz;

    invoke-virtual {v0, p1, v1}, Lbcd;->a(Lbbc;Lbaz;)Lbcd;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbbr;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lbbr;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lbbr;->c:Lbaz;

    invoke-virtual {v0, p2}, Lbaz;->a(Lbaz;)V

    .line 338
    :cond_2
    return-void
.end method
