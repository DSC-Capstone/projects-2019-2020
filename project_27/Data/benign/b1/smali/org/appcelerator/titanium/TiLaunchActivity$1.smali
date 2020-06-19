.class Lorg/appcelerator/titanium/TiLaunchActivity$1;
.super Ljava/lang/Object;
.source "TiLaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

.field final synthetic val$finishDelay:I

.field final synthetic val$restartDelay:I


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiLaunchActivity;II)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    iput p2, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->val$restartDelay:I

    iput p3, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->val$finishDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    iget v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->val$restartDelay:I

    iget v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->val$finishDelay:I

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 205
    return-void
.end method
