.class final Lcn/com/smartdevices/bracelet/lab/d;
.super Landroid/os/Handler;


# static fields
.field static final a:I = 0x1


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/lab/c;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/lab/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/d;->b:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/d;)Lcn/com/smartdevices/bracelet/lab/c;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/d;->b:Lcn/com/smartdevices/bracelet/lab/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/d;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    :goto_1
    new-instance v1, Lcn/com/smartdevices/bracelet/lab/b;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/d;->b:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/c;->c(Lcn/com/smartdevices/bracelet/lab/c;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/d;->b:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lab/c;->a(Lcn/com/smartdevices/bracelet/lab/c;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v3

    new-instance v4, Lcn/com/smartdevices/bracelet/lab/e;

    invoke-direct {v4, p0, v0}, Lcn/com/smartdevices/bracelet/lab/e;-><init>(Lcn/com/smartdevices/bracelet/lab/d;Z)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/com/smartdevices/bracelet/lab/b;-><init>(Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;ZLcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/b;->work()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
