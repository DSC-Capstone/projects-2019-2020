.class public Lbgb;
.super Lbfs;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Lbjs;

.field private e:Lbag;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lbfs;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgb;->a:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lbgb;)Lbag;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbgb;->e:Lbag;

    return-object v0
.end method

.method public static a(Lbdj;Ljava/io/File;J)Lbgb;
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lbdj;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdr;

    .line 73
    instance-of v0, v0, Lbgb;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response cache already added to http client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Lbgb;

    invoke-direct {v0}, Lbgb;-><init>()V

    .line 77
    invoke-virtual {p0}, Lbdj;->d()Lbag;

    move-result-object v1

    iput-object v1, v0, Lbgb;->e:Lbag;

    .line 78
    new-instance v1, Lbjs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lbjs;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lbgb;->d:Lbjs;

    .line 79
    invoke-virtual {p0, v0}, Lbdj;->a(Lbdr;)V

    .line 80
    return-object v0
.end method

.method static synthetic b(Lbgb;)Lbjs;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbgb;->d:Lbjs;

    return-object v0
.end method

.method static synthetic c(Lbgb;)I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lbgb;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbgb;->b:I

    return v0
.end method

.method static synthetic d(Lbgb;)I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lbgb;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbgb;->c:I

    return v0
.end method


