.class public final Lcom/xiaomi/hm/bleservice/BLEService;
.super Landroid/app/Service;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String;

.field public static final INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTION_FAILED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_CONNECTION_RESET:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_DISCONNECTED:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_FOUND:Ljava/lang/String;

.field public static final INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

.field public static final INTENT_EXTRA_DEVICE:Ljava/lang/String;

.field public static final INTENT_EXTRA_PARAM:Ljava/lang/String;

.field public static final INTENT_EXTRA_PARAM_EXT:Ljava/lang/String;

.field private static final INTENT_PREFIX:Ljava/lang/String;

.field public static final MAC_ADDRESS_FILTER:Ljava/lang/String; = "88:0F:10"

.field public static final MESSAGE_CHECK_SYNC_DATA:I = 0x11

.field public static final MESSAGE_DEVICE_BT_OFF:I = 0xa

.field public static final MESSAGE_DEVICE_BT_ON:I = 0x8

.field public static final MESSAGE_DEVICE_BT_TURNING_OFF:I = 0xb

.field public static final MESSAGE_DEVICE_BT_TURNING_ON:I = 0x9

.field public static final MESSAGE_DEVICE_CONNECTION_RESET:I = 0x3

.field public static final MESSAGE_SCREEN_OFF:I = 0xf

.field public static final MESSAGE_SET_MAX_LATENCY:I = 0xe

.field public static final MESSAGE_START_SYNC_DATA:I = 0xc

.field public static final MESSAGE_SYNC_DATA_PROGRESS:I = 0xd

.field public static final MESSAGE_SYNC_DATA_TO_SERVER:I = 0x12

.field public static final MESSAGE_USER_PRESENT:I = 0x10

.field private static final NOTIFY_VIBRATE_ID:I = 0x27

.field private static final NO_DATA_SYNC_COUNT:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SCAN_TIMEOUT:I = 0x7530

.field private static final SYNC_BLOCK_COUNT:I = 0xc

.field private static final SYNC_SERVER_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.9.6.20140519"


# instance fields
.field private isSyncDataRunning:Z

.field private isSyncDataStoped:Z

.field private final mBlueToothSyncObj:Ljava/lang/Object;

.field private mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

.field private volatile mIsDisableBluetooth:Z

.field private mLastBatteryLevel:I

.field private mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

.field private mNoDataSyncCount:I

.field private final mNotificationId:I

.field private mSyncBlockCount:I

.field private mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

.field private final mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

.field private final mSyncServerCount:I

.field private final m_Binder:Landroid/os/Binder;

.field private final m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final m_Handler:Landroid/os/Handler;

.field private final m_HandlerThread:Landroid/os/HandlerThread;

.field private m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private m_StopScanRunnable:Ljava/lang/Runnable;

.field private final miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

