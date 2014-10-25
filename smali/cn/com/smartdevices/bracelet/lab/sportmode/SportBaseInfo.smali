.class public abstract Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_BEST_RECORD:Ljava/lang/String; = "br"

.field public static final KEY_CONSUMING_CAL:Ljava/lang/String; = "cal"

.field public static final KEY_CONSUMING_TIME:Ljava/lang/String; = "tc"

.field public static final KEY_END_TIME:Ljava/lang/String; = "ed"

.field public static final KEY_PB:Ljava/lang/String; = "pb"

.field public static final KEY_START_TIME:Ljava/lang/String; = "st"

.field public static final TYPE:Ljava/lang/String; = "sp"

.field public static final VERSION:Ljava/lang/String; = "v"


# instance fields
.field protected mBRCount:I

.field protected mCalOfBR:I

.field protected mDataParserType:I

.field protected mEndDateTime:Ljava/util/Date;

.field protected mGroupBaseInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsGroupType:Z

.field protected mSpanTimeOfBR:I

.field protected mSportDay:Lcn/com/smartdevices/bracelet/model/SportDay;

.field protected mSportType:I

.field protected mStartDateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(IZ)V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mDataParserType:I

    iput v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mBRCount:I

    iput v4, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSpanTimeOfBR:I

    iput v4, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mCalOfBR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    iput v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    iput-boolean v4, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mStartDateTime:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-direct {v1, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;-><init>(Ljava/util/Calendar;)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportDay:Lcn/com/smartdevices/bracelet/model/SportDay;

    iput-boolean p2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mStartDateTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->b()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SportBaseInfo"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lorg/json/JSONArray;
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method


# virtual methods
.method public addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument cant be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->getType()I

    move-result v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This GroupBaseInfo is not type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initialization is not group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculteTotalCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public createJsonForDbData([B)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "sp"

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mBRCount:I

    if-ltz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "br"

    iget v3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mBRCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tc"

    iget v3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSpanTimeOfBR:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cal"

    iget v3, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mCalOfBR:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pb"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Lab"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBestRecord()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mBRCount:I

    return v0
.end method

.method public getCalOfBR()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mCalOfBR:I

    return v0
.end method

.method public getConsumeTime()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSpanTimeOfBR:I

    return v0
.end method

.method public getDay()Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportDay:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGroupSize()I
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSportType()I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    return v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mStartDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public isGroupType()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    return v0
.end method

.method public removeGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;->getType()I

    move-result v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This GroupBaseInfo is not type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initialization is not group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCalOfBR(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mCalOfBR:I

    return-void
.end method

.method public setConsumeTime(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mSpanTimeOfBR:I

    return-void
.end method

.method public setEndDate()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    return-void
.end method

.method public setEndDate(J)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mEndDateTime:Ljava/util/Date;

    return-void
.end method

.method public setGroupList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument cant be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mIsGroupType:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The initialization is not group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mGroupBaseInfoList:Ljava/util/List;

    return-void
.end method

.method public setPBCount(I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mBRCount:I

    return-void
.end method

.method public setStartDate()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mStartDateTime:Ljava/util/Date;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->mStartDateTime:Ljava/util/Date;

    return-void
.end method
