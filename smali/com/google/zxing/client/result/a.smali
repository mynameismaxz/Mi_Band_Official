.class abstract Lcom/google/zxing/client/result/a;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/a;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/a;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
