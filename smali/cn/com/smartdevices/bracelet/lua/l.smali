.class final Lcn/com/smartdevices/bracelet/lua/l;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lua/l;-><init>(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$10(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #calls: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$11(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getPullDownDistance()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public final getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->setAllChildrenVisible()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->isPressed:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$8(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$1(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$3(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$5(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Lcn/com/smartdevices/bracelet/lua/n;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->a:Lcn/com/smartdevices/bracelet/lua/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$6(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->a:Lcn/com/smartdevices/bracelet/lua/n;

    #setter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$7(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;Lcn/com/smartdevices/bracelet/lua/n;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$5(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Lcn/com/smartdevices/bracelet/lua/n;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->c:Lcn/com/smartdevices/bracelet/lua/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$6(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->c:Lcn/com/smartdevices/bracelet/lua/n;

    #setter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$7(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;Lcn/com/smartdevices/bracelet/lua/n;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$5(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Lcn/com/smartdevices/bracelet/lua/n;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->b:Lcn/com/smartdevices/bracelet/lua/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$6(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    sget-object v1, Lcn/com/smartdevices/bracelet/lua/n;->b:Lcn/com/smartdevices/bracelet/lua/n;

    #setter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideState:Lcn/com/smartdevices/bracelet/lua/n;
    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$7(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;Lcn/com/smartdevices/bracelet/lua/n;)V

    goto :goto_0
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #calls: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->onPanelDragged(I)V
    invoke-static {v0, p3}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$9(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 7

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->isPressed:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$8(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$10(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #calls: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$11(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$1(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$10(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$1(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_1
    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v2

    add-float v3, v1, v6

    div-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getPullDownDockEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$3(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->invalidate()V

    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #calls: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$11(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mPanelHeight:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$12(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$1(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mPanelHeight:I
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$12(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    :cond_4
    cmpl-float v2, p3, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v2

    add-float v3, v1, v6

    div-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v2

    div-float/2addr v1, v5

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    int-to-float v0, v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$1(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_2

    :cond_5
    cmpl-float v1, p3, v4

    if-gtz v1, :cond_6

    cmpl-float v1, p3, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_6
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getSlideThreshhold()F

    move-result v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->getSlideThreshhold2()F

    move-result v2

    cmpl-float v3, v4, v1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$4(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$3(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$2(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    :goto_4
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->invalidate()V

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$3(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_4
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lua/l;->a:Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;

    #getter for: Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;->access$0(Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$LayoutParams;

    iget-boolean v0, v0, Lcn/com/smartdevices/bracelet/lua/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
