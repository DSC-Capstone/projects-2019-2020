.class Lti/modules/titanium/ui/TableViewProxy$RowResult;
.super Ljava/lang/Object;
.source "TableViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/TableViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowResult"
.end annotation


# instance fields
.field row:Lti/modules/titanium/ui/TableViewRowProxy;

.field rowIndexInSection:I

.field section:Lti/modules/titanium/ui/TableViewSectionProxy;

.field sectionIndex:I

.field final synthetic this$0:Lti/modules/titanium/ui/TableViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewProxy$RowResult;->this$0:Lti/modules/titanium/ui/TableViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
