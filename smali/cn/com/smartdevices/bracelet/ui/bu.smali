.class Lcn/com/smartdevices/bracelet/ui/bU;
.super Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFailed(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0040

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/view/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFinish(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/bV;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/bV;-><init>(Lcn/com/smartdevices/bracelet/ui/bU;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onStart()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    const v3, 0x7f0d013a

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/bU;->b:Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;

    const v4, 0x7f0d01df

    invoke-virtual {v3, v4}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingResetBraceletFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
