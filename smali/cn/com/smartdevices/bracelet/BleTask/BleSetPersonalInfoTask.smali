.class public Lcn/com/smartdevices/bracelet/BleTask/BleSetPersonalInfoTask;
.super Lcn/com/smartdevices/bracelet/BleTask/BleTask;


# instance fields
.field private a:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/model/PersonInfo;Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 7

    const/16 v0, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcn/com/smartdevices/bracelet/BleTask/BleTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetPersonalInfoTask;->a:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;

    iget-object v1, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    if-gt v2, v0, :cond_0

    array-length v0, v1

    :cond_0
    new-array v6, v0, [B

    invoke-static {v1, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;

    iget-wide v1, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->uid:J

    long-to-int v1, v1

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->gender:I

    int-to-byte v2, v2

    iget v3, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->age:I

    int-to-byte v3, v3

    iget v4, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    int-to-byte v4, v4

    iget v5, p1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    int-to-byte v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;-><init>(IBBBB[B)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetPersonalInfoTask;->a:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;

    return-void
.end method


# virtual methods
.method public doWork(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnStartMessage()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetPersonalInfoTask;->gattPeripheral:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetPersonalInfoTask;->a:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setUserInfo(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$UserInfo;)Z

    move-result v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
