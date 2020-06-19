.class public Lvz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lwi;

.field private final c:Landroid/content/Context;

.field private d:Lvy;

.field private e:Lwa;


# direct methods
.method public constructor <init>(Lwi;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lvz;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lvz;->b:Lwi;

    new-instance v0, Lwh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p3, v1}, Lwh;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Lvz;->d:Lvy;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lvz;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwv;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()Lwa;
    .locals 1

    iget-object v0, p0, Lvz;->e:Lwa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lvz;->c:Landroid/content/Context;

    invoke-static {v0}, Lwa;->a(Landroid/content/Context;)Lwa;

    move-result-object v0

    iput-object v0, p0, Lvz;->e:Lwa;

    :cond_0
    iget-object v0, p0, Lvz;->e:Lwa;

    return-object v0
.end method

.method b()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lvz;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "UncaughtException"

    iget-object v1, p0, Lvz;->d:Lvy;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lvz;->d:Lvy;

    invoke-interface {v1, v0, p2}, Lvy;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting uncaught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lwv;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lvz;->b:Lwi;

    new-instance v2, Lwe;

    invoke-direct {v2}, Lwe;-><init>()V

    invoke-virtual {v2, v0}, Lwe;->a(Ljava/lang/String;)Lwe;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lwe;->a(Z)Lwe;

    move-result-object v0

    invoke-virtual {v0}, Lwe;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lwi;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Lvz;->a()Lwa;

    move-result-object v0

    invoke-virtual {v0}, Lwa;->i()V

    invoke-virtual {v0}, Lwa;->j()V

    iget-object v0, p0, Lvz;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    const-string v0, "Passing exception to the original handler"

    invoke-static {v0}, Lwv;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lvz;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
