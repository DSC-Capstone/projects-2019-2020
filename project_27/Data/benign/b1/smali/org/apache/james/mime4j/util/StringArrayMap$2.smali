.class final Lorg/apache/james/mime4j/util/StringArrayMap$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/util/StringArrayMap;->asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private offset:I

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->offset:I

    iget-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->val$values:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->offset:I

    iget-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->val$values:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->val$values:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/util/StringArrayMap$2;->offset:I

    aget-object v0, v0, v1

    return-object v0
.end method
