.class public Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;
.super Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Switch;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->a:Ljava/lang/String;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->c:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->d:Landroid/widget/Switch;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->e:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->d:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->a(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->a(Z)V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/g;

    invoke-direct {v1, p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/g;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    invoke-static {v0, p1, v1}, Lcn/com/smartdevices/bracelet/webapi/WebAPI;->updateProfile(Lcn/com/smartdevices/bracelet/model/LoginData;Lcn/com/smartdevices/bracelet/model/PersonInfo;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    new-instance v1, Lcn/com/smartdevices/bracelet/BleTask/BleDisconnectedReminderTask;

    new-instance v2, Lcn/com/smartdevices/bracelet/lab/ui/f;

    invoke-direct {v2, p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/f;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v0}, Lcn/com/smartdevices/bracelet/BleTask/BleDisconnectedReminderTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;B)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/BleTask/BleDisconnectedReminderTask;->work()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBleStatusChanged(Lcom/xiaomi/hm/bleservice/HwConnStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/hm/bleservice/HwConnStatus;->isConnectedSucc()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b(Z)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->applyStatusBarTintAuto()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->setContentView(I)V

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcn/com/smartdevices/bracelet/lab/ui/c;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/lab/ui/c;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcn/com/smartdevices/bracelet/lab/ui/d;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/lab/ui/d;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->d:Landroid/widget/Switch;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reminder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v4}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliDisconnectedReminder()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->d:Landroid/widget/Switch;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliDisconnectedReminder()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->d:Landroid/widget/Switch;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/e;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/ui/e;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->e:Landroid/view/View;

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onBleStatusChanged"

    const-class v3, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v3, v2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onDestroy()V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onResume()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getNeedSyncServer()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->isMiliConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/LabFactoryReminderActivity;->b(Z)V

    return-void
.end method
