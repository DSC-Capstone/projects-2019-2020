.class public abstract La/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method protected static a(Ljava/lang/String;)La/a/a/i;
    .locals 2

    new-instance v0, La/a/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/i;-><init>(Ljava/lang/String;La/a/a/d;)V

    return-object v0
.end method

.method public static varargs a(Landroid/database/sqlite/SQLiteDatabase;[La/a/a/i;)V
    .locals 7

    const/4 v1, 0x0

    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {v0}, La/a/a/i;->a()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
