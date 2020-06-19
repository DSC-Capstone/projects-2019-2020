.class public Lbch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lbch;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbch;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbaw;Ljava/lang/Class;)Lbaw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lbaw;",
            ">(",
            "Lbaw;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-object p0

    :cond_0
    move-object v0, p0

    .line 215
    :cond_1
    instance-of v1, v0, Lbkd;

    if-eqz v1, :cond_2

    .line 216
    check-cast v0, Lbkd;

    invoke-interface {v0}, Lbkd;->o()Lbaw;

    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 218
    goto :goto_0

    .line 220
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Lbbc;Lbaz;)V
    .locals 4

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    :cond_0
    invoke-interface {p0}, Lbbc;->l()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lbbc;->f_()Lbcr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    if-lez v1, :cond_2

    .line 22
    invoke-interface {v0, p0, p1}, Lbcr;->a(Lbbc;Lbaz;)V

    .line 23
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lbbc;->f_()Lbcr;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lbbc;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-boolean v0, Lbch;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lbaz;->d()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lbbc;->l()Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-boolean v0, Lbch;->a:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all data was consumed by Util.emitAllData"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    return-void
.end method

.method public static a(Lbbc;Lbbf;Lbcn;)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lbci;

    invoke-direct {v0, p1}, Lbci;-><init>(Lbbf;)V

    .line 125
    invoke-interface {p0, v0}, Lbbc;->a(Lbcr;)V

    .line 126
    new-instance v0, Lbcj;

    invoke-direct {v0, p0}, Lbcj;-><init>(Lbbc;)V

    invoke-interface {p1, v0}, Lbbf;->a(Lbcu;)V

    .line 133
    new-instance v0, Lbck;

    invoke-direct {v0, p0, p1, p2}, Lbck;-><init>(Lbbc;Lbbf;Lbcn;)V

    .line 148
    invoke-interface {p0, v0}, Lbbc;->b(Lbcn;)V

    .line 149
    new-instance v1, Lbcl;

    invoke-direct {v1, v0}, Lbcl;-><init>(Lbcn;)V

    invoke-interface {p1, v1}, Lbbf;->a(Lbcn;)V

    .line 157
    return-void
.end method

.method public static a(Lbbc;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 235
    if-nez p0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-interface {p0}, Lbbc;->h()Lbcn;

    move-result-object v0

    invoke-static {v0, p1}, Lbch;->a(Lbcn;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lbbf;)V
    .locals 1

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-interface {p0}, Lbbf;->g()Lbcu;

    move-result-object v0

    invoke-static {v0}, Lbch;->a(Lbcu;)V

    goto :goto_0
.end method

.method public static a(Lbbf;Lbaz;Lbcn;)V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lbcm;

    invoke-direct {v0, p0, p1, p2}, Lbcm;-><init>(Lbbf;Lbaz;Lbcn;)V

    invoke-interface {p0, v0}, Lbbf;->a(Lbcu;)V

    .line 201
    invoke-interface {v0}, Lbcu;->a()V

    .line 202
    return-void
.end method

.method public static a(Lbbf;[BLbcn;)V
    .locals 2

    .prologue
    .line 204
    array-length v0, p1

    invoke-static {v0}, Lbaz;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    new-instance v1, Lbaz;

    invoke-direct {v1}, Lbaz;-><init>()V

    .line 208
    invoke-virtual {v1, v0}, Lbaz;->a(Ljava/nio/ByteBuffer;)Lbaz;

    .line 209
    invoke-static {p0, v1, p2}, Lbch;->a(Lbbf;Lbaz;Lbcn;)V

    .line 210
    return-void
.end method

.method public static a(Lbcn;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 242
    invoke-interface {p0, p1}, Lbcn;->a(Ljava/lang/Exception;)V

    .line 243
    :cond_0
    return-void
.end method

.method public static a(Lbcu;)V
    .locals 0

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0}, Lbcu;->a()V

    .line 254
    :cond_0
    return-void
.end method
