.class Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$INotifyCallback;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const-string v0, "xxx"

    const-string v1, "sensor data notify packages index is -1 !!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sensor data notify packages index is -1 !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->mLastSensorDataIndex:I
    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$4(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)I

    move-result v1

    const v2, 0xfffe

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->mLastSensorDataIndex:I
    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$4(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_2

    const-string v1, "xxx"

    const-string v2, "sensor data notify packages index is not continuous!!!"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-static {v1, v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$5(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;I)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$5;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->m_SensorSourceOutputStream:Ljava/io/PipedOutputStream;
    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$6(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)Ljava/io/PipedOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PipedOutputStream;->write([B)V

    const-string v0, "Lab"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcn/com/smartdevices/bracelet/lab/debug/RawDataGetter;->saveLog(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
