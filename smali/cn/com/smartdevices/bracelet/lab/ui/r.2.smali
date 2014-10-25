.class Lcn/com/smartdevices/bracelet/lab/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->s(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)Lcn/com/smartdevices/bracelet/lab/ui/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/y;->a()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)Lcn/com/smartdevices/bracelet/lab/ui/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/y;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)Lcn/com/smartdevices/bracelet/lab/ui/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/y;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->t(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/r;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;->finish()V

    return-void
.end method
