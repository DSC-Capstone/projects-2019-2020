.class public Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;
.super Ljava/lang/Object;
.source "KrollFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionArgs"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public krollObject:Lorg/appcelerator/kroll/KrollObject;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "krollObject"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 22
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->args:[Ljava/lang/Object;

    .line 23
    return-void
.end method
