.class final Lcom/google/zxing/datamatrix/detector/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/datamatrix/detector/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/c;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/datamatrix/detector/b;Lcom/google/zxing/datamatrix/detector/b;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/detector/b;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/zxing/datamatrix/detector/b;

    check-cast p2, Lcom/google/zxing/datamatrix/detector/b;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/b;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
