.class public Lu/aly/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Lu/aly/k;->a(Landroid/content/Context;)Lu/aly/k;

    move-result-object v0

    invoke-virtual {p0, p1}, Lu/aly/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "session_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "session_end_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lu/aly/k;->a(Lu/aly/p;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/k;->a(Lu/aly/p;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .locals 3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;)Z
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const-string v1, "a_start_time"

    invoke-interface {p0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "a_end_time"

    invoke-interface {p0, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    sub-long v1, v5, v1

    sget-wide v7, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    const-string v1, "MobclickAgent"

    const-string v2, "onResume called before onPause"

    invoke-static {v1, v2}, Lu/aly/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-long v1, v5, v3

    sget-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/af;
    .locals 13

    invoke-static {p1}, Lu/aly/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "session_start_time"

    const-wide/16 v3, 0x0

    invoke-interface {v8, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "session_end_time"

    const-wide/16 v5, 0x0

    invoke-interface {v8, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_1

    sub-long v0, v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    cmp-long v7, v9, v11

    if-lez v7, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    new-instance v7, Lu/aly/af;

    invoke-direct {v7}, Lu/aly/af;-><init>()V

    invoke-virtual {v7, v2}, Lu/aly/af;->a(Ljava/lang/String;)Lu/aly/bd;

    invoke-virtual {v7, v3, v4}, Lu/aly/af;->a(J)Lu/aly/bd;

    invoke-virtual {v7, v5, v6}, Lu/aly/af;->b(J)Lu/aly/bd;

    invoke-virtual {v7, v0, v1}, Lu/aly/af;->c(J)Lu/aly/bd;

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lu/aly/aw;

    const/4 v1, 0x0

    aget-wide v1, v3, v1

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lu/aly/aw;-><init>(DDJ)V

    invoke-virtual {v7}, Lu/aly/af;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7, v0}, Lu/aly/af;->a(Lu/aly/aw;)V

    :cond_2
    :goto_1
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Lu/aly/be;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v0}, Lu/aly/af;->a(Lu/aly/be;)Lu/aly/bd;

    :cond_3
    invoke-static {v8}, Lu/aly/z;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v7, v0}, Lu/aly/af;->a(Ljava/util/List;)Lu/aly/bd;

    :cond_4
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v7

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/aw;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu/aly/af;->b(Ljava/util/List;)Lu/aly/bd;

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lu/aly/bi;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    invoke-static {p1}, Lu/aly/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "a_start_time"

    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "a_end_time"

    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v2, v10

    if-eqz v0, :cond_2

    sub-long v2, v6, v2

    sget-wide v8, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_2

    const-string v0, "MobclickAgent"

    const-string v2, "onResume called before onPause"

    invoke-static {v0, v2}, Lu/aly/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p1}, Lu/aly/k;->a(Landroid/content/Context;)Lu/aly/k;

    move-result-object v0

    invoke-virtual {p0, p1}, Lu/aly/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "session_id"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v5, "session_end_time"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Lu/aly/k;->a(Lu/aly/p;)V

    :goto_2
    const-string v0, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start new session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/aly/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    sub-long v2, v6, v4

    sget-wide v4, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v12}, Lu/aly/k;->a(Lu/aly/p;)V

    goto :goto_2

    :cond_4
    const-string v0, "session_id"

    invoke-interface {v1, v0, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Extend current session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lu/aly/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p1}, Lu/aly/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "onPause called before onResume"

    invoke-static {v0, v1}, Lu/aly/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "a_start_time"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "a_end_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "session_end_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
