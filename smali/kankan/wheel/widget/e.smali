.class final Lkankan/wheel/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkankan/wheel/widget/OnWheelChangedListener;


# instance fields
.field private synthetic a:Lkankan/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
    .locals 0

    iput-object p1, p0, Lkankan/wheel/widget/e;->a:Lkankan/wheel/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 3

    const-string v0, "WheelView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkankan/wheel/widget/e;->a:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method
