.class final Lcn/com/smartdevices/bracelet/lab/ui/J;
.super Landroid/os/Handler;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x2

.field public static final e:I = 0x1

.field public static final f:I = 0x3


# instance fields
.field final synthetic g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/J;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->removeMessages(I)V

    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Landroid/content/Context;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->j(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;->addView(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->k(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v7

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v3

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->k(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;-><init>(JJII)V

    invoke-virtual {v7, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V

    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;J)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->startStateViewAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->k(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v7

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v3

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v5}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v5

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->k(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;-><init>(JJII)V

    invoke-virtual {v7, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;J)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I

    move-result v0

    :cond_6
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    const v3, 0x7f0c023d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/J;->g:Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;

    invoke-static {v6}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;

    move-result-object v6

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/ui/G;->d()I

    move-result v6

    invoke-static {v5, v0, v6}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
