.class public final Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;
.super Landroid/os/Handler;


# static fields
.field static final a:I = 0x1


# instance fields
.field final synthetic b:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;


# direct methods
.method protected constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;->removeMessages(I)V

    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;->b:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/X;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
