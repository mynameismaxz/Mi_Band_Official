.class public Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;
.super Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;


# instance fields
.field private a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

.field private b:Lkankan/wheel/widget/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflateLayout()I
    .locals 1

    const v0, 0x7f03003b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    invoke-super/range {p0 .. p3}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v15

    const v1, 0x7f0700fb

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->b:Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->b:Lkankan/wheel/widget/WheelView;

    const v2, 0x7f0200b9

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setCenterDrawable(I)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    const v2, 0x7f0c0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x41c8fbe7

    invoke-virtual {v1, v2, v3}, Lkankan/wheel/widget/WheelView;->setCenterStyle(Ljava/lang/String;F)Lkankan/wheel/widget/WheelView;

    move-result-object v16

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/PickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x14

    const/16 v4, 0xcd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->b:Lkankan/wheel/widget/WheelView;

    invoke-virtual/range {p0 .. p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, -0x77666667

    const/4 v9, 0x0

    const/16 v10, 0x2e

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x7

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcn/com/smartdevices/bracelet/ui/PickAdapter;-><init>(Landroid/content/Context;IILkankan/wheel/widget/WheelView;IIIZIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)Lkankan/wheel/widget/WheelView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget v2, v2, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)Lkankan/wheel/widget/WheelView;

    return-object v15
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onDestroy()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "UserSettingWeight"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget v2, v2, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onPause()V

    const-string v0, "PagePersonInfoWeight"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onResume()V

    const-string v0, "PagePersonInfoWeight"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    return-void
.end method

.method protected onRightButtomClicked()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->mRightButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget v0, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->b:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    iget v1, v1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->a:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/eventbus/EventPersonInfoUpdate;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/PersonInfoSettingWeightFragment;->dismiss()V

    goto :goto_0
.end method
