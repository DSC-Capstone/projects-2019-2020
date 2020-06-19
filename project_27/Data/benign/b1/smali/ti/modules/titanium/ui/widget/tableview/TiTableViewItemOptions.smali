.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewItemOptions;
.super Ljava/util/HashMap;
.source "TiTableViewItemOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL:I = 0xa

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewItemOptions;-><init>(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getIntOption(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewItemOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public varargs resolveIntOption(Ljava/lang/String;[Lorg/appcelerator/kroll/KrollDict;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "items"    # [Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewItemOptions;->resolveOption(Ljava/lang/String;[Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public varargs resolveOption(Ljava/lang/String;[Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "items"    # [Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewItemOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30
    .local v4, "value":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Lorg/appcelerator/kroll/KrollDict;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 31
    .local v2, "item":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    invoke-virtual {v2, p1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .end local v2    # "item":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-object v4

    .line 30
    .restart local v2    # "item":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
