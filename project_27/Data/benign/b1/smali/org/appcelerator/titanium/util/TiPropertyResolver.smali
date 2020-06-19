.class public Lorg/appcelerator/titanium/util/TiPropertyResolver;
.super Ljava/lang/Object;
.source "TiPropertyResolver.java"


# instance fields
.field private propSets:[Lorg/appcelerator/kroll/KrollDict;


# direct methods
.method public varargs constructor <init>([Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "propSets"    # [Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    array-length v1, p1

    .line 18
    .local v1, "len":I
    new-array v2, v1, [Lorg/appcelerator/kroll/KrollDict;

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 20
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v4, 0x0

    .line 35
    .local v4, "result":Lorg/appcelerator/kroll/KrollDict;
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    .local v0, "arr$":[Lorg/appcelerator/kroll/KrollDict;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 36
    .local v1, "d":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    move-object v4, v1

    .line 44
    .end local v1    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-object v4

    .line 35
    .restart local v1    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasAnyOf([Ljava/lang/String;)Z
    .locals 10
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, "found":Z
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    .local v0, "arr$":[Lorg/appcelerator/kroll/KrollDict;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v0, v5

    .line 52
    .local v2, "d":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v2, :cond_3

    .line 53
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v6, v1, v4

    .line 54
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 55
    const/4 v3, 0x1

    .line 59
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_3

    .line 65
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    return v3

    .line 53
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "d":Lorg/appcelerator/kroll/KrollDict;
    .restart local v4    # "i$":I
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "len$":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "len$":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiPropertyResolver;->propSets:[Lorg/appcelerator/kroll/KrollDict;

    .line 29
    return-void
.end method
