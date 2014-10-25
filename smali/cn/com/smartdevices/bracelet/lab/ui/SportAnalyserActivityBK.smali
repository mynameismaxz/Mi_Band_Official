.class public Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;
.super Landroid/app/Activity;

# interfaces
.implements Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;


# static fields
.field private static final I:I = 0x0

.field private static final k:Ljava/lang/String; = "Lab"

.field private static final q:I = 0x1d4c0

.field private static final r:I = 0x1f40


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Ljava/lang/String;

.field private D:Landroid/view/animation/Animation;

.field private E:Z

.field private F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

.field private G:Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

.field private H:Z

.field private J:Z

.field private K:I

.field private L:Lcn/com/smartdevices/bracelet/model/ShareData;

.field private a:Lcn/com/smartdevices/bracelet/lab/ui/M;

.field private b:Landroid/net/Uri;

.field private c:Lcn/com/smartdevices/bracelet/lab/ui/X;

.field private d:I

.field private e:Lcn/com/smartdevices/bracelet/lab/ui/G;

.field private f:Lcn/com/smartdevices/bracelet/lab/ui/J;

.field private g:I

.field private h:I

.field private i:J

.field private final j:Ljava/text/SimpleDateFormat;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/TextView;

.field private p:Ljava/lang/String;

.field private s:Lcn/com/smartdevices/bracelet/lab/ui/a;

.field private t:Lcn/com/smartdevices/bracelet/lab/ui/a;

.field private u:I

.field private v:I

.field private w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

.field private x:I

.field private y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a:Lcn/com/smartdevices/bracelet/lab/ui/M;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b:Landroid/net/Uri;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->j:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l:Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m:Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->s:Lcn/com/smartdevices/bracelet/lab/ui/a;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->t:Lcn/com/smartdevices/bracelet/lab/ui/a;

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->v:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    const/4 v0, 0x5

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->x:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->A:Landroid/view/View;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->B:Landroid/widget/TextView;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    iput-boolean v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->E:Z

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->G:Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

    iput-boolean v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    iput-boolean v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->J:Z

    iput v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->L:Lcn/com/smartdevices/bracelet/model/ShareData;

    return-void
.end method

.method private a(I)I
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

.method private a(II)I
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

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(II)I

    move-result v0

    return v0
.end method

