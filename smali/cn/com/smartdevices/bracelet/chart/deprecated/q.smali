.class final Lcn/com/smartdevices/bracelet/chart/deprecated/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

.field private final synthetic b:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->b:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasData(I)Z
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->b:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-interface {v0, p1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public final loadData(I)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->b:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-interface {v0, p1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->loadData(I)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;

    move-result-object v0

    return-object v0
.end method

.method public final onDataLoaded(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    move-object v0, p1

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld$StatisticChartData;

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->a(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld$StatisticChartData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->f(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->refresh()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->g(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;->index:I

    if-nez v0, :cond_0

    iget v0, p1, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;->index:I

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->onToItem(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->a:Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;->b(Lcn/com/smartdevices/bracelet/chart/deprecated/StatisticChartViewOld;Z)V

    :cond_0
    return-void
.end method

.method public final onToItem(I)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/deprecated/q;->b:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-interface {v0, p1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->onToItem(I)V

    return-void
.end method
