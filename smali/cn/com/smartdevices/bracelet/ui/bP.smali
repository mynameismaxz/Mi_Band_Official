.class Lcn/com/smartdevices/bracelet/ui/bP;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/bP;->a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Lcn/com/smartdevices/bracelet/ui/bP;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/bP;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/BraceletApp;->BLEService:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getDefaultPeripheral()Lcom/xiaomi/hm/bleservice/gatt/IGattCallback;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move v1, v2

    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/bP;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "SettingFragment"

    const-string v1, "ShowOffNofifyTask isCancelled"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->_sendNotification(B)Z

    const-string v3, "SettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vibrate : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/ui/bP;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
