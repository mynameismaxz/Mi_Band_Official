.class Lcn/com/smartdevices/bracelet/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/activity/b;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/b;->a(Lcn/com/smartdevices/bracelet/activity/b;)Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->e(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/b;->a(Lcn/com/smartdevices/bracelet/activity/b;)Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->f(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/b;->a(Lcn/com/smartdevices/bracelet/activity/b;)Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/b;->a(Lcn/com/smartdevices/bracelet/activity/b;)Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->b(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/c;->a:Lcn/com/smartdevices/bracelet/activity/b;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/b;->a(Lcn/com/smartdevices/bracelet/activity/b;)Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->c(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method
