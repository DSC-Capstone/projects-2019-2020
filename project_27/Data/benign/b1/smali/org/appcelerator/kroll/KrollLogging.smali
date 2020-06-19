.class public Lorg/appcelerator/kroll/KrollLogging;
.super Ljava/lang/Object;
.source "KrollLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollLogging$LogListener;
    }
.end annotation


# static fields
.field public static final CRITICAL:I = 0x7

.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x6

.field public static final FATAL:I = 0x8

.field public static final INFO:I = 0x3

.field public static final NOTICE:I = 0x4

.field public static final TRACE:I = 0x1

.field public static final WARN:I = 0x5

.field private static instance:Lorg/appcelerator/kroll/KrollLogging;


# instance fields
.field private listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lorg/appcelerator/kroll/KrollLogging;

    const-string v1, "TiAPI"

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/kroll/KrollLogging;->instance:Lorg/appcelerator/kroll/KrollLogging;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static getDefault()Lorg/appcelerator/kroll/KrollLogging;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/appcelerator/kroll/KrollLogging;->instance:Lorg/appcelerator/kroll/KrollLogging;

    return-object v0
.end method

.method private internalLog(ILjava/lang/String;)V
    .locals 2
    .param p1, "severity"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x5

    .line 122
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    invoke-interface {v0, p1, p2}, Lorg/appcelerator/kroll/KrollLogging$LogListener;->onLog(ILjava/lang/String;)V

    .line 146
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 128
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_2
    if-ge p1, v1, :cond_3

    .line 132
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    if-ne p1, v1, :cond_4

    .line 136
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logWithDefaultLogger(ILjava/lang/String;)V
    .locals 1
    .param p0, "severity"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public critical(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "ulevel":Ljava/lang/String;
    const/4 v0, 0x3

    .line 97
    .local v0, "severity":I
    const-string v2, "TRACE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 117
    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 118
    return-void

    .line 99
    :cond_0
    const-string v2, "DEBUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :cond_1
    const-string v2, "INFO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const/4 v0, 0x3

    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "NOTICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    const/4 v0, 0x4

    goto :goto_0

    .line 105
    :cond_3
    const-string v2, "WARN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const/4 v0, 0x5

    goto :goto_0

    .line 107
    :cond_4
    const-string v2, "ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    const/4 v0, 0x6

    goto :goto_0

    .line 109
    :cond_5
    const-string v2, "CRITICAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    const/4 v0, 0x7

    goto :goto_0

    .line 111
    :cond_6
    const-string v2, "FATAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    const/16 v0, 0x8

    goto :goto_0

    .line 114
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public notice(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 80
    return-void
.end method

.method public setLogListener(Lorg/appcelerator/kroll/KrollLogging$LogListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/appcelerator/kroll/KrollLogging$LogListener;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    .line 50
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 65
    return-void
.end method
