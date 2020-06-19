.class public abstract Lorg/apache/james/mime4j/message/storage/TempStorage;
.super Ljava/lang/Object;


# static fields
.field private static inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/apache/james/mime4j/message/storage/TempStorage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

    const-string v0, "org.apache.james.mime4j.tempStorage"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/storage/TempStorage;

    sput-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/james/mime4j/message/storage/TempStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate TempStorage class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' using SimpleTempStorage instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/james/mime4j/message/storage/TempStorage;
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/james/mime4j/message/storage/TempStorage;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/apache/james/mime4j/message/storage/TempStorage;->inst:Lorg/apache/james/mime4j/message/storage/TempStorage;

    return-void
.end method


# virtual methods
.method public abstract getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
.end method
