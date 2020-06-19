.class public Lti/modules/titanium/xml/CommentProxy;
.super Lti/modules/titanium/xml/CharacterDataProxy;
.source "CommentProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Comment;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "comment"    # Lorg/w3c/dom/Comment;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/CommentProxy;-><init>(Lorg/w3c/dom/Comment;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Comment;)V
    .locals 0
    .param p1, "comment"    # Lorg/w3c/dom/Comment;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/CharacterDataProxy;-><init>(Lorg/w3c/dom/CharacterData;)V

    .line 19
    return-void
.end method
