.class public Lcn/com/smartdevices/bracelet/sensorhub/Step;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->a:I

    iput-wide p2, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->b:J

    iput p4, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->c:I

    return-void
.end method

.method public static insert(Landroid/content/ContentResolver;Lcn/com/smartdevices/bracelet/sensorhub/Step;)J
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_begin_time"

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/sensorhub/Step;->getBeginTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_begin_steps"

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/sensorhub/Step;->getBeginSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcn/com/smartdevices/bracelet/sensorhub/Steps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getBeginSteps()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->c:I

    return v0
.end method

.method public getBeginTime()J
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->b:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->a:I

    return v0
.end method

.method public setBeginSteps(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->c:I

    return-void
.end method

.method public setBeginTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->b:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/sensorhub/Step;->a:I

    return-void
.end method
