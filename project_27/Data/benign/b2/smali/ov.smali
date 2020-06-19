.class Lov;
.super Loq;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lbw;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Loq;-><init>(Landroid/content/Context;Lbw;)V

    .line 36
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Lor;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Low;

    iget-object v1, p0, Lov;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Low;-><init>(Lov;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
