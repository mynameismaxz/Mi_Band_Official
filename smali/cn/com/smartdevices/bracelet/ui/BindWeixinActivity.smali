.class public Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;
.super Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x1f4

.field private static final h:I = 0x1f4

.field private static final i:I = 0x1

.field private static final j:I = 0x0

.field private static final k:Ljava/lang/String; = "BindWeixinActivity"


# instance fields
.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/String;

.field private p:Landroid/media/MediaScannerConnection;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/Button;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;-><init>()V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->m:Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->o:Ljava/lang/String;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    const-string v0, "wx28e2610e92fbe111"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    const-string v1, "wx28e2610e92fbe111"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->openWXApp()Z

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Landroid/widget/Button;Z)V

    :goto_0
    const-string v0, "com.tencent.mm"

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(Landroid/widget/Button;Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->o:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/A;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/A;-><init>(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V

    invoke-direct {v0, v1}, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;->work()V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/16 v6, 0x1f4

    :try_start_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x1f4

    const/16 v4, 0x1f4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    const v0, 0x3d090

    new-array v1, v0, [I

    move v2, v8

    :goto_0
    if-lt v2, v6, :cond_0

    const/16 v0, 0x1f4

    const/16 v2, 0x1f4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/16 v7, 0x1f4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->q:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    :cond_0
    move v0, v8

    :goto_2
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit16 v4, v2, 0x1f4

    add-int/2addr v4, v0

    const/high16 v5, -0x100

    aput v5, v1, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit16 v4, v2, 0x1f4

    add-int/2addr v4, v0

    const/4 v5, -0x1

    aput v5, v1, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->i()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->g()V

    return-void
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readDeviceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/B;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/B;-><init>(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/webapi/WebAPI;->getWeixinQR(Lcn/com/smartdevices/bracelet/model/LoginData;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/C;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/C;-><init>(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/D;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/D;-><init>(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->h()V

    return-void
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 1

    const v0, 0x7f0c0179

    invoke-static {p0, v0}, Lcn/com/smartdevices/bracelet/Utils;->showProgressDialog(Landroid/app/Activity;I)V

    return-void
.end method

.method private i()V
    .locals 0

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->d()V

    return-void
.end method

.method static synthetic l(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)Landroid/media/MediaScannerConnection;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic m(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBleStatusChanged(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V
    .locals 4

    const/16 v3, 0x8

    const-string v0, "BindWeixinActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBleStatusChanged, status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->b()V

    :goto_1
    const-string v0, "BraceletBindWeChat"

    const-string v1, "BindWeChatQrcode"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c01c1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/view/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a()V

    const-string v0, "BraceletBindWeChat"

    const-string v1, "BindWeChatLaunch"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070024
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->setContentView(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c01b1

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->q:Ljava/lang/String;

    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->s:Landroid/view/View;

    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/z;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/z;-><init>(Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    invoke-direct {p0, v3}, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->a(I)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onBleStatusChanged"

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onDestroy()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->p:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/BindWeixinActivity;->n:Landroid/os/Handler;

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onPause()V

    const-string v0, "PageBindWeChat"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/ui/SystemBarTintActivity;->onResume()V

    const-string v0, "PageBindWeChat"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startSession(Landroid/content/Context;)V

    return-void
.end method
