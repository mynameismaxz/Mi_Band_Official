.class final Lcn/com/smartdevices/bracelet/lab/ui/K;
.super Lcn/com/smartdevices/bracelet/lab/ui/a;


# static fields
.field public static final a:Ljava/lang/String; = "preparing"

.field public static final b:Ljava/lang/String; = "group"


# instance fields
.field final synthetic c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-direct {p0, p3, p4, p2}, Lcn/com/smartdevices/bracelet/lab/ui/a;-><init>(JLjava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->d:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "preparing"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/com/smartdevices/bracelet/lab/ui/SportResultShareActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "share_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "timeout"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory;->EXTRA_SPORT_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->q(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->finish()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to start share acitivity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "group"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/K;->c:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->q(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->restSampling(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;Ljava/lang/String;)Z

    goto :goto_1
.end method
