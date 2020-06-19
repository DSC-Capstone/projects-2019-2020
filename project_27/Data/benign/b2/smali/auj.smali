.class public final Lauj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Laus;

.field final b:Lava;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lazi",
            "<*>;",
            "Laup",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lazi",
            "<*>;",
            "Lavf",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lavg;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lavr;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 175
    sget-object v1, Lawe;->a:Lawe;

    sget-object v2, Lauc;->a:Lauc;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lavc;->a:Lavc;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    .line 175
    invoke-direct/range {v0 .. v11}, Lauj;-><init>(Lawe;Laui;Ljava/util/Map;ZZZZZZLavc;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lawe;Laui;Ljava/util/Map;ZZZZZZLavc;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawe;",
            "Laui;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lauq",
            "<*>;>;ZZZZZZ",
            "Lavc;",
            "Ljava/util/List",
            "<",
            "Lavg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lauj;->c:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lauj;->d:Ljava/util/Map;

    .line 124
    new-instance v0, Lauk;

    invoke-direct {v0, p0}, Lauk;-><init>(Lauj;)V

    iput-object v0, p0, Lauj;->a:Laus;

    .line 131
    new-instance v0, Laul;

    invoke-direct {v0, p0}, Laul;-><init>(Lauj;)V

    iput-object v0, p0, Lauj;->b:Lava;

    .line 187
    new-instance v0, Lavr;

    invoke-direct {v0, p3}, Lavr;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lauj;->f:Lavr;

    .line 188
    iput-boolean p4, p0, Lauj;->g:Z

    .line 189
    iput-boolean p6, p0, Lauj;->i:Z

    .line 190
    iput-boolean p7, p0, Lauj;->h:Z

    .line 191
    iput-boolean p8, p0, Lauj;->j:Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v1, Laya;->Q:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v1, Laxo;->a:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v1, Laya;->x:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Laya;->m:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Laya;->g:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Laya;->i:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Laya;->k:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    .line 212
    invoke-direct {p0, p10}, Lauj;->a(Lavc;)Lavf;

    move-result-object v3

    .line 211
    invoke-static {v1, v2, v3}, Laya;->a(Ljava/lang/Class;Ljava/lang/Class;Lavf;)Lavg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    .line 214
    invoke-direct {p0, p9}, Lauj;->a(Z)Lavf;

    move-result-object v3

    .line 213
    invoke-static {v1, v2, v3}, Laya;->a(Ljava/lang/Class;Ljava/lang/Class;Lavf;)Lavg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    .line 216
    invoke-direct {p0, p9}, Lauj;->b(Z)Lavf;

    move-result-object v3

    .line 215
    invoke-static {v1, v2, v3}, Laya;->a(Ljava/lang/Class;Ljava/lang/Class;Lavf;)Lavg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Laya;->r:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Laya;->t:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Laya;->z:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Laya;->B:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Laya;->v:Lavf;

    invoke-static {v1, v2}, Laya;->a(Ljava/lang/Class;Lavf;)Lavg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Laya;->w:Lavf;

    invoke-static {v1, v2}, Laya;->a(Ljava/lang/Class;Lavf;)Lavg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Laya;->D:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Laya;->F:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Laya;->J:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Laya;->O:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Laya;->H:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Laya;->d:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Laxf;->a:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Laya;->M:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Laxx;->a:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Laxv;->a:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Laya;->K:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Laxb;->a:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Laya;->R:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Laya;->b:Lavg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Laxd;

    iget-object v2, p0, Lauj;->f:Lavr;

    invoke-direct {v1, v2}, Laxd;-><init>(Lavr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Laxm;

    iget-object v2, p0, Lauj;->f:Lavr;

    invoke-direct {v1, v2, p5}, Laxm;-><init>(Lavr;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Laxh;

    iget-object v2, p0, Lauj;->f:Lavr;

    invoke-direct {v1, v2}, Laxh;-><init>(Lavr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Laxr;

    iget-object v2, p0, Lauj;->f:Lavr;

    invoke-direct {v1, v2, p2, p1}, Laxr;-><init>(Lavr;Laui;Lawe;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lauj;->e:Ljava/util/List;

    .line 246
    return-void
.end method

.method private a(Lavc;)Lavf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavc;",
            ")",
            "Lavf",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lavc;->a:Lavc;

    if-ne p1, v0, :cond_0

    .line 306
    sget-object v0, Laya;->n:Lavf;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lauo;

    invoke-direct {v0, p0}, Lauo;-><init>(Lauj;)V

    goto :goto_0
.end method

.method private a(Z)Lavf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lavf",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Laya;->p:Lavf;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laum;

    invoke-direct {v0, p0}, Laum;-><init>(Lauj;)V

    goto :goto_0
.end method

.method private a(Ljava/io/Writer;)Lazm;
    .locals 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lauj;->i:Z

    if-eqz v0, :cond_0

    .line 641
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    :cond_0
    new-instance v0, Lazm;

    invoke-direct {v0, p1}, Lazm;-><init>(Ljava/io/Writer;)V

    .line 644
    iget-boolean v1, p0, Lauj;->j:Z

    if-eqz v1, :cond_1

    .line 645
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lazm;->c(Ljava/lang/String;)V

    .line 647
    :cond_1
    iget-boolean v1, p0, Lauj;->g:Z

    invoke-virtual {v0, v1}, Lazm;->d(Z)V

    .line 648
    return-object v0
.end method

.method private a(D)V
    .locals 3

    .prologue
    .line 297
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    return-void
.end method

.method static synthetic a(Lauj;D)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lauj;->a(D)V

    return-void
.end method

.method private b(Z)Lavf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lavf",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    sget-object v0, Laya;->o:Lavf;

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laun;

    invoke-direct {v0, p0}, Laun;-><init>(Lauj;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lavg;Lazi;)Lavf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lavg;",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lauj;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    .line 425
    if-nez v1, :cond_1

    .line 426
    if-ne v0, p1, :cond_0

    .line 427
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {v0, p0, p2}, Lavg;->a(Lauj;Lazi;)Lavf;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    return-object v0

    .line 437
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lazi;)Lavf;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lazi",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lauj;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavf;

    .line 335
    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :cond_1
    iget-object v0, p0, Lauj;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 340
    const/4 v1, 0x0

    .line 341
    if-nez v0, :cond_5

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    iget-object v0, p0, Lauj;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 348
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laup;

    .line 349
    if-nez v0, :cond_0

    .line 354
    :try_start_0
    new-instance v3, Laup;

    invoke-direct {v3}, Laup;-><init>()V

    .line 355
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lauj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavg;

    .line 358
    invoke-interface {v0, p0, p1}, Lavg;->a(Lauj;Lazi;)Lavf;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v3, v0}, Laup;->a(Lavf;)V

    .line 361
    iget-object v3, p0, Lauj;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lauj;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 365
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-eqz v1, :cond_4

    .line 370
    iget-object v1, p0, Lauj;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lavf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lavf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, Lazi;->get(Ljava/lang/Class;)Lazi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v0

    return-object v0
.end method

.method public a(Laut;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laut;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0, p1, p2}, Lauj;->a(Laut;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 844
    invoke-static {p2}, Lawr;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Laut;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laut;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laxi;

    invoke-direct {v0, p1}, Laxi;-><init>(Laut;)V

    invoke-virtual {p0, v0, p2}, Lauj;->a(Lazj;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lazj;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lazj;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 797
    .line 798
    invoke-virtual {p1}, Lazj;->p()Z

    move-result v2

    .line 799
    invoke-virtual {p1, v1}, Lazj;->a(Z)V

    .line 801
    :try_start_0
    invoke-virtual {p1}, Lazj;->f()Lazl;

    .line 802
    const/4 v1, 0x0

    .line 803
    invoke-static {p2}, Lazi;->get(Ljava/lang/reflect/Type;)Lazi;

    move-result-object v0

    .line 804
    invoke-virtual {p0, v0}, Lauj;->a(Lazi;)Lavf;

    move-result-object v0

    .line 805
    invoke-virtual {v0, p1}, Lavf;->b(Lazj;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 822
    invoke-virtual {p1, v2}, Lazj;->a(Z)V

    :goto_0
    return-object v0

    .line 807
    :catch_0
    move-exception v0

    .line 812
    if-eqz v1, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p1, v2}, Lazj;->a(Z)V

    goto :goto_0

    .line 815
    :cond_0
    :try_start_1
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lazj;->a(Z)V

    throw v0

    .line 816
    :catch_1
    move-exception v0

    .line 817
    :try_start_2
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 818
    :catch_2
    move-exception v0

    .line 820
    new-instance v1, Lavb;

    invoke-direct {v1, v0}, Lavb;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Laut;Lazm;)V
    .locals 5

    .prologue
    .line 656
    invoke-virtual {p2}, Lazm;->g()Z

    move-result v1

    .line 657
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lazm;->b(Z)V

    .line 658
    invoke-virtual {p2}, Lazm;->h()Z

    move-result v2

    .line 659
    iget-boolean v0, p0, Lauj;->h:Z

    invoke-virtual {p2, v0}, Lazm;->c(Z)V

    .line 660
    invoke-virtual {p2}, Lazm;->i()Z

    move-result v3

    .line 661
    iget-boolean v0, p0, Lauj;->g:Z

    invoke-virtual {p2, v0}, Lazm;->d(Z)V

    .line 663
    :try_start_0
    invoke-static {p1, p2}, Laws;->a(Laut;Lazm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-virtual {p2, v1}, Lazm;->b(Z)V

    .line 668
    invoke-virtual {p2, v2}, Lazm;->c(Z)V

    .line 669
    invoke-virtual {p2, v3}, Lazm;->d(Z)V

    .line 671
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    :try_start_1
    new-instance v4, Lauu;

    invoke-direct {v4, v0}, Lauu;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lazm;->b(Z)V

    .line 668
    invoke-virtual {p2, v2}, Lazm;->c(Z)V

    .line 669
    invoke-virtual {p2, v3}, Lazm;->d(Z)V

    throw v0
.end method

.method public a(Laut;Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 628
    :try_start_0
    invoke-static {p2}, Laws;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lauj;->a(Ljava/io/Writer;)Lazm;

    move-result-object v0

    .line 629
    invoke-virtual {p0, p1, v0}, Lauj;->a(Laut;Lazm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lauj;->g:Z

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lauj;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lauj;->f:Lavr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
