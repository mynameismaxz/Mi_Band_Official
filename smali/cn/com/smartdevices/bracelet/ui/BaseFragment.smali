.class public abstract Lcn/com/smartdevices/bracelet/ui/BaseFragment;
.super Landroid/app/Fragment;


# instance fields
.field protected mHomeBack:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->mHomeBack:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->mHomeBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->mHomeBack:Landroid/widget/TextView;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/l;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/l;-><init>(Lcn/com/smartdevices/bracelet/ui/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHomeBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/BaseFragment;->a(Landroid/view/View;)V

    return-void
.end method
