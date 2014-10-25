.class Lcn/com/smartdevices/bracelet/ui/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/DynamicFragment;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/M;->a:Lcn/com/smartdevices/bracelet/ui/DynamicFragment;

    iput-boolean p2, p0, Lcn/com/smartdevices/bracelet/ui/M;->b:Z

    iput-object p3, p0, Lcn/com/smartdevices/bracelet/ui/M;->c:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->getMiLiProfile()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/M;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getRealtimeSteps()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/M;->c:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;

    invoke-interface {v2, v1}, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;->process(I)V

    :cond_1
    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/M;->b:Z

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/M;->c:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->enableRealtimeStepNotification(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)Z

    goto :goto_0
.end method
