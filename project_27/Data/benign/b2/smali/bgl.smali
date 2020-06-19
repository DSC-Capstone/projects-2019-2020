.class Lbgl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/io/File;

.field c:[Ljava/io/FileOutputStream;

.field d:Z

.field final synthetic e:Lbgb;


# direct methods
.method public constructor <init>(Lbgb;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 790
    iput-object p1, p0, Lbgl;->e:Lbgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p2, p0, Lbgl;->a:Ljava/lang/String;

    .line 792
    invoke-static {p1}, Lbgb;->b(Lbgb;)Lbjs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbjs;->a(I)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lbgl;->b:[Ljava/io/File;

    .line 793
    new-array v0, v1, [Ljava/io/FileOutputStream;

    iput-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    .line 794
    return-void
.end method


# virtual methods
.method a(I)Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lbgl;->b:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 808
    :cond_0
    iget-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 798
    iget-boolean v0, p0, Lbgl;->d:Z

    if-eqz v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lbgl;->e:Lbgb;

    invoke-static {v0}, Lbgb;->b(Lbgb;)Lbjs;

    move-result-object v0

    iget-object v1, p0, Lbgl;->a:Ljava/lang/String;

    iget-object v2, p0, Lbgl;->b:[Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lbjs;->a(Ljava/lang/String;[Ljava/io/File;)V

    .line 801
    iget-object v0, p0, Lbgl;->e:Lbgb;

    invoke-static {v0}, Lbgb;->c(Lbgb;)I

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgl;->d:Z

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lbgl;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lbka;->a([Ljava/io/Closeable;)V

    .line 813
    iget-object v0, p0, Lbgl;->b:[Ljava/io/File;

    invoke-static {v0}, Lbjs;->a([Ljava/io/File;)V

    .line 814
    iget-boolean v0, p0, Lbgl;->d:Z

    if-eqz v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lbgl;->e:Lbgb;

    invoke-static {v0}, Lbgb;->d(Lbgb;)I

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgl;->d:Z

    goto :goto_0
.end method