# virtual methods
.method public a(Lbds;)Lbcv;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 99
    new-instance v2, Lbfz;

    iget-object v1, p1, Lbds;->j:Lbea;

    invoke-virtual {v1}, Lbea;->d()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p1, Lbds;->j:Lbea;

    invoke-virtual {v3}, Lbea;->e()Lbfb;

    move-result-object v3

    invoke-virtual {v3}, Lbfb;->a()Lbfk;

    move-result-object v3

    invoke-static {v3}, Lbfx;->a(Ljava/util/Map;)Lbfx;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lbfz;-><init>(Landroid/net/Uri;Lbfx;)V

    .line 100
    iget-object v1, p1, Lbds;->i:Lbkc;

    const-string v3, "request-headers"

    invoke-virtual {v1, v3, v2}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lbgb;->d:Lbjs;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbgb;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lbfz;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    iget v1, p0, Lbgb;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbgb;->h:I

    .line 196
    :goto_0
    return-object v0

    .line 107
    :cond_1
    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lbds;->j:Lbea;

    invoke-virtual {v3}, Lbea;->d()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v1}, Lbjs;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :try_start_0
    iget-object v3, p0, Lbgb;->d:Lbjs;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lbjs;->a(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 113
    if-nez v1, :cond_2

    .line 114
    :try_start_1
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 122
    :goto_1
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I

    .line 123
    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v4, v3

    .line 118
    new-instance v3, Lbgj;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-direct {v3, v6}, Lbgj;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    iget-object v6, p1, Lbds;->j:Lbea;

    invoke-virtual {v6}, Lbea;->d()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p1, Lbds;->j:Lbea;

    invoke-virtual {v7}, Lbea;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lbds;->j:Lbea;

    invoke-virtual {v8}, Lbea;->e()Lbfb;

    move-result-object v8

    invoke-virtual {v8}, Lbfb;->a()Lbfk;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lbgj;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 129
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I

    .line 130
    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 134
    :cond_3
    new-instance v6, Lbgk;

    aget-object v7, v1, v9

    invoke-direct {v6, v3, v7}, Lbgk;-><init>(Lbgj;Ljava/io/FileInputStream;)V

    .line 139
    :try_start_3
    invoke-virtual {v6}, Lbgk;->getHeaders()Ljava/util/Map;

    move-result-object v7

    .line 140
    invoke-virtual {v6}, Lbgk;->a()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    .line 147
    if-eqz v7, :cond_4

    if-nez v8, :cond_5

    .line 148
    :cond_4
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I

    .line 149
    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v2

    .line 143
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I

    .line 144
    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 153
    :cond_5
    invoke-static {v7}, Lbfx;->a(Ljava/util/Map;)Lbfx;

    move-result-object v7

    .line 154
    new-instance v8, Lbgm;

    iget-object v9, p1, Lbds;->j:Lbea;

    invoke-virtual {v9}, Lbea;->d()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lbgm;-><init>(Landroid/net/Uri;Lbfx;)V

    .line 155
    const-string v9, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lbfx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v9, "Content-Encoding"

    invoke-virtual {v7, v9}, Lbfx;->c(Ljava/lang/String;)V

    .line 157
    const-string v9, "Transfer-Encoding"

    invoke-virtual {v7, v9}, Lbfx;->c(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lbgm;->a(JJ)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 161
    invoke-virtual {v8, v10, v11, v2}, Lbgm;->a(JLbfz;)Lbgo;

    move-result-object v2

    .line 163
    sget-object v9, Lbgo;->a:Lbgo;

    if-ne v2, v9, :cond_7

    .line 164
    iget-object v0, p1, Lbds;->j:Lbea;

    const-string v1, "Response retrieved from cache"

    invoke-virtual {v0, v1}, Lbea;->a(Ljava/lang/String;)V

    .line 165
    invoke-static {v3}, Lbgj;->a(Lbgj;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lbgh;

    invoke-direct {v0, p0, v6, v4, v5}, Lbgh;-><init>(Lbgb;Lbgk;J)V

    .line 166
    :goto_2
    iget-object v1, v0, Lbgi;->e:Lbaz;

    invoke-virtual {v7}, Lbfx;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 168
    iget-object v1, p0, Lbgb;->e:Lbag;

    new-instance v2, Lbgc;

    invoke-direct {v2, p0, p1, v0}, Lbgc;-><init>(Lbgb;Lbds;Lbgi;)V

    invoke-virtual {v1, v2}, Lbag;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 175
    iget v0, p0, Lbgb;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbgb;->g:I

    .line 176
    iget-object v0, p1, Lbds;->i:Lbkc;

    const-string v1, "socket-owner"

    invoke-virtual {v0, v1, p0}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lbde;

    invoke-direct {v0}, Lbde;-><init>()V

    .line 178
    invoke-virtual {v0}, Lbde;->f()Z

    goto/16 :goto_0

    .line 165
    :cond_6
    new-instance v0, Lbgi;

    invoke-direct {v0, p0, v6, v4, v5}, Lbgi;-><init>(Lbgb;Lbgk;J)V

    goto :goto_2

    .line 181
    :cond_7
    sget-object v3, Lbgo;->b:Lbgo;

    if-ne v2, v3, :cond_8

    .line 182
    iget-object v2, p1, Lbds;->j:Lbea;

    const-string v3, "Response may be served from conditional cache"

    invoke-virtual {v2, v3}, Lbea;->a(Ljava/lang/String;)V

    .line 183
    new-instance v2, Lbge;

    invoke-direct {v2}, Lbge;-><init>()V

    .line 184
    iput-object v1, v2, Lbge;->a:[Ljava/io/FileInputStream;

    .line 185
    iput-wide v4, v2, Lbge;->c:J

    .line 186
    iput-object v8, v2, Lbge;->d:Lbgm;

    .line 187
    iput-object v6, v2, Lbge;->b:Lbgk;

    .line 188
    iget-object v1, p1, Lbds;->i:Lbkc;

    const-string v3, "cache-data"

    invoke-virtual {v1, v3, v2}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 192
    :cond_8
    iget-object v2, p1, Lbds;->j:Lbea;

    const-string v3, "Response can not be served from cache"

    invoke-virtual {v2, v3}, Lbea;->c(Ljava/lang/String;)V

    .line 194
    iget v2, p0, Lbgb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbgb;->h:I

    .line 195
    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 120
    :catch_2
    move-exception v1

    move-object v1, v0

    goto/16 :goto_1
.end method

.method public a()Lbjs;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbgb;->d:Lbjs;

    return-object v0
.end method

.method public a(Lbdt;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    iget-object v0, p1, Lbdt;->e:Lbaw;

    const-class v1, Lbgi;

    invoke-static {v0, v1}, Lbch;->a(Lbaw;Ljava/lang/Class;)Lbaw;

    move-result-object v0

    check-cast v0, Lbgi;

    .line 221
    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p1, Lbdt;->f:Lbdz;

    invoke-interface {v0}, Lbdz;->c_()Lbfb;

    move-result-object v0

    const-string v1, "X-Served-From"

    const-string v2, "cache"

    invoke-virtual {v0, v1, v2}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p1, Lbdt;->i:Lbkc;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbge;

    .line 227
    iget-object v1, p1, Lbdt;->f:Lbdz;

    invoke-interface {v1}, Lbdz;->c_()Lbfb;

    move-result-object v1

    invoke-virtual {v1}, Lbfb;->a()Lbfk;

    move-result-object v1

    invoke-static {v1}, Lbfx;->a(Ljava/util/Map;)Lbfx;

    move-result-object v1

    .line 228
    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lbfx;->c(Ljava/lang/String;)V

    .line 229
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lbdt;->f:Lbdz;

    invoke-interface {v4}, Lbdz;->d_()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p1, Lbdt;->f:Lbdz;

    invoke-interface {v4}, Lbdz;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p1, Lbdt;->f:Lbdz;

    invoke-interface {v5}, Lbdz;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbfx;->a(Ljava/lang/String;)V

    .line 230
    new-instance v2, Lbgm;

    iget-object v3, p1, Lbdt;->j:Lbea;

    invoke-virtual {v3}, Lbea;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lbgm;-><init>(Landroid/net/Uri;Lbfx;)V

    .line 231
    iget-object v1, p1, Lbdt;->i:Lbkc;

    const-string v3, "response-headers"

    invoke-virtual {v1, v3, v2}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    if-eqz v0, :cond_3

    .line 233
    iget-object v1, v0, Lbge;->d:Lbgm;

    invoke-virtual {v1, v2}, Lbgm;->a(Lbgm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p1, Lbdt;->j:Lbea;

    const-string v3, "Serving response from conditional cache"

    invoke-virtual {v1, v3}, Lbea;->a(Ljava/lang/String;)V

    .line 235
    iget-object v1, v0, Lbge;->d:Lbgm;

    invoke-virtual {v1, v2}, Lbgm;->b(Lbgm;)Lbgm;

    move-result-object v1

    .line 236
    iget-object v2, p1, Lbdt;->f:Lbdz;

    new-instance v3, Lbfb;

    invoke-virtual {v1}, Lbgm;->a()Lbfx;

    move-result-object v4

    invoke-virtual {v4}, Lbfx;->f()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lbfb;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Lbdz;->a(Lbfb;)Lbdz;

    .line 237
    iget-object v2, p1, Lbdt;->f:Lbdz;

    invoke-virtual {v1}, Lbgm;->a()Lbfx;

    move-result-object v3

    invoke-virtual {v3}, Lbfx;->b()I

    move-result v3

    invoke-interface {v2, v3}, Lbdz;->a(I)Lbdz;

    .line 238
    iget-object v2, p1, Lbdt;->f:Lbdz;

    invoke-virtual {v1}, Lbgm;->a()Lbfx;

    move-result-object v1

    invoke-virtual {v1}, Lbfx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lbdz;->b(Ljava/lang/String;)Lbdz;

    .line 240
    iget-object v1, p1, Lbdt;->f:Lbdz;

    invoke-interface {v1}, Lbdz;->c_()Lbfb;

    move-result-object v1

    const-string v2, "X-Served-From"

    const-string v3, "conditional-cache"

    invoke-virtual {v1, v2, v3}, Lbfb;->a(Ljava/lang/String;Ljava/lang/String;)Lbfb;

    .line 241
    iget v1, p0, Lbgb;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbgb;->f:I

    .line 243
    new-instance v1, Lbgf;

    iget-object v2, v0, Lbge;->b:Lbgk;

    iget-wide v4, v0, Lbge;->c:J

    invoke-direct {v1, v2, v4, v5}, Lbgf;-><init>(Lbgk;J)V

    .line 244
    iget-object v0, p1, Lbdt;->d:Lbbc;

    invoke-virtual {v1, v0}, Lbgf;->a(Lbbc;)V

    .line 245
    iput-object v1, p1, Lbdt;->d:Lbbc;

    .line 246
    invoke-virtual {v1}, Lbgf;->e()V

    goto/16 :goto_0

    .line 251
    :cond_2
    iget-object v1, p1, Lbdt;->i:Lbkc;

    const-string v3, "cache-data"

    invoke-virtual {v1, v3}, Lbkc;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, v0, Lbge;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 255
    :cond_3
    iget-boolean v0, p0, Lbgb;->a:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p1, Lbdt;->i:Lbkc;

    const-string v1, "request-headers"

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfz;

    .line 259
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Lbgm;->a(Lbfz;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lbdt;->j:Lbea;

    invoke-virtual {v1}, Lbea;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 265
    :cond_4
    iget v0, p0, Lbgb;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbgb;->h:I

    .line 266
    iget-object v0, p1, Lbdt;->j:Lbea;

    const-string v1, "Response is not cacheable"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_5
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, p1, Lbdt;->j:Lbea;

    invoke-virtual {v3}, Lbea;->d()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v1}, Lbjs;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Lbfz;->a()Lbfx;

    move-result-object v0

    invoke-virtual {v2}, Lbgm;->b()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbfx;->a(Ljava/util/Set;)Lbfx;

    move-result-object v0

    .line 272
    new-instance v3, Lbgj;

    iget-object v4, p1, Lbdt;->j:Lbea;

    invoke-virtual {v4}, Lbea;->d()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p1, Lbdt;->j:Lbea;

    invoke-virtual {v2}, Lbgm;->a()Lbfx;

    move-result-object v2

    invoke-direct {v3, v4, v0, v5, v2}, Lbgj;-><init>(Landroid/net/Uri;Lbfx;Lbea;Lbfx;)V

    .line 273
    new-instance v0, Lbgd;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lbgd;-><init>(Lbgc;)V

    .line 274
    new-instance v2, Lbgl;

    invoke-direct {v2, p0, v1}, Lbgl;-><init>(Lbgb;Ljava/lang/String;)V

    .line 276
    :try_start_0
    invoke-virtual {v3, v2}, Lbgj;->a(Lbgl;)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lbgl;->a(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    iput-object v2, v0, Lbgd;->d:Lbgl;

    .line 288
    iget-object v1, p1, Lbdt;->d:Lbbc;

    invoke-virtual {v0, v1}, Lbgd;->a(Lbbc;)V

    .line 289
    iput-object v0, p1, Lbdt;->d:Lbbc;

    .line 291
    iget-object v1, p1, Lbdt;->i:Lbkc;

    const-string v2, "body-cacher"

    invoke-virtual {v1, v2, v0}, Lbkc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p1, Lbdt;->j:Lbea;

    const-string v1, "Caching response"

    invoke-virtual {v0, v1}, Lbea;->c(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lbgb;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbgb;->i:I

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v2}, Lbgl;->b()V

    .line 283
    iget v0, p0, Lbgb;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbgb;->h:I

    goto/16 :goto_0
.end method

.method public a(Lbdy;)V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p1, Lbdy;->i:Lbkc;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbge;

    .line 300
    if-eqz v0, :cond_0

    iget-object v1, v0, Lbge;->a:[Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, v0, Lbge;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 303
    :cond_0
    iget-object v0, p1, Lbdy;->e:Lbaw;

    const-class v1, Lbgi;

    invoke-static {v0, v1}, Lbch;->a(Lbaw;Ljava/lang/Class;)Lbaw;

    move-result-object v0

    check-cast v0, Lbgi;

    .line 304
    if-eqz v0, :cond_1

    .line 305
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    iget-object v0, v0, Lbgi;->d:Lbgk;

    invoke-virtual {v0}, Lbgk;->a()Ljava/io/FileInputStream;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lbka;->a([Ljava/io/Closeable;)V

    .line 307
    :cond_1
    iget-object v0, p1, Lbdy;->i:Lbkc;

    const-string v1, "body-cacher"

    invoke-virtual {v0, v1}, Lbkc;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgd;

    .line 308
    if-eqz v0, :cond_2

    .line 309
    iget-object v1, p1, Lbdy;->k:Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {v0}, Lbgd;->a()V

    .line 314
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    invoke-virtual {v0}, Lbgd;->b()V

    goto :goto_0
.end method
