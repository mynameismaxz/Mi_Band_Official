.class Lcom/xiaomi/hm/bleservice/b;
.super Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;


# instance fields
.field final synthetic b:Lcom/xiaomi/hm/bleservice/BLEService;


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFailed(Ljava/lang/Object;)V

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/BLEService;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START SYNC DATA...onFailed"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-static {v0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->access$14(Lcom/xiaomi/hm/bleservice/BLEService;Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$17(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    const/4 v1, 0x4

    const/16 v2, 0x64

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->access$16(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V

    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFinish(Ljava/lang/Object;)V

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/BLEService;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v3, "START SYNC DATA...onFinish"

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-static {v0, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->access$14(Lcom/xiaomi/hm/bleservice/BLEService;Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$17(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->syncToQQHealth()V
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$18(Lcom/xiaomi/hm/bleservice/BLEService;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$19(Lcom/xiaomi/hm/bleservice/BLEService;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-static {v0, v4}, Lcom/xiaomi/hm/bleservice/BLEService;->access$20(Lcom/xiaomi/hm/bleservice/BLEService;I)V

    if-lez v3, :cond_0

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/BLEService;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not synced data,we will sync again!"

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$5(Lcom/xiaomi/hm/bleservice/BLEService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-static {v1, v7}, Lcom/xiaomi/hm/bleservice/BLEService;->access$15(Lcom/xiaomi/hm/bleservice/BLEService;I)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    const/4 v2, 0x4

    const/16 v3, 0x64

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V
    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->access$16(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncTime(J)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncBraceletTime(J)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->startAnalysisThreadForLuaEvent(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 3

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onProgress(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    const/4 v1, 0x3

    const/4 v2, 0x1

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V
    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->access$16(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onStart()V

    # getter for: Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/BLEService;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START SYNC DATA...onStart"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-static {v0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->access$14(Lcom/xiaomi/hm/bleservice/BLEService;Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->access$15(Lcom/xiaomi/hm/bleservice/BLEService;I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/b;->b:Lcom/xiaomi/hm/bleservice/BLEService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->access$16(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V

    return-void
.end method
