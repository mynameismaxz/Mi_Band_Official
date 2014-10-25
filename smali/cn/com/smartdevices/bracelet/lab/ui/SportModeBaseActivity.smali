.class public abstract Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;


# static fields
.field private static final f:Ljava/lang/String; = "Lab"

.field private static final k:I


# instance fields
.field private final a:I

.field private b:Lcn/com/smartdevices/bracelet/lab/ui/W;

.field private final c:I

.field private final d:I

.field private e:J

.field private g:Ljava/lang/String;

.field private h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

.field private i:I

.field private j:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

.field private l:I

.field protected mRingtoneUri:Landroid/net/Uri;

.field protected mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

.field protected mTonePauseHandler:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mTonePauseHandler:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mRingtoneUri:Landroid/net/Uri;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->a:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->c:I

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->e:J

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    const/4 v0, 0x5

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->i:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->j:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->l:I

    return-void
.end method

.method private a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;->geToneUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportToneAssistor;->getDefaultToneReady(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b()V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->refreshExerciseStateView(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->startSampling(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;Ljava/lang/String;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/W;->e()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/W;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->e:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/W;->f()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcn/com/smartdevices/bracelet/model/ShareData;)V
    .locals 0

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/W;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkGroupTypeSport(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "RopeSkipping"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Situps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getBackGroundColorResId(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f080055

    const-string v1, "RopeSkipping"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Situps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f080056

    goto :goto_0
.end method

.method protected getExerciseState(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getPBInfo(Ljava/lang/String;)[I
    .locals 4

    const-string v0, "RopeSkipping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getInstance()Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/model/SportDay;-><init>()V

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/SportDay;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcn/com/smartdevices/bracelet/db/BraceletDbHelper;->getSportPBRInfo(Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Situps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected getRatePerMinute(II)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p1, 0x3c

    div-int/2addr v0, p2

    goto :goto_0
.end method

.method protected getSportTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RopeSkipping"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0209

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Situps"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0208

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected isShowGroupView(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "RopeSkipping"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Situps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract notifyTikerUpdated(J)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory;->EXTRA_SPORT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->setResult(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/com/smartdevices/bracelet/lab/SportFactory;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/lab/SportFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/SportFactory;->createSport()Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->j:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/W;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/W;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;Lcn/com/smartdevices/bracelet/lab/ui/W;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b:Lcn/com/smartdevices/bracelet/lab/ui/W;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mTonePauseHandler:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/X;

    const-string v1, "Lab"

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/X;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->stopSampling(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;Ljava/lang/String;)Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDeviceOpStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onExercisedCountChanged(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;IZ)V
    .locals 2

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-gez p2, :cond_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->registerObserver(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getDeviceOpState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->getExerciseState(I)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->i:I

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->i:I

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->a(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/X;->c()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->h:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;->setToneUri(Landroid/net/Uri;)Z

    :cond_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->b()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->unregisterObserver(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->l:I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected playTone(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mSportMonitorPlayer:Lcn/com/smartdevices/bracelet/lab/ui/X;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mRingtoneUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/lab/ui/X;->a(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mTonePauseHandler:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;->clear()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity;->mTonePauseHandler:Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportModeBaseActivity$TonePauseHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected abstract refreshExerciseStateView(I)V
.end method
