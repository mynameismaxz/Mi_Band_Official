.class public final enum Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LAB:Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

.field private static final synthetic a:[Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    const-string v1, "LAB"

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;->LAB:Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;->LAB:Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    aput-object v1, v0, v2

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;->a:[Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;
    .locals 1

    const-class v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    return-object v0
.end method

.method public static values()[Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;->a:[Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    array-length v1, v0

    new-array v2, v1, [Lcn/com/smartdevices/bracelet/lab/NewFeatureDetector$Features;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
