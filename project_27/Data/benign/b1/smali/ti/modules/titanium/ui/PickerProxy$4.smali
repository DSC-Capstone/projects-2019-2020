.class Lti/modules/titanium/ui/PickerProxy$4;
.super Ljava/lang/Object;
.source "PickerProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/PickerProxy;->showTimePickerDialog([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/PickerProxy;

.field final synthetic val$callback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lti/modules/titanium/ui/PickerProxy$4;->this$0:Lti/modules/titanium/ui/PickerProxy;

    iput-object p2, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    .line 636
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 638
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 639
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "cancel"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy$4;->val$callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy$4;->this$0:Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v2}, Lti/modules/titanium/ui/PickerProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 643
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method
