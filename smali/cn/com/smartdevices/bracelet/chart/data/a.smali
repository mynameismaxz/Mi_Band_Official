.class final Lcn/com/smartdevices/bracelet/chart/data/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;


# direct methods
.method private constructor <init>(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/chart/data/a;-><init>(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mCallback:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->loadData(I)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;->index:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mItemsData:Landroid/util/SparseArray;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private a(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mCallback:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-interface {v0, p1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->onDataLoaded(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->a(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mCallback:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->loadData(I)Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;->index:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mItemsData:Landroid/util/SparseArray;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->a(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->mCallback:Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;

    invoke-interface {v0, p1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;->onDataLoaded(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$ItemData;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/chart/data/a;->a:Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;->a(Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
