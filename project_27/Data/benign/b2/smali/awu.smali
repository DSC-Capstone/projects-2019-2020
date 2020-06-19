.class final Lawu;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lawv;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 82
    new-instance v0, Lawv;

    invoke-direct {v0}, Lawv;-><init>()V

    iput-object v0, p0, Lawu;->b:Lawv;

    .line 85
    iput-object p1, p0, Lawu;->a:Ljava/lang/Appendable;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lawt;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lawu;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lawu;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 95
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lawu;->b:Lawv;

    iput-object p1, v0, Lawv;->a:[C

    .line 90
    iget-object v0, p0, Lawu;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lawu;->b:Lawv;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 91
    return-void
.end method
