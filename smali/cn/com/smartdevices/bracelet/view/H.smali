.class final Lcn/com/smartdevices/bracelet/view/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;
    .locals 1

    new-instance v0, Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;

    invoke-direct {v0, p0, p1}, Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private static a(I)[Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;
    .locals 1

    new-array v0, p0, [Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcn/com/smartdevices/bracelet/view/VerticalViewPager$SavedState;

    return-object v0
.end method
