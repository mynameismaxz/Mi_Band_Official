.class public abstract Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextStyle(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;
    .locals 5

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyleExtractor;->getTextStyles()[Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-interface {v0}, Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public abstract getTextStyles()[Lcn/com/smartdevices/bracelet/chart/typeface/TypefaceManager$TextStyle;
.end method
