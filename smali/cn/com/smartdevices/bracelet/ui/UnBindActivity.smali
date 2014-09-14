.class public Lcn/com/smartdevices/bracelet/ui/UnBindActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const v0, 0x7f0c0151

    invoke-static {p0, v0}, Lcn/com/smartdevices/bracelet/Utils;->showProgressDialog(Landroid/app/Activity;I)V

    const-string v0, "switch"

    const-string v1, "unbind device now!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;-><init>()V

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepBraceletBtInfo(Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;)V

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncTime(J)V

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncRealStepTime(J)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/Keeper;->keepNeedBind(I)V

    invoke-static {p0, v2}, Lcn/com/smartdevices/bracelet/Utils;->switchBracelet(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bS;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bS;-><init>(Lcn/com/smartdevices/bracelet/ui/UnBindActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const v0, 0x7f0c0151

    invoke-static {p0, v0}, Lcn/com/smartdevices/bracelet/Utils;->showProgressDialog(Landroid/app/Activity;I)V

    const-string v0, "switch"

    const-string v1, "unbind device now!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;-><init>()V

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepBraceletBtInfo(Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;)V

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncTime(J)V

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Keeper;->keepSyncRealStepTime(J)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/Keeper;->keepNeedBind(I)V

    invoke-static {p0, v2}, Lcn/com/smartdevices/bracelet/Utils;->switchBracelet(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bS;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bS;-><init>(Lcn/com/smartdevices/bracelet/ui/UnBindActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "BraceletUnbind"

    const-string v1, "Confirmed"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->finish()V

    const-string v0, "BraceletUnbind"

    const-string v1, "Canceled"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07002e -> :sswitch_1
        0x7f070095 -> :sswitch_0
        0x7f070097 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->setContentView(I)V

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->isSupportUnlockScreenByBracelet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/UnBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "PageBraceletUnbind"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PageBraceletUnbind"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startSession(Landroid/content/Context;)V

    return-void
.end method
