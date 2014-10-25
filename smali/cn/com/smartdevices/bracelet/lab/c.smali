.class final Lcn/com/smartdevices/bracelet/lab/c;
.super Landroid/os/Handler;


# static fields
.field static final a:I = 0x1


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/lab/b;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/lab/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/c;)Lcn/com/smartdevices/bracelet/lab/b;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/c;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v3

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lab/b;->d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->enableGetSensorData(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$ISensorDataChangedCB;)Z

    move-result v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v5}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->_getLEParams()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;)V

    const-string v4, "Lab"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get Latency: intMin: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->connIntMin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intMax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->connIntMax:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", latency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->latency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->timeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", adv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->advInt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lab/b;->d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v4

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->setLatency(I)V

    :cond_1
    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v4, v1}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;I)V

    const-string v1, "Lab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "MSG_SWITCH_DEVICE_SAMPLE isSucceeded = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  isEnable = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  mIsDeviceReady = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/b;->c(Lcn/com/smartdevices/bracelet/lab/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/b;->d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/b;->c(Lcn/com/smartdevices/bracelet/lab/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->a(Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;I)V

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/d;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/d;-><init>(Lcn/com/smartdevices/bracelet/lab/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "Lab"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Before Set Latency: intMin: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->connIntMin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intMax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->connIntMax:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", latency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->latency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->timeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", adv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v6

    iget v6, v6, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->advInt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lab/b;->d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v4

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v5}, Lcn/com/smartdevices/bracelet/lab/b;->b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    move-result-object v5

    iget v5, v5, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;->connInt:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->setLatency(I)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;)V

    :cond_5
    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    if-nez v3, :cond_6

    :goto_2
    invoke-static {v4, v2}, Lcn/com/smartdevices/bracelet/lab/b;->a(Lcn/com/smartdevices/bracelet/lab/b;I)V

    const-string v1, "Lab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "MSG_SWITCH_DEVICE_SAMPLE isSucceeded = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  mIsDeviceReady = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/b;->c(Lcn/com/smartdevices/bracelet/lab/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/b;->d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/c;->b:Lcn/com/smartdevices/bracelet/lab/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/b;->c(Lcn/com/smartdevices/bracelet/lab/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->a(Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;I)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