.field private miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.9.6.20140519"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    const-class v0, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->PACKAGE_NAME:Ljava/lang/String;

    const-class v0, Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->HANDLER_THREAD_NAME:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_FOUND:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_DISCONNECTED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTION_FAILED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_CONNECTION_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_CONNECTION_RESET:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_SYNC_DATA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DYNAMIC_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_DEVICE_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_ACTION_BATTERY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_EXTRA_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_DEVICE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_EXTRA_PARAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".INTENT_EXTRA_PARAM_EXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/hm/bleservice/BLEServiceBinder;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/BLEServiceBinder;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Binder:Landroid/os/Binder;

    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNotificationId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastBatteryLevel:I

    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    iput-boolean v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    iput-boolean v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataStoped:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    iput v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncServerCount:I

    iput-boolean v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/hm/bleservice/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/a;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    new-instance v0, Lcom/xiaomi/hm/bleservice/n;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/hm/bleservice/n;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;I)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->HANDLER_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/xiaomi/hm/bleservice/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/hm/bleservice/e;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/hm/bleservice/f;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/hm/bleservice/f;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceInitializationSuccess()V

    return-void
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/xiaomi/hm/bleservice/BLEService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->stopScan(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/xiaomi/hm/bleservice/BLEService;Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->onTogglePairResult(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$14(Lcom/xiaomi/hm/bleservice/BLEService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    return-void
.end method

.method static synthetic access$15(Lcom/xiaomi/hm/bleservice/BLEService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataStoped:Z

    return-void
.end method

.method static synthetic access$16(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    return-void
.end method

.method static synthetic access$17(Lcom/xiaomi/hm/bleservice/BLEService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V

    return-void
.end method

.method static synthetic access$18(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V

    return-void
.end method

.method static synthetic access$19(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToQQHealth()V

    return-void
.end method

.method static synthetic access$2(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceStatusChanged(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/xiaomi/hm/bleservice/BLEService;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    return v0
.end method

.method static synthetic access$21(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    return-void
.end method

.method static synthetic access$22(Lcom/xiaomi/hm/bleservice/BLEService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyDynamicStatusChanged()V

    return-void
.end method

.method static synthetic access$23(Lcom/xiaomi/hm/bleservice/BLEService;)Lcom/xiaomi/hm/bleservice/n;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    return-object v0
.end method

.method static synthetic access$24(Lcom/xiaomi/hm/bleservice/BLEService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->handleSyncDataToServerFailed(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/xiaomi/hm/bleservice/BLEService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onDeviceBatteryStatusChanged(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5(Lcom/xiaomi/hm/bleservice/BLEService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/xiaomi/hm/bleservice/BLEService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7(Lcom/xiaomi/hm/bleservice/BLEService;)Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    return-object v0
.end method

.method static synthetic access$8(Lcom/xiaomi/hm/bleservice/BLEService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$9(Lcom/xiaomi/hm/bleservice/BLEService;Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    return-void
.end method

.method private cancelBatteryLowNotification()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkFwVersion()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Mili.fw"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/Utils;->getFwVersion([B)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getCachedDeviceInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkFwVersion exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new fw version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fw version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->firmwareVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pcb version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->hardwareVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->firmwareVersion:I

    if-gt v1, v3, :cond_1

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v2, "bracelet firmware is the lastest,do nothing!"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->hardwareVersion:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bracelet PCBVersion is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->hardwareVersion:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not PCB 1.4,do nothing!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized disconnectDevice()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in disconnectDevice"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->stopScan(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    :cond_0
    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dumpState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[CONNECTED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[CONNECTING]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[DISCONNECTED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[DISCONNECTING]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "conneted device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->ASSERT_RUN_ON_THREAD(Ljava/lang/Thread;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->WARN(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->startSyncData()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkSyncData()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->onSyncDataProgress()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncToServerNew()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disconnectDevice()V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->enableBluetooth()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->initBluetoothState()V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->connectDevice()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private handleSyncDataToServerFailed(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hm/bleservice/n;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    invoke-virtual {v0, p1}, Lcom/xiaomi/hm/bleservice/n;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Try sync data to server type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    invoke-virtual {v2, p1}, Lcom/xiaomi/hm/bleservice/n;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/hm/bleservice/n;->a(II)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop try sync data to server type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncRetryTimes:Lcom/xiaomi/hm/bleservice/n;

    invoke-virtual {v2, p1}, Lcom/xiaomi/hm/bleservice/n;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initBluetoothState()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyBatteryStatusChanged(II)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyBatteryStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_BATTERY_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/hm/bleservice/HwBatteryStatus;-><init>(II)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyBraceletVibrated(I)V
    .locals 5

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyBraceletVibrated:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0c01f2

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x7f0c01f1

    invoke-virtual {p0, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c01f3

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f0c01f4

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    const v0, 0x7f0c01f5

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0c01f6

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0c01f7

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_6
    const v0, 0x7f0c01f8

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_7
    const v0, 0x7f0c01f9

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_8
    const v0, 0x7f0c01fa

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_9
    const v0, 0x7f0c01fb

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private notifyConnStatusChanged(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0, p1}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_CONN_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyDeviceStatusChanged(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyDeviceStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyDynamicStatusChanged()V
    .locals 2

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "notifyDynamicStatusChanged"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DYNAMIC_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifySyncDataStatusChanged(IIZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifySyncDataStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>(IIZ)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_ACTION_SYNC_DATA_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->INTENT_EXTRA_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onBatteryLowNotification(I)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryLowNotification:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastBatteryLevel:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastBatteryLevel:I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_BATTERY_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :array_0
    .array-data 8
        0x64
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private onDeviceBatteryStatusChanged(II)V
    .locals 3

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceBatteryStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceBatteryStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->onBatteryLowNotification(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyBatteryStatusChanged(II)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->cancelBatteryLowNotification()V

    goto :goto_0
.end method

.method private onDeviceInitializationSuccess()V
    .locals 3

    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/hm/bleservice/m;

    invoke-direct {v2, p0}, Lcom/xiaomi/hm/bleservice/m;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, v1, v2}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;-><init>(Lcn/com/smartdevices/bracelet/model/PersonInfo;Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;->work()V

    return-void
.end method

.method private onDeviceStatusChanged(I)V
    .locals 4

    const/16 v3, 0x27

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyDeviceStatusChanged(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleSetDesiredLatency;->waitingNotify(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->waitingNotifyFwUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->waitingNotifyFwUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;->waitingNotify(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;->waitingNotify(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->waitingNotify(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->waitingNotify(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;->waitingNotifyReset(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleTogglePairTask;->waitingNotifyReset(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_HandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->ASSERT_RUN_ON_THREAD(Ljava/lang/Thread;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#Broadcast# Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.hm.health.set_max_latency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "#Broadcast# SET_MAX_LATENCY "

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    const/16 v0, 0x1e0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "#Broadcast# SCREEN_OFF "

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->cancelSetMaxLatency()V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->alarmSetMaxLatency()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "#Broadcast# USER_PRESENT "

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->WARN(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "#Broadcast# Bluetooth ON."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "#Broadcast# Bluetooth OFF."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "#Broadcast# Bluetooth turning ON."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "#Broadcast# Bluetooth turning OFF."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->INFO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#Broadcast# state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", prev state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#Broadcast# device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#Broadcast# device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#Broadcast# device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#Broadcast# bond state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", prev bond state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#Broadcast# device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", btClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#Broadcast# device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onSyncDataProgress()V
    .locals 5

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getActivitySyncingProgress()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;

    move-result-object v1

    iget v0, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    iget v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    if-gtz v2, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "sync data block for 12s,quit now!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->stopGetActivities()V

    :goto_0
    return-void

    :cond_0
    iget v0, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    if-nez v0, :cond_3

    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    const/16 v0, 0x64

    :cond_1
    :goto_1
    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataStoped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0xd

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/hm/bleservice/BLEService;->notifySyncDataStatusChanged(IIZ)V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncBlockCount:I

    iget v0, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->progress:I

    mul-int/lit8 v0, v0, 0x64

    iget v2, v1, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    div-int/2addr v0, v2

    goto :goto_1
.end method

.method private onTogglePairResult(Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->cancelSetMaxLatency()V

    invoke-virtual {p0, p0}, Lcom/xiaomi/hm/bleservice/BLEService;->isApplicationBroughtToBackground(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnterInBackground:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnterInBackground:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->alarmSetMaxLatency()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->setLatency(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkSyncData()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onTogglePairResult return null!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopScan(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iput-object v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    :cond_2
    return-void
.end method

.method private syncDataNeededToSyncToSever(II)V
    .locals 9

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "No connected network!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcn/com/smartdevices/bracelet/DataManager;->getNeedSyncDatas(II)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readLoginData()Lcn/com/smartdevices/bracelet/model/LoginData;

    move-result-object v6

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/hm/bleservice/d;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/hm/bleservice/d;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;ILcn/com/smartdevices/bracelet/DataManager;Ljava/util/ArrayList;I)V

    move-object v1, v6

    move-object v2, v7

    move v3, p1

    move v4, p2

    move-object v5, v8

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcn/com/smartdevices/bracelet/webapi/WebAPI;->syncToServer(Lcn/com/smartdevices/bracelet/model/LoginData;Ljava/lang/String;IILjava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/UploadData;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/UploadData;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method private syncToQQHealth()V
    .locals 0

    return-void
.end method

.method private syncToServerNew()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->syncDataNeededToSyncToSever(II)V

    return-void
.end method


# virtual methods
.method public alarmSetMaxLatency()V
    .locals 7

    const-wide/32 v5, 0x1d4c0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.hm.health.set_max_latency"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public cancelSetMaxLatency()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.hm.health.set_max_latency"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public checkSyncData()V
    .locals 6

    const/16 v5, 0xc

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last sync time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last sync time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->checkFwVersion()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mNoDataSyncCount:I

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public declared-synchronized connectDevice()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "in connectDevice"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "miliProfile != null, miliProfile.getState() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v3}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getState()Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->dumpState(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "miliProfile has device:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    :cond_2
    iget-object v0, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getConnectedDeviceByAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->doConnect(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->doConnect(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7530

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hm/bleservice/BLEService;->startScan(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public disableBluetooth()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doConnect(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    new-instance v0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->ASSERT_NOT_NULL(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0, p2}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->connect()V

    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    return-object v0
.end method

.method public getLastConnStatus()Lcom/xiaomi/hm/bleservice/HwConnStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mLastConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    return-object v0
.end method

.method public getMiliProfile()Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    return-object v0
.end method

.method public getSyncDataStatus()Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    return-object v0
.end method

.method public isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "topActivity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "topActivity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isBluetoothRestarting()Z
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mBlueToothSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mIsDisableBluetooth:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/xiaomi/hm/bleservice/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/hm/bleservice/g;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.hm.health.set_max_latency"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->setAutoReconnect(Z)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->miliProfile:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->disconnect()V

    :cond_0
    new-instance v0, Lcom/xiaomi/hm/bleservice/HwConnStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwConnStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mConnStatus:Lcom/xiaomi/hm/bleservice/HwConnStatus;

    new-instance v0, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    invoke-direct {v0}, Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->mSyncDataStatus:Lcom/xiaomi/hm/bleservice/HwSyncDataStatus;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/hm/bleservice/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/hm/bleservice/i;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    const-string v0, ">>> UNEXPECTED <<<"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->WARN(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->connectDevice()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    const-string v0, "Calling onDestroy()..."

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Debug;->WARN(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected setLatency(I)V
    .locals 4

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current latency level set level:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "setLatency"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waklock acquire......"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v1, Lcn/com/smartdevices/bracelet/BleTask/BleSetDesiredLatency;

    new-instance v2, Lcom/xiaomi/hm/bleservice/l;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/hm/bleservice/l;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;ILandroid/os/PowerManager$WakeLock;)V

    invoke-direct {v1, p1, v2}, Lcn/com/smartdevices/bracelet/BleTask/BleSetDesiredLatency;-><init>(ILcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/BleTask/BleSetDesiredLatency;->workX()V

    return-void
.end method

.method public startAnalysisThreadForLuaEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hm/bleservice/c;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/hm/bleservice/c;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startScan(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcn/com/smartdevices/bracelet/Debug;->TRACE()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/bleservice/BLEService;->notifyConnStatusChanged(I)V

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hm/bleservice/j;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/hm/bleservice/j;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_LeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xxx"

    const-string v1, "startLeScan return false, now disable bluetooth!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->fi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hm/bleservice/BLEService;->disableBluetooth()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/hm/bleservice/k;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/hm/bleservice/k;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/BLEService;->m_StopScanRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startSyncData()V
    .locals 4

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startSyncData isSyncDataRunning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hm/bleservice/BLEService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startSyncData isSyncDataRunning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hm/bleservice/BLEService;->isSyncDataRunning:Z

    new-instance v0, Lcn/com/smartdevices/bracelet/BleTask/BleSyncDataTask;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncBraceletTime()J

    move-result-wide v1

    new-instance v3, Lcom/xiaomi/hm/bleservice/b;

    invoke-direct {v3, p0}, Lcom/xiaomi/hm/bleservice/b;-><init>(Lcom/xiaomi/hm/bleservice/BLEService;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/com/smartdevices/bracelet/BleTask/BleSyncDataTask;-><init>(JLcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/BleTask/BleSyncDataTask;->work()V

    goto :goto_0
.end method
