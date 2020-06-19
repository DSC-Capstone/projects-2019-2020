.class Lorg/appcelerator/titanium/TiBaseActivity$2;
.super Ljava/lang/Object;
.source "TiBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;I)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iput p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iget v1, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->val$msgId:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->handleSendMessage(I)V

    .line 415
    return-void
.end method
