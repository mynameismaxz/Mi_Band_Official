.class public Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;
.super Lcn/com/smartdevices/bracelet/BleTask/BleTask;


# static fields
.field public static final BLUE:I = 0x606

.field public static final FLAG_SLASH_NONE:B = 0x0t

.field public static final FLAG_SLASH_NOW:B = 0x1t

.field public static final GREEN:I = 0x40500

.field public static final ORANGE:I = 0x60200

.field public static final RED:I = 0x60102


# instance fields
.field private a:I

.field private b:B


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    const/16 v0, 0x606

    iput v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    const/4 v0, 0x0

    iput-byte v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->b:B

    iput p2, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    const/4 v0, 0x1

    iput-byte v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->b:B

    return-void
.end method

.method public constructor <init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;IB)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    const/16 v0, 0x606

    iput v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    const/4 v0, 0x0

    iput-byte v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->b:B

    iput p2, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    iput-byte p3, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->b:B

    return-void
.end method


# virtual methods
.method public doWork(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnStartMessage()V

    :cond_0
    iget v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iget v2, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->a:I

    int-to-byte v2, v2

    sget-object v3, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "r="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",g="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->gattPeripheral:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-byte v4, p0, Lcn/com/smartdevices/bracelet/BleTask/BleSetColorThemeTask;->b:B

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setColorTheme(BBBB)Z

    move-result v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
