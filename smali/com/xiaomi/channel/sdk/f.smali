.class Lcom/xiaomi/channel/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/xiaomi/channel/sdk/AccountManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/sdk/f;->a:Lcom/xiaomi/channel/sdk/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/f;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
