.class final Lu/aly/bI;
.super Lu/aly/di;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di",
        "<",
        "Lu/aly/ay;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bI;-><init>()V

    return-void
.end method

.method private a(Lu/aly/cy;Lu/aly/ay;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-eqz v1, :cond_2

    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lu/aly/ay;->a(Z)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ay;->b:J

    invoke-virtual {p2, v3}, Lu/aly/ay;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    invoke-virtual {p2}, Lu/aly/ay;->i()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lu/aly/ay;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lu/aly/cy;Lu/aly/ay;)V
    .locals 2

    invoke-virtual {p1}, Lu/aly/ay;->j()V

    invoke-static {}, Lu/aly/ay;->k()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    iget-object v0, p1, Lu/aly/ay;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/ay;->l()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_0
    invoke-static {}, Lu/aly/ay;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-wide v0, p1, Lu/aly/ay;->b:J

    invoke-virtual {p0, v0, v1}, Lu/aly/cy;->a(J)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    invoke-virtual {p0}, Lu/aly/cy;->d()V

    invoke-virtual {p0}, Lu/aly/cy;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Lu/aly/ay;

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-eqz v1, :cond_2

    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lu/aly/ay;->a(Z)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ay;->b:J

    invoke-virtual {p2, v3}, Lu/aly/ay;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    invoke-virtual {p2}, Lu/aly/ay;->i()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lu/aly/ay;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 2

    check-cast p2, Lu/aly/ay;

    invoke-virtual {p2}, Lu/aly/ay;->j()V

    invoke-static {}, Lu/aly/ay;->k()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    iget-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/ay;->l()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_0
    invoke-static {}, Lu/aly/ay;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-wide v0, p2, Lu/aly/ay;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    invoke-virtual {p1}, Lu/aly/cy;->d()V

    invoke-virtual {p1}, Lu/aly/cy;->b()V

    return-void
.end method
