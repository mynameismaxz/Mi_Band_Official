.class public Lcn/com/smartdevices/bracelet/ui/SettingFragment;
.super Lcn/com/smartdevices/bracelet/ui/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final BAT_ANIM_DURATION:J = 0x1f4L

.field public static final REF_MILI_NAME:Ljava/lang/String; = "REF_MILI_NAME"

.field private static final a:Ljava/lang/String; = "SettingFragment"

.field private static final b:I = 0x100

.field private static final c:I = 0x64

.field private static final d:J = 0xaL

.field private static final e:I = 0x32

.field private static final f:Z


# instance fields
.field private A:Landroid/view/animation/RotateAnimation;

.field private B:F

.field private C:Landroid/widget/Switch;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:I

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$PanelSlideListener;

.field private g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

.field private h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

.field private r:Landroid/animation/Animator;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/ImageView;

.field private w:Ljava/lang/String;

.field private x:Landroid/os/AsyncTask;
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
.end field

.field private y:Landroid/widget/TextView;

.field private z:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k:Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->H:Landroid/view/View;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->I:Landroid/widget/TextView;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/bN;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/bN;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->J:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$PanelSlideListener;

    return-void
.end method

.method private a(I)J
    .locals 2

    rsub-int/lit8 v0, p1, 0x64

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->isMiliConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->i()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->c()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->c(Z)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Z)V

    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 3

    const/high16 v1, 0x42b40000

    const/high16 v2, 0x3f800000

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-float v0, p1, v1

    sub-float v0, v1, v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setRotationX(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setAlpha(F)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->B:F

    neg-float v0, v0

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const v0, 0x7f0a01c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->z:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->z:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->setOverlayed(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->z:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->setEnableDragViewTouchEvents(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->z:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->J:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$PanelSlideListener;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->setPanelSlideListener(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$PanelSlideListener;)V

    const v0, 0x7f0a01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0a01c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f0a01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k:Landroid/widget/TextView;

    const v0, 0x7f0a01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->y:Landroid/widget/TextView;

    const v0, 0x7f0a01c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->H:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->H:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->I:Landroid/widget/TextView;

    const v0, 0x7f0a01c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Utils;->isSupportUnlockScreenByBracelet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a01d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0a0192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    const v0, 0x7f0a0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f0a0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n:Landroid/widget/TextView;

    const v0, 0x7f0a0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    const v0, 0x7f0a018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->D:Landroid/view/View;

    const v0, 0x7f0a0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->o:Landroid/view/View;

    const v0, 0x7f0a01c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->p:Landroid/view/View;

    const v0, 0x7f0a0190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMode(I)V

    const v0, 0x7f0a01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->s:Landroid/widget/TextView;

    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->t:Landroid/widget/TextView;

    const/high16 v0, 0x42480000

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->B:F

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getInComingCallTime()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setInComingCallTime(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->disableInComingCallTime()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    :cond_1
    const v0, 0x7f0a01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->G:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bO;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bO;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/tencent/QQLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/tencent/QQLogin;->isLoginValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01f2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0d01f5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(F)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->c(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleGetBatteryInfoTask;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bM;

    invoke-direct {v1, p0, p1}, Lcn/com/smartdevices/bracelet/ui/bM;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Z)V

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/BleTask/BleGetBatteryInfoTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleGetBatteryInfoTask;->work()V

    return-void
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Landroid/view/animation/Animation;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Landroid/view/animation/Animation;)Z

    move-result v0

    return v0
.end method

.method private b(I)Landroid/animation/Animator;
    .locals 3

    const/16 v0, 0x64

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animNumSwitch2(IILandroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->animRefresh()Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;J)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/view/animation/RotateAnimation;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/bL;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/bL;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/webapi/WebAPI;->updateProfile(Lcn/com/smartdevices/bracelet/model/LoginData;Lcn/com/smartdevices/bracelet/model/PersonInfo;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->H:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private c()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->getMiliCachedBatteryInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedBatteryInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    return-object v0
.end method

.method private c(Z)V
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v3, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLeftBattery mBatteryInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget v0, v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->status:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v5}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->dismissLoading()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v5}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget v0, v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget-object v0, v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->lastCharge:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getFirstUseDate()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setFirstUseDate(Ljava/util/Calendar;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1, v7}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b()V

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int v0, v1, v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    :goto_2
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    const-string v1, "days"

    const-string v2, "day"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    :cond_2
    :goto_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_3
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget v0, v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->level:I

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->r:Landroid/animation/Animator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bQ;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bQ;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "today="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget-object v2, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->lastCharge:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget-object v1, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->lastCharge:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    :goto_5
    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    const-string v1, "days"

    const-string v2, "day"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getFirstUseDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setFirstUseDate(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0, v7}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b()V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->w:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMaxValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget v1, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->level:I

    invoke-direct {p0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    iget v2, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v7}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->showLoading(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->dismissLoading()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMaxValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v5}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/model/ShareData;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v1, 0x7f0d010f

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    const-string v1, "126"

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    const v1, 0x7f0d0120

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    const v1, 0x7f0d0119

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    const-string v1, "\u672c\u6b21\u7528\u65f63\u520619\u79d2\uff0c\u6d88\u8017\u70ed\u91cf12\u5343\u5361"

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.com.smartdevices.bracele.action.SHOW_SPORT_RESULT_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "share_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "timeout"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->F:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/16 v0, -0x3e8

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->F:I

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d009d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/view/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleNotifyTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/BleTask/BleNotifyTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleNotifyTask;->work()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->reset()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000

    const/high16 v2, 0x40a00000

    const/high16 v4, 0x41800000

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x42040000

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/smartdevices/bracelet/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v6

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bP;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bP;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Lcn/com/smartdevices/bracelet/chart/LinePieChartView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    return-object v0
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/SearchSingleBraceletActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->r:Landroid/animation/Animator;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "SettingFragment"

    const-string v1, "enableUI"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->p:Landroid/view/View;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 6

    const-wide/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->p:Landroid/view/View;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->dismissLoading()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v4, v5}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMaxValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v4, v5}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setValue(J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->setMode(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->q:Lcn/com/smartdevices/bracelet/chart/LinePieChartView;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/chart/LinePieChartView;->refresh(Z)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->y:Landroid/widget/TextView;

    const v1, 0x7f0d0207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->y:Landroid/widget/TextView;

    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->o()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->p()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->n()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->m()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->l()V

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->isInComingCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inComingCallTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getInComingCallTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->G:Landroid/widget/TextView;

    const v1, 0x7f0d00cd

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getInComingCallTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    const-string v0, "LEFT_HAND"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliWearHand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f0d0124

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RIGHT_HAND"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliWearHand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f0d0182

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const-string v0, "BLUE"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0d0168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v0, "GREEN"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const-string v0, "RED"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getMiliColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0d017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static newInstance()Lcn/com/smartdevices/bracelet/ui/SettingFragment;
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getDaySportGoalSteps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d01fd

    invoke-virtual {p0, v2}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->getMiliCachedDeviceInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->getFirmwareVersionStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->o()V

    :cond_0
    return-void
.end method

.method public onBleStatusChanged(Lcom/xiaomi/hm/bleservice/HwConnStatus;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/hm/bleservice/HwConnStatus;->isConnectedSucc()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SettingFragment"

    const-string v1, "connect success"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->i()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->applyStatusBarTintAuto()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g:Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$BatteryInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->c(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->j()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->applyStatusBarTintAuto()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/HealthGoalsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->g()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->e()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "BraceletFind"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcn/com/smartdevices/bracelet/ui/PersonInfoSetLightColorFragment;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->showPanel(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcn/com/smartdevices/bracelet/ui/PersonInfoWearHandFragment;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->showPanel(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d003c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcn/com/smartdevices/bracelet/view/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BindQQHealthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->isWeixinSupportJump(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivityNew;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Lcn/com/smartdevices/bracelet/ui/SettingInComingCallTimeFragment;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/ui/SettingInComingCallTimeFragment;-><init>()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->showPanel(Landroid/app/Activity;Landroid/app/DialogFragment;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/ui/UnlockScreenHelperActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a01c6
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onBleStatusChanged"

    const-class v2, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->f()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->E:Z

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onDestroy()V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->C:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "BraceletCallNotify"

    const-string v2, "ON"

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "BraceletCallNotifyTime"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getInComingCallTime()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "BraceletCallNotify"

    const-string v2, "OFF"

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onDestroyView()V

    const-string v0, "SettingFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onEvent(Lcn/com/smartdevices/bracelet/eventbus/EventSettingFragmentUpdate;)V
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update ... ui "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->b()V

    return-void
.end method

.method public onEvent(Lcom/xiaomi/hm/bleservice/HwBatteryStatus;)V
    .locals 3

    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventBatteryStatus onEvent: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", charges ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    const-string v0, "SettingFragment"

    const-string v1, "mShowOffTask start "

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->e()V

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/bR;

    invoke-direct {v0, p0, v4}, Lcn/com/smartdevices/bracelet/ui/bR;-><init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;Lcn/com/smartdevices/bracelet/ui/bL;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/bR;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowOffTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v4, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->x:Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01c6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onPause()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->A:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->v:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EventSettingPage"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/AnalyticsTrackerManager;->endTimedEvent([Ljava/lang/String;)Lcom/xiaomi/miui/analyticstracker/AnalyticsTracker;

    const-string v0, "PageBracelet"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->onResume()V

    const-string v0, "SettingFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->k()V

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->E:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->E:Z

    :cond_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/BLEManager;->isMiliConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->j()V

    :cond_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EventSettingPage"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/AnalyticsTrackerManager;->trackTimedEvent(Ljava/lang/String;)Lcom/xiaomi/miui/analyticstracker/AnalyticsTracker;

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->h:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getNeedSyncServer()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "PageBracelet"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Landroid/widget/TextView;)V

    return-void
.end method
