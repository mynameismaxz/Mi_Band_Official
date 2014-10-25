.class public Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_END_TIME:Ljava/lang/String; = "ged"

.field public static final KEY_START_TIME:Ljava/lang/String; = "gst"


# instance fields
.field protected mCount:I

.field protected mEndTime:J

.field protected mSportType:I

.field protected mStartTime:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mStartTime:J

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mEndTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mSportType:I

    iput-wide p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mStartTime:J

    iput-wide p3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mEndTime:J

    iput p5, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mCount:I

    iput p6, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mSportType:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mCount:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mEndTime:J

    return-wide v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "gst"

    iget-wide v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mStartTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ged"

    iget-wide v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mEndTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "count"

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "GroupBaseInfo"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mStartTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mSportType:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mCount:I

    return-void
.end method

.method public setEndTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mEndTime:J

    return-void
.end method

.method public setStartTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mStartTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->mSportType:I

    return-void
.end method
