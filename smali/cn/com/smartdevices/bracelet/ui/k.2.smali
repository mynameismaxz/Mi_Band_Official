.class Lcn/com/smartdevices/bracelet/ui/k;
.super Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/ui/j;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/k;->b:Lcn/com/smartdevices/bracelet/ui/j;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFailed(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFinish(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    const/4 v0, 0x5

    iget v1, p1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v0, 0xa

    :cond_1
    iget v1, p1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->level:I

    if-gt v1, v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/k;->b:Lcn/com/smartdevices/bracelet/ui/j;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/j;->a(Lcn/com/smartdevices/bracelet/ui/j;)Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->b(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/k;->b:Lcn/com/smartdevices/bracelet/ui/j;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/j;->a(Lcn/com/smartdevices/bracelet/ui/j;)Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->c(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;)V

    goto :goto_0
.end method
