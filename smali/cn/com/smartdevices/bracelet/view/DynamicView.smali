.class public Lcn/com/smartdevices/bracelet/view/DynamicView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final a:Ljava/lang/String; = "Chart.DynamicView"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:I

.field private C:Ljava/lang/Boolean;

.field private D:I

.field private E:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

.field private F:Landroid/animation/ValueAnimator;

.field private G:Landroid/animation/ValueAnimator;

.field private H:Landroid/animation/ValueAnimator;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/ValueAnimator;

.field private b:Landroid/content/Context;

.field private c:Lcn/com/smartdevices/bracelet/view/DynamicView$FlowBgView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:I

.field private v:I

.field private w:Landroid/animation/Animator;

.field private x:Landroid/animation/Animator;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/com/smartdevices/bracelet/view/DynamicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->y:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->z:Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->A:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->C:Ljava/lang/Boolean;

    iput v2, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->D:I

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->b:Landroid/content/Context;

    const/high16 v0, 0x42d4

    invoke-static {v0, p1}, Lcn/com/smartdevices/bracelet/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->D:I

    const v0, 0x7f030065

    invoke-static {p1, v0, p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->d:Landroid/view/View;

    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/view/DynamicView$FlowBgView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->c:Lcn/com/smartdevices/bracelet/view/DynamicView$FlowBgView;

    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    const v0, 0x7f0701d7

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->g:Landroid/view/View;

    const v0, 0x7f0701de

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->h:Landroid/view/View;

    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->j:Landroid/widget/TextView;

    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->k:Landroid/widget/TextView;

    const v0, 0x7f0701dd

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->l:Landroid/widget/TextView;

    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->m:Landroid/widget/TextView;

    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->n:Landroid/widget/TextView;

    const v0, 0x7f0701df

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->o:Landroid/widget/TextView;

    const v0, 0x7f0701e0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->p:Landroid/widget/TextView;

    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->q:Landroid/widget/TextView;

    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->r:Landroid/widget/TextView;

    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->s:Landroid/widget/TextView;

    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->g:Landroid/view/View;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/a;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/a;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->h:Landroid/view/View;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/f;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/f;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readIsPlayEnterAnimation()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->C:Ljava/lang/Boolean;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPlayEnterAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->y:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0701e6

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPlayEnterAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->b:Landroid/content/Context;

    const-class v2, Lcn/com/smartdevices/bracelet/ui/DynamicDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Mode"

    iget v2, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/view/DynamicView;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->a()V

    return-void
.end method

.method private b()Landroid/animation/Animator;
    .locals 7

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x258

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->c:Lcn/com/smartdevices/bracelet/view/DynamicView$FlowBgView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/view/DynamicView$FlowBgView;->animFlow()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;J)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animFadeIn(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;J)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->u:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->v:I

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->j:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animNumSwitch(IILandroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v5, v6, v3, v4}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;JJ)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->animRefresh()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v5, v6, v3, v4}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;JJ)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()Landroid/animation/Animator;
    .locals 3

    iget v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->u:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->v:I

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->j:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animNumSwitch(IILandroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->animRefresh()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/view/DynamicView;)Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->E:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    return-object v0
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/view/DynamicView;)Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/g;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/g;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xc8t 0x42t
    .end array-data
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xe

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/h;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/h;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/i;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/i;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x83t 0x3ft
        0xc3t 0xf5t 0x88t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0xc3t 0xf5t 0x88t 0x3ft
        0xat 0xd7t 0x83t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/j;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/j;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/k;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/k;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/view/DynamicView;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->f()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/l;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/l;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/m;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/m;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xc8t 0x42t
    .end array-data
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/view/DynamicView;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->d()V

    return-void
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/b;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/b;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/c;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/c;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xc8t 0x42t
    .end array-data
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/d;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/d;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/com/smartdevices/bracelet/view/e;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/e;-><init>(Lcn/com/smartdevices/bracelet/view/DynamicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x16t 0x44t
    .end array-data
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/view/DynamicView;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->g()V

    return-void
.end method

.method static synthetic k(Lcn/com/smartdevices/bracelet/view/DynamicView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->A:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getCenter()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getShowAnimDuration()J
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->getAnimDuration(Landroid/animation/AnimatorSet;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwitchAnimDuration()J
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->getAnimDuration(Landroid/animation/AnimatorSet;)J

    move-result-wide v0

    return-wide v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/view/DynamicView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->startShow(Z)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->C:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPlayEnterAnimationType()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->h()V

    :cond_0
    :goto_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBinded()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->setConnectingAlpha(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPlayEnterAnimationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->i()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->refresh(Z)V

    return-void
.end method

.method public refresh(Z)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->v:I

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->formatNumStyle(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->refresh(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->c()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public seekShowAnim(J)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {p0, v0, p1, p2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->seekAnim(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    :cond_0
    return-void
.end method

.method public seekSwitchAnim(J)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->x:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {p0, v0, p1, p2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->seekAnim(Landroid/view/View;Landroid/animation/AnimatorSet;J)V

    :cond_0
    return-void
.end method

.method public setConnectingAlpha(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->e()V

    goto :goto_0
.end method

.method public setIndicator(Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->E:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    return-void
.end method

.method public setMode(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput p1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->B:I

    iget v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    iget v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->B:I

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->setMode(I)V

    return-void

    :cond_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->B:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSleepDeepTime(I)V
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c010d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLengthLong(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSleepTime(I)V
    .locals 3

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeHourMinLong(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->o:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->p:Landroid/widget/TextView;

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->q:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->r:Landroid/widget/TextView;

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSleepTip(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSlideUpPostion(F)V
    .locals 4

    const/high16 v1, 0x42b4

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-float v0, p1, v1

    sub-float v0, v1, v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->setRotationX(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->f:Landroid/view/View;

    iget v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->D:I

    neg-int v1, v1

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->n:Landroid/widget/TextView;

    sub-float v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setStepCalorie(I)V
    .locals 4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStepCount(I)V
    .locals 3

    iput p1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->v:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->setValue(J)V

    return-void
.end method

.method public setStepDistance([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStepGoal(I)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->i:Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/DynamicPieChartView;->setMaxValue(J)V

    return-void
.end method

.method public setStepTip(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startShow(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->refresh(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/view/DynamicView;->b()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/DynamicView;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
