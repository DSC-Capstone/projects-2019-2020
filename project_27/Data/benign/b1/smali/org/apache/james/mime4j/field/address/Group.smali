.class public Lorg/apache/james/mime4j/field/address/Group;
.super Lorg/apache/james/mime4j/field/address/Address;


# instance fields
.field private mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-void
.end method


# virtual methods
.method protected doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMailboxes()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
