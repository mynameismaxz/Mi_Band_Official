.class final Lcn/com/smartdevices/bracelet/ui/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$PanelSlideListener;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/bx;->a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetPullDownDistance()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onGetPullDownDockEnable()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final onGetThreshhold()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onGetThreshhold2()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onLastSlideOffset(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public final onPanelAnchored(Landroid/view/View;)V
    .locals 2

    const-string v0, "SettingFragment"

    const-string v1, "onPanelAnchored"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPanelCollapsed(Landroid/view/View;)V
    .locals 2

    const-string v0, "SettingFragment"

    const-string v1, "onPanelCollapsed"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPanelExpanded(Landroid/view/View;)V
    .locals 2

    const-string v0, "SettingFragment"

    const-string v1, "onPanelExpanded"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bx;->a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final onPanelSlide(Landroid/view/View;Ljava/lang/Boolean;F)V
    .locals 1

    const/high16 v0, 0x3f80

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/bx;->a:Lcn/com/smartdevices/bracelet/ui/SettingFragment;

    invoke-static {v0, p3}, Lcn/com/smartdevices/bracelet/ui/SettingFragment;->a(Lcn/com/smartdevices/bracelet/ui/SettingFragment;F)V

    :cond_0
    return-void
.end method
