.class Lcn/com/smartdevices/bracelet/lab/ui/p;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/p;->a:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string v0, "Chaohong"

    const-string v1, "onTick"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
