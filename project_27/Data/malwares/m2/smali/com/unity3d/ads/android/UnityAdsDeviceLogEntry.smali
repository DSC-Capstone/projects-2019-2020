.class public Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLogEntry.java"


# instance fields
.field private a:Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    .line 6
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->b:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    .line 10
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    .line 11
    iput-object p2, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    .line 13
    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->a:Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    return-object v0
.end method

.method public getOriginalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->b:Ljava/lang/String;

    .line 25
    const-string v3, "UnknownClass"

    .line 26
    const-string v2, "unknownMethod"

    .line 27
    const/4 v1, -0x1

    .line 29
    iget-object v4, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    if-eqz v4, :cond_0

    .line 30
    iget-object v1, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 31
    iget-object v1, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v1, p0, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->c:Ljava/lang/StackTraceElement;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 35
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 38
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " (line:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