.method private a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

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

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/X;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/lab/ui/X;->a(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a:Lcn/com/smartdevices/bracelet/lab/ui/M;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/M;->a()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a:Lcn/com/smartdevices/bracelet/lab/ui/M;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/smartdevices/bracelet/lab/ui/M;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcn/com/smartdevices/bracelet/model/ShareData;)V
    .locals 8

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    add-int v5, v0, v1

    if-gtz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->setEndDate()V

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    if-gt v0, v5, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v0, v5}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->setPBCount(I)V

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->d()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x64

    invoke-virtual {v0, v5, v1, v2, v3}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;->getCalConsumed(IJI)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->setCalOfBR(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/lab/ui/G;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->setConsumeTime(I)V

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getGroupSize()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v7, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    iget-wide v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v3

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;-><init>(JJII)V

    invoke-virtual {v7, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object p2

    :cond_3
    invoke-static {p1, v0, p2}, Lcn/com/smartdevices/bracelet/lab/datasync/LabSportDBDataCreator;->updateDBOfDayFromClient(Landroid/content/Context;Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;Lcn/com/smartdevices/bracelet/model/ShareData;)Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    if-lez v0, :cond_5

    iget-object v7, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    iget-wide v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v3

    iget v5, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;-><init>(JJII)V

    invoke-virtual {v7, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d:I

    if-le v0, v1, :cond_2

    iget-object v7, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;

    iget-wide v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v3

    iget v5, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iget v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;-><init>(JJII)V

    invoke-virtual {v7, v0}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->addGroupItem(Lcn/com/smartdevices/bracelet/lab/sportmode/GroupBaseInfo;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;J)V
    .locals 0

    iput-wide p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->J:Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->s:Lcn/com/smartdevices/bracelet/lab/ui/a;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/a;->c()Lcn/com/smartdevices/bracelet/lab/ui/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->s:Lcn/com/smartdevices/bracelet/lab/ui/a;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/a;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
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

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;
    .locals 6

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/LabShareInfoCreator;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;->getSportType()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareInfoCreator;-><init>(Landroid/content/Context;I)V

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v4}, Lcn/com/smartdevices/bracelet/lab/ui/G;->b()J

    move-result-wide v4

    invoke-virtual {v1, v0, v3, v4, v5}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareInfoCreator;->getResultDescription(ILjava/util/List;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareInfoCreator;->getShareData(IILjava/lang/String;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;
    .locals 1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object v0

    return-object v0
.end method

.method private b(II)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c023c

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c023e

    invoke-virtual {p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c023d

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(Ljava/lang/String;)I

    move-result v1

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->A:Landroid/view/View;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->A:Landroid/view/View;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l:Landroid/widget/TextView;

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->B:Landroid/widget/TextView;

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m:Landroid/widget/TextView;

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->G:Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->B:Landroid/widget/TextView;

    const v1, 0x7f0c023d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l:Landroid/widget/TextView;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/C;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/ui/C;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/D;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/lab/ui/D;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l:Landroid/widget/TextView;

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->v:I

    invoke-direct {p0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    new-instance v1, Lcn/com/smartdevices/bracelet/lab/ui/I;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/I;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/I;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private b(I)V
    .locals 7

    const/high16 v2, 0x40a00000

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    div-float v1, v0, v2

    int-to-float v0, p1

    div-float v2, v0, v2

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->startStateViewAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->t:Lcn/com/smartdevices/bracelet/lab/ui/a;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/a;->c()Lcn/com/smartdevices/bracelet/lab/ui/a;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->t:Lcn/com/smartdevices/bracelet/lab/ui/a;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/a;->a()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[I
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

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RopeSkipping"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0209

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Situps"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0208

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->j:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/model/ShareData;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->L:Lcn/com/smartdevices/bracelet/model/ShareData;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/com/smartdevices/bracelet/lab/ui/SportResultShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "share_data"

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->L:Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory;->EXTRA_SPORT_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to start share activity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->A:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    const v1, 0x7f0c020b

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(I)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->startSampling(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;Ljava/lang/String;)Z

    invoke-direct {p0, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->j:Ljava/text/SimpleDateFormat;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->e()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(I)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    const v1, 0x7f0c020d

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->f()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    const v1, 0x7f0c020c

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;->setStateText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d(I)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->E:Z

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->E:Z

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)I
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

.method static synthetic d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/J;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->A:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e(I)V

    return-void
.end method

.method private d()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;->isUserConfirmAutoCounter()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "operation"

    const v4, 0x7f0c00a8

    invoke-virtual {p0, v4}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mainNotice"

    const v4, 0x7f0c0210

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcn/com/smartdevices/bracelet/lab/ui/SportTimeoutFragment;

    new-instance v3, Lcn/com/smartdevices/bracelet/lab/ui/E;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/lab/ui/E;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    invoke-static {p0, v0, v2, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportTimeoutFragment;->showPanel(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;)V

    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const v2, 0x7f0c00a8

    invoke-virtual {p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mainNotice"

    const v2, 0x7f0c020f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extraNotice"

    const v2, 0x7f0c020e

    invoke-virtual {p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcn/com/smartdevices/bracelet/lab/ui/SportTimeoutFragment;

    new-instance v2, Lcn/com/smartdevices/bracelet/lab/ui/F;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/lab/ui/F;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V

    invoke-static {p0, v1, v0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportTimeoutFragment;->showPanel(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcn/com/smartdevices/bracelet/ui/DimPanelFragment$OpClickListener;)V

    return-void
.end method

.method private e(I)V
    .locals 3

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->l:Landroid/widget/TextView;

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/lab/ui/G;->d()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    return-void
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    return v0
.end method

.method private e(Ljava/lang/String;)Z
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

.method static synthetic f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->y:Lcn/com/smartdevices/bracelet/lab/ui/view/LabCircleView;

    return-object v0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Z)V

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->a()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/G;->a()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    return-void
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    return v0
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d:I

    return-void
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->h:I

    return v0
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->x:I

    return-void
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(I)V

    return-void
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->G:Lcn/com/smartdevices/bracelet/lab/ui/view/CircleListScrollView;

    return-object v0
.end method

.method static synthetic k(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    return-object v0
.end method

.method static synthetic l(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)J
    .locals 2

    iget-wide v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->i:J

    return-wide v0
.end method

.method static synthetic m(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/ui/G;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    return-object v0
.end method

.method static synthetic n(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic o(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d:I

    return v0
.end method

.method static synthetic p(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c()V

    return-void
.end method

.method static synthetic t(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;)Lcn/com/smartdevices/bracelet/lab/PBRecordPref;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    return-object v0
.end method


# virtual methods
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

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->setContentView(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory;->EXTRA_SPORT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->setResult(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/SportFactory;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/lab/SportFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/SportFactory;->createSport()Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->F:Lcn/com/smartdevices/bracelet/lab/sportmode/SportBaseInfo;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-direct {v0, p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/J;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/J;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/G;

    invoke-direct {v0, p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/G;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/G;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->e:Lcn/com/smartdevices/bracelet/lab/ui/G;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/M;

    invoke-direct {v0, p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/M;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Lcn/com/smartdevices/bracelet/lab/ui/M;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a:Lcn/com/smartdevices/bracelet/lab/ui/M;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/X;

    const-string v1, "Lab"

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/lab/ui/X;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget v1, v0, v3

    iput v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->u:I

    aget v1, v0, v3

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(II)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->v:I

    :cond_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->d()Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->p:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->stopSampling(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->L:Lcn/com/smartdevices/bracelet/model/ShareData;

    :goto_0
    invoke-direct {p0, p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Landroid/content/Context;Lcn/com/smartdevices/bracelet/model/ShareData;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceOpStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onExercisedCountChanged(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;IZ)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->x:I

    if-eq v0, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f:Lcn/com/smartdevices/bracelet/lab/ui/J;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/lab/ui/J;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p3}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(Z)V

    :cond_2
    invoke-direct {p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b(Z)V

    invoke-direct {p0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(Z)V

    sget-boolean v0, Lcn/com/smartdevices/bracelet/lab/debug/RawDataGetter;->ERROR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->o:Landroid/widget/TextView;

    const-string v1, "Data ERROR"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 9

    const-wide/32 v3, 0x1d4c0

    const-wide/16 v7, 0x1f40

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->registerObserver(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/K;

    const-string v2, "preparing"

    move-object v1, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/ui/K;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->t:Lcn/com/smartdevices/bracelet/lab/ui/a;

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->H:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/ui/K;

    const-string v2, "group"

    move-object v1, p0

    move-wide v3, v7

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Lcn/com/smartdevices/bracelet/lab/ui/K;-><init>(Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->s:Lcn/com/smartdevices/bracelet/lab/ui/a;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->n:Ljava/util/List;

    :cond_0
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getDeviceOpState()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->a(I)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->x:I

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->x:I

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->c:Lcn/com/smartdevices/bracelet/lab/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/lab/ui/X;->c()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->w:Lcn/com/smartdevices/bracelet/lab/PBRecordPref;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lab/PBRecordPref;->setToneUri(Landroid/net/Uri;)Z

    :cond_1
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->f()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_2
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->getInstance(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/com/smartdevices/bracelet/lab/LabSportAnalyserController;->unregisterObserver(Lcn/com/smartdevices/bracelet/lab/SportAnalyserObserver;)V

    iget v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->g:I

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/SportAnalyserActivityBK;->K:I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
