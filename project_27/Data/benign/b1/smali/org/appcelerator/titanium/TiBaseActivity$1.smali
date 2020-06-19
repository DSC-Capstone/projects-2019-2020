.class Lorg/appcelerator/titanium/TiBaseActivity$1;
.super Ljava/lang/Object;
.source "TiBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;

.field final synthetic val$fnewTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$1;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$1;->val$fnewTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$1;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity$1;->val$fnewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method
