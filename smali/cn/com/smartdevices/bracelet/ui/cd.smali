.class Lcn/com/smartdevices/bracelet/ui/cd;
.super Lcn/com/smartdevices/bracelet/ui/cc;


# instance fields
.field final synthetic q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

.field private r:[Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)V
    .locals 2

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/com/smartdevices/bracelet/ui/cc;-><init>(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;Lcn/com/smartdevices/bracelet/ui/cc;)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->r:[Ljava/lang/String;

    const v0, 0x7f0c0017

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->s:Ljava/lang/String;

    const v0, 0x7f0c0018

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->t:Ljava/lang/String;

    const v0, 0x7f0c001f

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->u:Ljava/lang/String;

    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->v:Ljava/lang/String;

    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;
    .locals 4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->e(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v1

    const-string v0, "Statistic.Main"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Day : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->a(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->f(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/DataManager;->getSummary(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData$Summary;

    move-result-object v0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->a(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v2, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData$Summary;->getSteps()I

    move-result v3

    iput v3, v2, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;->stepValue:I

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData$Summary;->getSleep()I

    move-result v3

    iput v3, v2, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;->sleepValue:I

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData$Summary;->getSleepDeepTime()I

    move-result v0

    iput v0, v2, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;->sleepDeepValue:I

    :cond_0
    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/cd;->b(Lcn/com/smartdevices/bracelet/model/SportDay;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/chart/StatisticChartView$StatisticChartData;->date:Ljava/lang/String;

    return-object v2

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->a(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/DaySportData$Summary;

    goto :goto_0
.end method

.method protected a(Lcn/com/smartdevices/bracelet/model/SportDay;I)Lcn/com/smartdevices/bracelet/model/ShareData;
    .locals 6

    new-instance v5, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v5}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>()V

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->l(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)I

    move-result v0

    invoke-virtual {p0, v0, v5, p1}, Lcn/com/smartdevices/bracelet/ui/cd;->a(ILcn/com/smartdevices/bracelet/model/ShareData;Lcn/com/smartdevices/bracelet/model/SportDay;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->j(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    const v1, 0x7f0c0154

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/cd;->c:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->a:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->b:I

    iget v3, p0, Lcn/com/smartdevices/bracelet/ui/cd;->o:I

    invoke-static/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/Utils;->getDayShareTips(Landroid/content/Context;IIIILcn/com/smartdevices/bracelet/model/ShareData;)Lcn/com/smartdevices/bracelet/model/ShareData;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->d(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatStringDay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcn/com/smartdevices/bracelet/model/SportDay;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->j(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->s:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->j(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/com/smartdevices/bracelet/model/SportDay;->offsetDay(Lcn/com/smartdevices/bracelet/model/SportDay;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->k(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->t:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_2

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    if-ne v2, v4, :cond_2

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->year:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setYear(I)V

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMonth(I)V

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setDate(I)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setMonth(I)V

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-virtual {v0, v2}, Ljava/util/Date;->setDate(I)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/cd;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected b(Lcn/com/smartdevices/bracelet/model/SportDay;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->j(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->s:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->j(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->offsetDay(Lcn/com/smartdevices/bracelet/model/SportDay;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->getWeek()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->r:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->year:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->k(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->w:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->t:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->getWeek()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->r:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_1
    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->year:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->w:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected b(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0xe

    const v0, 0x7f0700c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700c9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700cc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700cd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/cd;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/cd;->b:I

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->d:I

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->e:I

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->f:I

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b(I)Z
    .locals 3

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->g(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->e(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->offsetDay(Lcn/com/smartdevices/bracelet/model/SportDay;)I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const-string v0, "Statistic.Main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has data False : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->e(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    const-string v1, "Statistic.Main"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "To Day : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->b(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->c(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/cd;->a()V

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/cd;->c(Lcn/com/smartdevices/bracelet/model/SportDay;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->h(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/cd;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/cd;->q:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->i(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/cd;->b(Landroid/view/View;)V

    return-void
.end method
