.class public Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

.field protected mLeftButton:Landroid/view/View;

.field protected mRightButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    return-void
.end method

.method public static showPanel(Landroid/app/Activity;Landroid/app/DialogFragment;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method public static showPanel(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/DialogFragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method public static showPanel(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/DialogFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected inflateLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onLeftButtonClicked()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->onRightButtomClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00a0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    const v0, 0x7f0e0008

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->isNotSupport(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x7f0e0019

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->inflateLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mLeftButton:Landroid/view/View;

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mRightButton:Landroid/view/View;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mLeftButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mLeftButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mRightButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->mRightButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/Q;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/Q;-><init>(Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v0
.end method

.method protected onEmptyAreaClicked()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    invoke-interface {v0, p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;->onEmptyAreaClicked(Landroid/app/DialogFragment;)V

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->dismiss()V

    return-void
.end method

.method protected onLeftButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    invoke-interface {v0, p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;->onLeftClicked(Landroid/app/DialogFragment;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->dismiss()V

    goto :goto_0
.end method

.method protected onRightButtomClicked()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    invoke-interface {v0, p0}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;->onRightClicked(Landroid/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method protected setOpClickListener(Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->a:Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;

    return-void
.end method
