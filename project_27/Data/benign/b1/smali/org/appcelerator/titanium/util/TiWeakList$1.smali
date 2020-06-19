.class Lorg/appcelerator/titanium/util/TiWeakList$1;
.super Ljava/lang/Object;
.source "TiWeakList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiWeakList;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiWeakList;)V
    .locals 0

    .prologue
    .line 175
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$1;, "Lorg/appcelerator/titanium/util/TiWeakList.1;"
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiWeakList$1;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/appcelerator/titanium/util/TiWeakList$1;, "Lorg/appcelerator/titanium/util/TiWeakList.1;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$1;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNullIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
