.class public Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;
    .locals 21

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    :goto_1
    new-instance v9, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;

    move/from16 v0, p0

    invoke-direct {v9, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;-><init>(I)V

    invoke-virtual {v9, v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setGroupBestRecordOfDay(I)V

    invoke-virtual {v9, v8}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setTotalCntOfDay(I)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfoBase()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v7

    new-instance v8, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;

    invoke-direct {v8}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;-><init>()V

    sub-int v10, v2, v3

    int-to-long v10, v10

    iget v7, v7, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v8, v1, v10, v11, v7}, Lcn/com/smartdevices/bracelet/lab/calories/ICalConvertStrategy;->getCalConsumed(IJI)I

    move-result v7

    invoke-virtual {v9, v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setCalOfDay(I)V

    invoke-virtual {v9, v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setCountOfBR(I)V

    invoke-virtual {v9, v4}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setConsumeTimeOfBR(I)V

    invoke-virtual {v9, v5}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setCalOfBR(I)V

    invoke-virtual {v9, v3}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setLatestArrayGExSTime(I)V

    invoke-virtual {v9, v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setLatestArrayGExETime(I)V

    invoke-virtual {v9, v1}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->setLatestArrayGExCnt(I)V

    return-object v9

    :cond_1
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Lab"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "data  key = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v11, v2, Lorg/json/JSONArray;

    if-eqz v11, :cond_3

    const-string v11, "Lab"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "data  JSONArray  key = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/4 v11, 0x0

    const v13, 0x7fffffff

    const/4 v12, 0x0

    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v20

    :goto_2
    move/from16 v0, v16

    if-lt v13, v0, :cond_2

    if-lt v11, v4, :cond_0

    move v3, v2

    move v4, v11

    move v5, v12

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v17, "gst"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "ged"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v19, "count"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v10, v19

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v11, v2, v19

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move v2, v11

    move v11, v12

    move v12, v14

    goto :goto_2

    :cond_3
    instance-of v11, v2, Ljava/lang/Integer;

    if-eqz v11, :cond_4

    const-string v2, "Lab"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "data  Integer  key = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move v2, v4

    move v4, v6

    move v6, v8

    move v8, v10

    move/from16 v20, v3

    move v3, v5

    move v5, v7

    move v7, v9

    move-object v9, v1

    move/from16 v1, v20

    const-string v10, "Lab"

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    :try_start_2
    instance-of v11, v2, Lorg/json/JSONObject;

    if-eqz v11, :cond_0

    const-string v11, "Lab"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "data  JSONObject key = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pb"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v2, Lorg/json/JSONObject;

    const-string v1, "br"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v1, "cal"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "tc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;ILorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;
    .locals 25

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v14, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;

    move/from16 v0, p1

    invoke-direct {v14, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;-><init>(I)V

    new-instance v15, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;-><init>(Landroid/content/Context;I)V

    new-instance v16, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;-><init>(I)V

    new-instance v17, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;

    invoke-direct/range {v17 .. v17}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    :goto_1
    invoke-virtual {v14, v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setGroupBestRecordOfDay(I)V

    invoke-virtual {v14, v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setTotalCntOfDay(I)V

    invoke-virtual {v14, v4}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setLatestArrayGExSTime(I)V

    invoke-virtual {v14, v3}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setLatestArrayGExETime(I)V

    invoke-virtual {v14, v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setLatestArrayGExCnt(I)V

    invoke-virtual {v14, v5}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->setCountOfBR(I)V

    return-object v14

    :cond_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v9, v2, Lorg/json/JSONArray;

    if-eqz v9, :cond_4

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_0

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const v12, 0x7fffffff

    const/4 v11, 0x0

    const/4 v9, 0x0

    move/from16 v24, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v24

    :goto_2
    move/from16 v0, v19

    if-lt v12, v0, :cond_3

    if-lt v10, v4, :cond_2

    move v3, v9

    move v4, v10

    move v5, v11

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->clear()V

    sub-int v2, v10, v11

    int-to-long v12, v2

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v12, v13}, Lcn/com/smartdevices/bracelet/lab/calories/ICalConvertStrategy;->getCalConsumed(IJ)I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setCount(I)V

    int-to-long v12, v11

    invoke-static {v12, v13}, Lcn/com/smartdevices/bracelet/lab/utils/TimeFormatter;->getMinutesOfDay(J)I

    move-result v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setStart(I)V

    int-to-long v12, v10

    invoke-static {v12, v13}, Lcn/com/smartdevices/bracelet/lab/utils/TimeFormatter;->getMinutesOfDay(J)I

    move-result v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setStop(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setCalories(I)V

    sub-int v2, v10, v11

    int-to-long v10, v2

    move-object/from16 v0, v20

    invoke-virtual {v15, v9, v0, v10, v11}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->getResultDescription(ILjava/util/List;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v6, v9, v2}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->getShareData(IILjava/lang/String;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setShareData(Lcn/com/smartdevices/bracelet/model/ShareData;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->addActiveItem(Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v24, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, v24

    const-string v9, "Lab"

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v21, "gst"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v22, "ged"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v23, "count"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v8, v23

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v0, v22

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v10, v9, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move v9, v10

    move v10, v11

    move v11, v13

    goto/16 :goto_2

    :cond_4
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    goto/16 :goto_0
.end method

.method private static a(Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->readOriginData(Ljava/lang/String;II)[B

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->createJsonForDbData([B)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Lab"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)Lorg/json/JSONObject;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Lab"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;II)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/UploadData;",
            ">;II)Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v8

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ready to update user db, may lua size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isSucceeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    return v7

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcn/com/smartdevices/bracelet/model/UploadData;

    iget-object v0, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server data empty, save to db ; info.date = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    invoke-virtual {v0, v3, p3, p2, v4}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->updateFromUploadData(Lcn/com/smartdevices/bracelet/model/UploadData;III)Z

    move-result v0

    and-int/2addr v0, v7

    move v7, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    iget-object v1, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->date:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v4}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->readOriginData(Ljava/lang/String;II)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v5, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    :goto_1
    iget-object v0, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->a([B)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Lab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Local merged data = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->a(Landroid/content/Context;ILorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Lab"

    const-string v1, "summeryInfo empty, save to db"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    iget-object v1, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->date:Ljava/lang/String;

    iget-object v2, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    iget-object v5, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->summary:Ljava/lang/String;

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->write(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v7

    move v7, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "Lab"

    const-string v1, "ReadOriginData local data is empty"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Lab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "summeryInfo summeryInfo = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getSummeryJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    iget-object v1, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->date:Ljava/lang/String;

    iget-object v2, v3, Lcn/com/smartdevices/bracelet/model/UploadData;->data:[B

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->write(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v7

    move v7, v0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;

    instance-of v2, v0, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;

    if-eqz v2, :cond_0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportUserOriginInfo;->getActiveItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;

    invoke-static {}, Lcom/xiaomi/hm/bleservice/DynamicManager;->getInstance()Lcom/xiaomi/hm/bleservice/DynamicManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/xiaomi/hm/bleservice/DynamicManager;->generateLabReport(Landroid/content/Context;Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;)V

    goto :goto_2
.end method

.method public static updateDBOfDayFromClient(Landroid/content/Context;Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;Lcn/com/smartdevices/bracelet/model/ShareData;)Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->a(Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v0

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->a(ILorg/json/JSONObject;)Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getSummeryJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v3

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->write(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfoBase()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;-><init>()V

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExCnt()I

    move-result v2

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExETime()I

    move-result v3

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExSTime()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget v0, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcn/com/smartdevices/bracelet/lab/calories/ICalConvertStrategy;->getCalConsumed(IJI)I

    move-result v0

    if-eqz p2, :cond_2

    if-lez v0, :cond_2

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getSportType()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;-><init>(I)V

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setCalories(I)V

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExCnt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setCount(I)V

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExSTime()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/lab/utils/TimeFormatter;->getMinutesOfDay(J)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setStart(I)V

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/lab/sportmode/DaySportOriginInfo;->getLatestArrayGExETime()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/lab/utils/TimeFormatter;->getMinutesOfDay(J)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setStop(I)V

    invoke-virtual {v1, p2}, Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;->setShareData(Lcn/com/smartdevices/bracelet/model/ShareData;)V

    invoke-static {}, Lcom/xiaomi/hm/bleservice/DynamicManager;->getInstance()Lcom/xiaomi/hm/bleservice/DynamicManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/hm/bleservice/DynamicManager;->generateLabReport(Landroid/content/Context;Lcn/com/smartdevices/bracelet/lab/sportmode/LabFactoryActiveItem;)V

    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public static updateDBOfDayFromServer(Landroid/content/Context;Ljava/util/ArrayList;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/UploadData;",
            ">;II)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No data from server of sportType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Lcn/com/smartdevices/bracelet/lab/SportFactory$LabSportType;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Lab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not support to parse sportType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->a(Landroid/content/Context;Ljava/util/ArrayList;II)Z

    move-result v0

    goto :goto_0
.end method
