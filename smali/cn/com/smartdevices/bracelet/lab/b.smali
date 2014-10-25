.class Lcn/com/smartdevices/bracelet/lab/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

.field private b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

.field private volatile c:Landroid/os/Looper;

.field private volatile d:Lcn/com/smartdevices/bracelet/lab/c;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/b;->a:Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->c:Landroid/os/Looper;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    const-class v0, Lcn/com/smartdevices/bracelet/lab/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/b;->c()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/b;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/b;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/b;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/b;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$LEParams;

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/lab/b;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    return v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceOperationTask["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->c:Landroid/os/Looper;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/c;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/c;-><init>(Lcn/com/smartdevices/bracelet/lab/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    return-void
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/lab/b;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->a:Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/c;->a()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->c:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->getMiLiProfile()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    move-result-object v2

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->b:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Lab"

    const-string v3, "BraceletOpState.OFFLINE !mProfile.isConnected"

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    :goto_0
    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    if-nez v2, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->a:Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->a(Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;I)V

    :goto_1
    return-void

    :cond_1
    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lab/c;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    :goto_2
    iput v0, v2, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->d:Lcn/com/smartdevices/bracelet/lab/c;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lab/c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/b;->f:I

    return v0
.end method
