.class final Lcn/com/smartdevices/bracelet/lab/ui/G;
.super Landroid/os/Handler;


# static fields
.field public static final a:I = 0x1

.field private static final d:I = 0x1

.field private static final e:I = 0x0

.field private static final f:I = 0xea60

.field private static final g:I = 0x1388


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

.field private c:J

.field private h:J


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->h:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/G;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    return-void
.end method

.method private a(J)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/G;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->removeMessages(I)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    iget-wide v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->h:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()I
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->a(J)V

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    const-wide/16 v2, 0x1388

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    const-wide/32 v2, 0xea60

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    iput v7, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iput-wide v4, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->c:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/G;->h:J

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->removeMessages(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
