.class final Lcn/com/smartdevices/bracelet/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/view/DynamicView;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    const/high16 v6, 0x43c8

    const/high16 v4, 0x4334

    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x4416

    div-float v2, v0, v2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->k(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;

    move-result-object v0

    mul-float v3, v4, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->e(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/view/View;

    move-result-object v0

    const/high16 v3, -0x3ccc

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->e(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x4000

    mul-float/2addr v0, v2

    sub-float v0, v5, v0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/view/DynamicView;->k(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->e(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/view/View;

    move-result-object v0

    sub-float v1, v5, v2

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/e;->a:Lcn/com/smartdevices/bracelet/view/DynamicView;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->k(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;

    move-result-object v0

    sub-float v1, v5, v2

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
