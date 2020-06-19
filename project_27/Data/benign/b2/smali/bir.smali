.class Lbir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbeh;


# instance fields
.field final synthetic a:Lbiq;


# direct methods
.method constructor <init>(Lbiq;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lbir;->a:Lbiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lbds;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbir;->a:Lbiq;

    invoke-static {v0, p1, p2, p3, p4}, Lbiq;->a(Lbiq;Ljavax/net/ssl/SSLEngine;Lbds;Ljava/lang/String;I)V

    .line 46
    return-void
.end method
