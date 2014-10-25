.class public Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "/"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->b:I

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    iput p2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    const v0, 0x7f0c0209

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    const v0, 0x7f0c0208

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getResultDescription(ILjava/util/List;J)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lez v2, :cond_0

    if-gtz v3, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v1, 0x7f0c021b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;-><init>()V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfoBase()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, p3, v6

    iget v5, v5, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-interface {v0, p1, v6, v7, v5}, Lcn/com/smartdevices/bracelet/lab/calories/ICalConvertStrategy;->getCalConsumed(IJI)I

    move-result v5

    if-eqz p2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v3, "/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c0216

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c0217

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v2, 0x7f0c023e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v2, 0x7f0c023b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-gtz v2, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v1, 0x7f0c021c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v1, 0x7f0c021d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    mul-int/lit8 v0, v2, 0x3c

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcn/com/smartdevices/bracelet/lab/utils/SportConverter;->convertRopeSkippingCounts2Steps(II)I

    move-result v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c0218

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c023e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c023b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v3, 0x7f0c023f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public getShareData(IILjava/lang/String;)Lcn/com/smartdevices/bracelet/model/ShareData;
    .locals 3

    new-instance v1, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>()V

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/model/ShareData;->setType(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v2, 0x7f0c0219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v2, 0x7f0c0234

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    iput-object p3, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    iget v2, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->b:I

    invoke-direct {p0, v0, v2}, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/model/ShareData;->setType(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/lab/ui/LabShareContentFactory;->a:Landroid/content/Context;

    const v2, 0x7f0c021a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    goto :goto_1
.end method
