.class Lcn/com/smartdevices/bracelet/chart/deprecated/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/chart/base/ChartScroller$ScrollingListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Chart.StatisticChartView"

    const-string v1, "Scroll OnFinish!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->d(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;

    move-result-object v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Lcn/com/smartdevices/bracelet/chart/base/BaseChart;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;->itemOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;->onToItem(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->e(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;Z)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;I)V

    return-void
.end method

.method public onJustify()V
    .locals 2

    const-string v0, "Chart.StatisticChartView"

    const-string v1, "Scroll OnJustify!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->b(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->c(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Lcn/com/smartdevices/bracelet/chart/base/ChartScroller;

    move-result-object v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Lcn/com/smartdevices/bracelet/chart/base/BaseChart;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;->justified()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/base/ChartScroller;->scrollX(I)V

    :cond_0
    return-void
.end method

.method public onScrollX(I)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Lcn/com/smartdevices/bracelet/chart/base/BaseChart;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartOld;->scroll(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->postInvalidateOnAnimation()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->b(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScrollY(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Chart.StatisticChartView"

    const-string v1, "Scroll OnStart!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/p;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;Z)V

    return-void
.end method
