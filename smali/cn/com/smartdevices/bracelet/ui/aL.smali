.class Lcn/com/smartdevices/bracelet/ui/aL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/MainUIActivity;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/MainUIActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/aL;->a:Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/aL;)Lcn/com/smartdevices/bracelet/ui/MainUIActivity;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/aL;->a:Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/hm/bleservice/DynamicManager;->getInstance()Lcom/xiaomi/hm/bleservice/DynamicManager;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/aL;->a:Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->s(Lcn/com/smartdevices/bracelet/ui/MainUIActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/hm/bleservice/DynamicManager;->analysisDynamic(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/aL;->a:Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/aM;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/aM;-><init>(Lcn/com/smartdevices/bracelet/ui/aL;)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
