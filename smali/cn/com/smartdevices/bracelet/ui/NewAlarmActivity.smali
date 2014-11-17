.class public Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;
.super Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FIXED_DAYS:[I

.field public static final INDEX_AM:I = -0xb

.field public static final INDEX_PM:I = -0xa

.field private static final a:Ljava/lang/String; = "NewAlarmActivity"

.field private static final b:I = 0x1

.field private static final c:I = 0x1e

.field private static final d:I = 0x0

.field private static final e:I = 0x17

.field private static final f:I = 0x1

.field private static final g:I


# instance fields
.field private h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

.field private i:Lkankan/wheel/widget/WheelView;

.field private j:Lkankan/wheel/widget/WheelView;

.field private k:Landroid/view/View;

.field private l:Landroid/content/Context;

.field private m:Landroid/widget/TextView;

.field private n:Lcn/com/smartdevices/bracelet/model/PersonInfo;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/AlarmClockItem;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/Switch;

.field private q:Lkankan/wheel/widget/WheelView;

.field private r:Z

.field private s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_ONCE:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_EVERY_DAY:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_MON_2_FRI:I

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, -0x1

    aput v2, v0, v1

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->FIXED_DAYS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)Lcn/com/smartdevices/bracelet/model/AlarmClockItem;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->b()V

    const-string v0, "NewAlarmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toJson()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->setResult(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->finish()V

    :cond_0
    const-class v0, Lcn/com/smartdevices/bracelet/ui/ExitNewAlarmFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/ExitNewAlarmFragment;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/aW;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/aW;-><init>(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/ExitNewAlarmFragment;->setOpClickListener(Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/ExitNewAlarmFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/ExitNewAlarmFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/16 v4, 0xc

    const-string v0, "NewAlarmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateHourByAmPm : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v0

    const-string v1, "NewAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cur hour ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, -0xc

    :cond_0
    :goto_0
    const-string v1, "NewAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after hour ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, v0}, Lkankan/wheel/widget/WheelView;->setCurrentItemLooped(I)Lkankan/wheel/widget/WheelView;

    :cond_1
    return-void

    :cond_2
    if-ge v0, v4, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->c(I)V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->j:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->set(IIZ)V

    return-void
.end method

.method private b(I)V
    .locals 3

    const-string v0, "NewAlarmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateAmPmByHour hour="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->r:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)Lkankan/wheel/widget/WheelView;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->setDays(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toWeekString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "NewAlarmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "Days"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->setEnabled(Z)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->b()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->setAlarmItems(Lcn/com/smartdevices/bracelet/model/AlarmClockItem;Landroid/content/Context;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleSetAlarmClockTask;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->o:Ljava/util/ArrayList;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/aV;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/aV;-><init>(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)V

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/BleTask/BleSetAlarmClockTask;-><init>(Ljava/util/ArrayList;Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleSetAlarmClockTask;->work()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "alarms"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->a()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->p:Landroid/widget/Switch;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->p:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070077 -> :sswitch_0
        0x7f07007f -> :sswitch_1
        0x7f070082 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->setContentView(I)V

    iput-object p0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->k:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->k:Landroid/view/View;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/aT;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/aT;-><init>(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/WheelView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/16 v2, -0xb

    const/16 v3, -0xa

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080011

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, -0x77666667

    const/4 v8, 0x0

    const/16 v9, 0x2e

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;-><init>(Landroid/content/Context;IILkankan/wheel/widget/WheelView;IIIZIIIII)V

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;->setUIStyle(Ljava/lang/String;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;->setMode(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setCenterDrawable(I)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    const-string v2, ""

    const/high16 v3, 0x41900000

    invoke-virtual {v1, v2, v3}, Lkankan/wheel/widget/WheelView;->setCenterStyle(Ljava/lang/String;F)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/WheelView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x17

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080011

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, -0x77666667

    const/4 v8, 0x1

    const/16 v9, 0x2e

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x7

    const/4 v13, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;-><init>(Landroid/content/Context;IILkankan/wheel/widget/WheelView;IIIZIIIII)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)Lkankan/wheel/widget/WheelView;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCenterDrawable(I)Lkankan/wheel/widget/WheelView;

    move-result-object v0

    const v1, 0x7f0c00d8

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08003c

    const/high16 v3, 0x41900000

    invoke-virtual {v0, v1, v2, v3}, Lkankan/wheel/widget/WheelView;->setCenterStyle(Ljava/lang/String;IF)Lkankan/wheel/widget/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/WheelView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->j:Lkankan/wheel/widget/WheelView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->j:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)Lkankan/wheel/widget/WheelView;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCenterDrawable(I)Lkankan/wheel/widget/WheelView;

    move-result-object v0

    const v1, 0x7f0c00ce

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08003c

    const/high16 v3, 0x41900000

    invoke-virtual {v0, v1, v2, v3}, Lkankan/wheel/widget/WheelView;->setCenterStyle(Ljava/lang/String;IF)Lkankan/wheel/widget/WheelView;

    move-result-object v14

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x3b

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->j:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080011

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, -0x77666667

    const/4 v8, 0x1

    const/16 v9, 0x2e

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x7

    const/4 v13, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;-><init>(Landroid/content/Context;IILkankan/wheel/widget/WheelView;IIIZIIIII)V

    invoke-virtual {v14, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_alarm_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->n:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->n:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getAlarmClockItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->t:Ljava/lang/String;

    const-string v0, "NewAlarmActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mClockItemKey = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->p:Landroid/widget/Switch;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "NewAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smartSwitch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mItem duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->p:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->p:Landroid/widget/Switch;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/aU;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/aU;-><init>(Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->l:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->toWeekString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItemLooped(I)Lkankan/wheel/widget/WheelView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->j:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItemLooped(I)Lkankan/wheel/widget/WheelView;

    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

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

.method public onEvent(Lcn/com/smartdevices/bracelet/eventbus/Event12HourUpdate;)V
    .locals 1

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/eventbus/Event12HourUpdate;->getHour()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->b(I)V

    return-void
.end method

.method public onEvent(Lcn/com/smartdevices/bracelet/eventbus/EventAmPmUpdate;)V
    .locals 1

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/eventbus/EventAmPmUpdate;->getAmPm()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->a(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onPause()V

    const-string v0, "PageAlarmNew"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onResume()V

    new-instance v0, Landroid/text/format/DateFormat;

    invoke-direct {v0}, Landroid/text/format/DateFormat;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->r:Z

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    :goto_0
    const-string v0, "PageAlarmNew"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startSession(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->q:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->i:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->s:Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->h:Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getHour()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/NewAlarmActivity;->b(I)V

    goto :goto_0
.end method
