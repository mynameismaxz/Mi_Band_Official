.class final Lcom/google/zxing/datamatrix/decoder/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/g;->a:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/g;->b:I

    return-void
.end method

.method synthetic constructor <init>(IIB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/g;-><init>(II)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/g;->a:I

    return v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/g;->b:I

    return v0
.end method
