.class final Lu/aly/cK;
.super Lu/aly/di;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di",
        "<",
        "Lu/aly/bh;",
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

    invoke-direct {p0}, Lu/aly/cK;-><init>()V

    return-void
.end method

.method private a(Lu/aly/cy;Lu/aly/bh;)V
    .locals 5

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-eqz v1, :cond_9

    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lu/aly/cy;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, Lu/aly/bh;->F()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static b(Lu/aly/cy;Lu/aly/bh;)V
    .locals 1

    invoke-virtual {p1}, Lu/aly/bh;->F()V

    invoke-static {}, Lu/aly/bh;->G()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    iget-object v0, p1, Lu/aly/bh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/bh;->H()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_0
    iget-object v0, p1, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/bh;->I()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_1
    iget-object v0, p1, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lu/aly/bh;->J()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_2
    invoke-static {}, Lu/aly/bh;->K()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p1, Lu/aly/bh;->d:I

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    invoke-static {}, Lu/aly/bh;->L()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p1, Lu/aly/bh;->e:I

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    invoke-static {}, Lu/aly/bh;->M()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p1, Lu/aly/bh;->f:I

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    iget-object v0, p1, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, Lu/aly/bh;->N()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_3
    iget-object v0, p1, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lu/aly/bh;->O()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_4
    iget-object v0, p1, Lu/aly/bh;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lu/aly/bh;->P()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p1, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/cy;->c()V

    :cond_5
    invoke-virtual {p0}, Lu/aly/cy;->d()V

    invoke-virtual {p0}, Lu/aly/cy;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 5

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    check-cast p2, Lu/aly/bh;

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-eqz v1, :cond_9

    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lu/aly/cy;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, Lu/aly/bh;->F()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 1

    check-cast p2, Lu/aly/bh;

    invoke-virtual {p2}, Lu/aly/bh;->F()V

    invoke-static {}, Lu/aly/bh;->G()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/bh;->H()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_0
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/bh;->I()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_1
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lu/aly/bh;->J()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_2
    invoke-static {}, Lu/aly/bh;->K()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    invoke-static {}, Lu/aly/bh;->L()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    invoke-static {}, Lu/aly/bh;->M()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, Lu/aly/bh;->N()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_3
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lu/aly/bh;->O()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_4
    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lu/aly/bh;->P()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/cy;->c()V

    :cond_5
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    invoke-virtual {p1}, Lu/aly/cy;->b()V

    return-void
.end method
