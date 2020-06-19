.class Lbhu;
.super Ljava/util/zip/Inflater;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbht;


# direct methods
.method constructor <init>(Lbht;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lbhu;->a:Lbht;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 23
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbhu;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v0, Lbij;->a:[B

    invoke-virtual {p0, v0}, Lbhu;->setDictionary([B)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 27
    :cond_0
    return v0
.end method
