.class public Lcn/com/smartdevices/bracelet/activity/LoginActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final e:Ljava/lang/String; = "LoginActivity"

.field private static final f:I = 0x533c

.field private static final g:Z = false

.field private static final h:I = 0x100

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:I


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/os/Handler;

.field a:Ljava/lang/Long;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

.field private y:Ljava/lang/String;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/user/profile"

    sput-object v0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->l:Ljava/lang/String;

    const-string v0, "/user/phone"

    sput-object v0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->m:Ljava/lang/String;

    const/16 v0, 0x2711

    sput v0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    sget-object v0, Lcn/com/smartdevices/bracelet/webapi/ClientConstant;->CLIENT_ID:Ljava/lang/Long;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a:Ljava/lang/Long;

    const-string v0, "https://hm.xiaomi.com/huami.health.loginview.do"

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/activity/LoginActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->A:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/activity/LoginActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->finish()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    const-class v2, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    const-class v2, Lcn/com/smartdevices/bracelet/ui/SearchSingleBraceletActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon_320:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon_320:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon_320:Ljava/lang/String;

    iput-object v2, v1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    :cond_2
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    const-class v2, Lcn/com/smartdevices/bracelet/ui/person/PersonInfoSetGenderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/model/LoginInfo;->miliaoIcon:Ljava/lang/String;

    iput-object v2, v1, Lcn/com/smartdevices/bracelet/model/PersonInfo;->avatarUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v1, "file:///android_asset/startup.gif"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/activity/b;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/activity/b;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    const-wide/16 v2, 0x12c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->A:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->z:Landroid/view/View;

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->B:Landroid/view/View;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcn/com/smartdevices/bracelet/activity/d;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/activity/d;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 6

    const-string v0, "LoginActivity"

    const-string v1, "getTokenByXiaomiSDK"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->D:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->clearCache()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->o:Ljava/lang/String;

    sget v5, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->n:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V

    const-string v0, "LoginActivity"

    const-string v1, "End of getTokenByXiaomiSDK"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/activity/e;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/activity/e;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/activity/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private g()V
    .locals 2

    const v0, 0x7f0c000c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)Lcn/com/smartdevices/bracelet/model/LoginInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    return-object v0
.end method

.method private h()V
    .locals 1

    const v0, 0x7f0c000a

    invoke-static {p0, v0}, Lcn/com/smartdevices/bracelet/Utils;->showProgressDialog(Landroid/app/Activity;I)V

    return-void
.end method

.method private i()V
    .locals 0

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V
    .locals 2

    const v0, 0x7f0c000c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private j()V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/activity/g;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/activity/g;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/activity/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->l()V

    return-void
.end method

.method private k()V
    .locals 5

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "personSH = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->getPhoneNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Utils;->encodeTel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encode personSH = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "person_sh"

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->y:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcn/com/smartdevices/bracelet/activity/h;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/activity/h;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/Utils;->updateProfile(Lcn/com/smartdevices/bracelet/model/PersonInfo;Ljava/util/HashMap;Lcn/com/smartdevices/bracelet/Utils$OperationCallback;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->l()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    const-class v2, Lcn/com/smartdevices/bracelet/ui/SearchSingleBraceletActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->d:Ljava/lang/String;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const v4, 0x7f0c000c

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    if-ne v3, p1, :cond_0

    const-string v0, "StartUpRegister"

    const-string v1, "Canceled"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget v1, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->n:I

    if-ne v1, p1, :cond_5

    sget v1, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    if-ne v1, p2, :cond_3

    const v1, 0x7f0c000a

    invoke-static {p0, v1}, Lcn/com/smartdevices/bracelet/Utils;->showProgressDialog(Landroid/app/Activity;I)V

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->d:Ljava/lang/String;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->s:Ljava/lang/String;

    const-string v1, "scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->t:Ljava/lang/String;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->q:Ljava/lang/String;

    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->r:Ljava/lang/String;

    const-string v1, "mac_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->b:Ljava/lang/String;

    const-string v1, "mac_algorithm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    if-nez v0, :cond_2

    new-instance v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/model/LoginInfo;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->macToken:Ljava/lang/String;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->x:Lcn/com/smartdevices/bracelet/model/LoginInfo;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->s:Ljava/lang/String;

    iput-object v1, v0, Lcn/com/smartdevices/bracelet/model/LoginInfo;->expiresIn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "accessToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",macKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",macAlogorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginActivity"

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/activity/e;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/activity/e;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/activity/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "StartUpLogin"

    const-string v1, "Successed"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    if-ne v1, p2, :cond_4

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "error_description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "StartUpLogin"

    const-string v1, "Failed"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result cancel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    const-string v0, "StartUpLogin"

    const-string v1, "Canceled"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-ne v3, p1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    const-string v1, "miliao_has_binded"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a(Z)V

    const-string v0, "StartUpRegister"

    const-string v1, "Successed"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->hideProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "StartUpRegister"

    const-string v1, "Failed"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v1, 0x7f0c0026

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "LoginActivity"

    const-string v1, "getTokenByXiaomiSDK"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->D:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->clearCache()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->o:Ljava/lang/String;

    sget v5, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->n:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V

    const-string v0, "LoginActivity"

    const-string v1, "End of getTokenByXiaomiSDK"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StartUp"

    const-string v1, "StartLogin"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "web_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcn/com/smartdevices/bracelet/activity/WebActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "StartUp"

    const-string v1, "StartRegister"

    invoke-static {p0, v0, v1}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070039
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->setContentView(I)V

    iput-object p0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->k:Lcn/com/smartdevices/bracelet/activity/LoginActivity;

    new-instance v0, Lcn/com/smartdevices/bracelet/activity/a;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/activity/a;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->D:Landroid/os/Handler;

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->z:Landroid/view/View;

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->B:Landroid/view/View;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcn/com/smartdevices/bracelet/activity/d;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/activity/d;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v1, "file:///android_asset/startup.gif"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/activity/b;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/activity/b;-><init>(Lcn/com/smartdevices/bracelet/activity/LoginActivity;)V

    const-wide/16 v2, 0x12c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "LoginActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "LoginActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/activity/LoginActivity;->D:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "PageStartUp"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PageStartUp"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startSession(Landroid/content/Context;)V

    return-void
.end method
