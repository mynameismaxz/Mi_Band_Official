.class final Lu/aly/bO;
.super Lu/aly/dj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj",
        "<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bO;-><init>()V

    return-void
.end method

.method private static a(Lu/aly/cy;Lu/aly/ba;)V
    .locals 1

    check-cast p0, Lu/aly/de;

    iget v0, p1, Lu/aly/ba;->a:I

    invoke-virtual {p0, v0}, Lu/aly/de;->a(I)V

    iget v0, p1, Lu/aly/ba;->b:I

    invoke-virtual {p0, v0}, Lu/aly/de;->a(I)V

    return-void
.end method

.method private static b(Lu/aly/cy;Lu/aly/ba;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p0, Lu/aly/de;

    invoke-virtual {p0}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p1, Lu/aly/ba;->a:I

    invoke-virtual {p1, v1}, Lu/aly/ba;->a(Z)V

    invoke-virtual {p0}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p1, Lu/aly/ba;->b:I

    invoke-virtual {p1, v1}, Lu/aly/ba;->b(Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p2, Lu/aly/ba;

    check-cast p1, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->a:I

    invoke-virtual {p2, v1}, Lu/aly/ba;->a(Z)V

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p2, v1}, Lu/aly/ba;->b(Z)V

    return-void
.end method

.method public final synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 1

    check-cast p2, Lu/aly/ba;

    check-cast p1, Lu/aly/de;

    iget v0, p2, Lu/aly/ba;->a:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    iget v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    return-void
.end method
