.class public Lorg/appcelerator/titanium/proxy/RProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "RProxy.java"


# static fields
.field private static final DBG:Z

.field private static final RESOURCE_TYPES:[Ljava/lang/String;

.field public static final RESOURCE_TYPE_ANDROID:I = 0x0

.field public static final RESOURCE_TYPE_APPLICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiAndroidRProxy"


# instance fields
.field protected name:Ljava/lang/String;

.field protected resourceType:I

.field protected subResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/RProxy;->DBG:Z

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "anim"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "array"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "attr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dimen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "drawable"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "layout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "styleable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/appcelerator/titanium/proxy/RProxy;->RESOURCE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resourceType"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    .line 47
    iput p1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    .line 48
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getResourceValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v1, Lorg/appcelerator/titanium/proxy/RProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 89
    const-string v2, "TiAndroidRProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    if-nez v1, :cond_1

    const-string v1, "android.R."

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getAndroidResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_1
    return-object v1

    .line 89
    :cond_1
    const-string v1, "R."

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v2, -0x7fffffff

    .line 54
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lorg/appcelerator/titanium/proxy/RProxy;->RESOURCE_TYPES:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/RProxy;->getResourceValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Lorg/appcelerator/titanium/proxy/RProxy;

    .end local v0    # "value":Ljava/lang/Object;
    iget v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    invoke-direct {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(ILjava/lang/String;)V

    .line 70
    :cond_3
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    return-object v0
.end method
