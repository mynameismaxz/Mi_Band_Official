.class public final Lcn/com/smartdevices/bracelet/lab/calories/CaloriesStrategyFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCalStrategy(I)Lcn/com/smartdevices/bracelet/lab/calories/a;
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/calories/b;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/lab/calories/b;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    new-instance v0, Lcn/com/smartdevices/bracelet/lab/calories/c;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/lab/calories/c;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dont support sportType ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
