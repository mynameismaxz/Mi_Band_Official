.class final Lcom/xiaomi/channel/sdk/a;
.super Lcom/xiaomi/channel/sdk/e;


# instance fields
.field private synthetic a:Lcom/xiaomi/channel/sdk/AccountManager;

.field private final synthetic b:Landroid/accounts/Account;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/channel/sdk/a;->a:Lcom/xiaomi/channel/sdk/AccountManager;

    iput-object p5, p0, Lcom/xiaomi/channel/sdk/a;->b:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/xiaomi/channel/sdk/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/xiaomi/channel/sdk/e;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/sdk/a;)Lcom/xiaomi/channel/sdk/AccountManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/sdk/a;->a:Lcom/xiaomi/channel/sdk/AccountManager;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/channel/sdk/a;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/sdk/a;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/channel/sdk/b;

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/a;->b:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/channel/sdk/a;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaomi/channel/sdk/b;-><init>(Lcom/xiaomi/channel/sdk/a;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method
