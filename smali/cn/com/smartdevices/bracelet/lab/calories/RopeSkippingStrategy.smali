.class public Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/lab/calories/ICalConvertStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalConsumed(IJ)I
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfoBase()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iget v0, v0, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;->getCalConsumed(IJI)I

    move-result v0

    return v0
.end method

.method public getCalConsumed(IJI)I
    .locals 4

    const/high16 v3, 0x42700000

    invoke-virtual {p0, p1, p2, p3}, Lcn/com/smartdevices/bracelet/lab/calories/RopeSkippingStrategy;->getMets(IJ)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    if-gtz p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const v1, 0x3fab851f

    const/high16 v2, 0x3f800000

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    int-to-float v1, p4

    mul-float/2addr v0, v1

    long-to-float v1, p2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method protected getMets(IJ)F
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p1

    div-long/2addr v0, p2

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/high16 v0, 0x41000000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41400000

    goto :goto_0
.end method
