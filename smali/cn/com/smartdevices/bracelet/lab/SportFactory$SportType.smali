.class public final enum Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

.field public static final enum ROPE_SKIPPING:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

.field public static final enum SIT_UP:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

.field private static final synthetic a:[Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    const-string v1, "ROPE_SKIPPING"

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->ROPE_SKIPPING:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    const-string v1, "SIT_UP"

    invoke-direct {v0, v1, v3}, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->SIT_UP:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->OTHER:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->ROPE_SKIPPING:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->SIT_UP:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->OTHER:Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->a:[Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;
    .locals 1

    const-class v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    return-object v0
.end method

.method public static values()[Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;->a:[Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    array-length v1, v0

    new-array v2, v1, [Lcn/com/smartdevices/bracelet/lab/SportFactory$SportType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
