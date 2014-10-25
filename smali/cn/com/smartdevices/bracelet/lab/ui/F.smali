.class Lcn/com/smartdevices/bracelet/lab/ui/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/F;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmptyAreaClicked(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method

.method public onLeftClicked(Landroid/app/DialogFragment;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/F;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Z)V

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/F;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->s(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/F;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->finish()V

    return-void
.end method

.method public onRightClicked(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method
