.class public Let;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Leu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lex;

    invoke-direct {v0}, Lex;-><init>()V

    sput-object v0, Let;->a:Leu;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Lew;

    invoke-direct {v0}, Lew;-><init>()V

    sput-object v0, Let;->a:Leu;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lev;

    invoke-direct {v0}, Lev;-><init>()V

    sput-object v0, Let;->a:Leu;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Lfd;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Let;->a:Leu;

    invoke-interface {v0, p0, p1}, Leu;->a(Landroid/view/LayoutInflater;Lfd;)V

    .line 80
    return-void
.end method
