.class final Lcn/com/smartdevices/bracelet/lab/ui/M;
.super Landroid/os/Handler;


# static fields
.field static final a:I = 0x1


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/M;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/M;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/M;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/M;->removeMessages(I)V

    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/M;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/X;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/X;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
