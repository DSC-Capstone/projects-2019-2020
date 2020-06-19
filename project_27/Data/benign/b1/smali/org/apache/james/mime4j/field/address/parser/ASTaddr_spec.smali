.class public Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
.super Lorg/apache/james/mime4j/field/address/parser/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V

    return-void
.end method


# virtual methods
.method public jjtAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
