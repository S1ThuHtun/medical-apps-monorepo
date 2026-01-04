// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get selectLanguage => '选择语言';

  @override
  String get getStarted => '开始使用';

  @override
  String get chooseLanguage => '选择语言';

  @override
  String get selectedLanguage => '已选择中文';

  @override
  String get login => '登录';

  @override
  String loginAs(String email) {
    return '已登录为$email';
  }

  @override
  String signedUpAs(String email) {
    return '已注册为$email';
  }

  @override
  String get enterEmail => '请输入您的电子邮件';

  @override
  String get invalidEmail => '无效的电子邮件格式';

  @override
  String get enteredPasswordMessage => '输入密码';

  @override
  String get enteredPasswordErrorMessage => '密码必须至少6个字符';

  @override
  String get confirmPasswordMessage => '确认密码';

  @override
  String get confirmPasswordErrorMessage => '密码和确认密码不匹配';

  @override
  String get logOut => '登出';

  @override
  String get signUp => '注册';

  @override
  String get newSignUp => '还没有账户？注册';

  @override
  String get oldLogin => '已有账户！登录';

  @override
  String get emailAddress => '电子邮件地址';

  @override
  String get password => '密码';

  @override
  String get confirmPassword => '确认密码';

  @override
  String get settings => '设置';

  @override
  String get medicalServices => '医疗服务';

  @override
  String get currentLocation => '当前位置';

  @override
  String get language => '语言';

  @override
  String get logout => '登出';

  @override
  String foundNearby(int count) {
    return '附近找到$count个';
  }

  @override
  String get within5km => '5公里内';

  @override
  String kmAway(String distance) {
    return '$distance公里远';
  }

  @override
  String get open => '营业中';

  @override
  String get closed => '已关闭';

  @override
  String get viewOnMap => '在地图上查看';

  @override
  String get call => '拨打电话';

  @override
  String get directions => '路线';

  @override
  String get address => '地址';

  @override
  String get openNow => '现在营业';

  @override
  String away(Object distance) {
    return '$distance公里远';
  }

  @override
  String get getDirections => '获取路线';

  @override
  String get updateRoute => '更新路线';

  @override
  String get visitWebsite => '访问网站';

  @override
  String get wheelchairAccessible => '轮椅可达';

  @override
  String get limitedWheelchairAccess => '轮椅有限通行';

  @override
  String get openInGoogleMaps => '在谷歌地图中打开';

  @override
  String get noPhoneAvailable => '此服务没有电话号码';

  @override
  String get invalidPhoneFormat => '无效的电话号码格式';

  @override
  String get cannotOpenPhoneDialer => '无法打开拨号器';

  @override
  String get errorOpeningMaps => '无法打开谷歌地图';

  @override
  String get categoryGeneralServices => '综合服务';

  @override
  String get categorySpecializedServices => '专科服务';

  @override
  String get categorySurgicalServices => '外科服务';

  @override
  String get categoryRehabilitationServices => '康复服务';

  @override
  String get categoryDiagnosticServices => '诊断服务';

  @override
  String get categoryEmergencyServices => '急诊服务';

  @override
  String get categoryMaternityWomensHealth => '妇产科与女性健康';

  @override
  String get categoryPharmacyServices => '药房服务';

  @override
  String get categoryMentalHealthServices => '心理健康服务';

  @override
  String get categoryAlternativeMedicine => '替代医学';

  @override
  String get serviceGeneralMedicine => '内科';

  @override
  String get serviceEmergencyCare => '急诊医疗';

  @override
  String get serviceFamilyMedicine => '家庭医学';

  @override
  String get servicePreventativeMedicine => '预防医学';

  @override
  String get serviceHealthCheckups => '健康检查';

  @override
  String get serviceUrgentCare => '紧急医疗';

  @override
  String get serviceCardiology => '心脏科';

  @override
  String get serviceDermatology => '皮肤科';

  @override
  String get serviceEndocrinology => '内分泌科';

  @override
  String get serviceGastroenterology => '消化内科';

  @override
  String get serviceHematology => '血液科';

  @override
  String get serviceNephrology => '肾脏科';

  @override
  String get serviceNeurology => '神经科';

  @override
  String get serviceObstetricsGynecology => '妇产科';

  @override
  String get serviceOphthalmology => '眼科';

  @override
  String get serviceOrthopedics => '骨科';

  @override
  String get servicePediatrics => '儿科';

  @override
  String get servicePsychiatry => '精神科';

  @override
  String get serviceRheumatology => '风湿科';

  @override
  String get servicePulmonology => '呼吸科';

  @override
  String get serviceUrology => '泌尿科';

  @override
  String get serviceGeneralSurgery => '普通外科';

  @override
  String get serviceCardiacSurgery => '心脏外科';

  @override
  String get serviceOrthopedicSurgery => '骨科手术';

  @override
  String get serviceNeurosurgery => '神经外科';

  @override
  String get servicePlasticSurgery => '整形外科';

  @override
  String get servicePediatricSurgery => '小儿外科';

  @override
  String get serviceObstetricSurgery => '产科手术';

  @override
  String get serviceTraumaSurgery => '创伤外科';

  @override
  String get servicePhysicalTherapy => '物理治疗';

  @override
  String get serviceOccupationalTherapy => '职业治疗';

  @override
  String get serviceSpeechTherapy => '语言治疗';

  @override
  String get serviceCardiacRehabilitation => '心脏康复';

  @override
  String get serviceNeurologicalRehabilitation => '神经康复';

  @override
  String get serviceLaboratoryTests => '实验室检测';

  @override
  String get serviceRadiology => '放射科';

  @override
  String get servicePathology => '病理学';

  @override
  String get serviceEndoscopy => '内窥镜检查';

  @override
  String get serviceECG => '心电图';

  @override
  String get serviceEEG => '脑电图';

  @override
  String get serviceEmergencyRoom => '急诊室（ER）';

  @override
  String get serviceTraumaCare => '创伤护理';

  @override
  String get serviceICU => '重症监护室（ICU）';

  @override
  String get serviceBurnUnit => '烧伤病房';

  @override
  String get serviceObstetrics => '产科';

  @override
  String get serviceGynecology => '妇科';

  @override
  String get serviceFamilyPlanning => '计划生育';

  @override
  String get serviceBreastHealth => '乳房健康';

  @override
  String get servicePrescriptionMedications => '处方药';

  @override
  String get serviceOTCMedications => '非处方药';

  @override
  String get serviceVaccinations => '疫苗接种';

  @override
  String get servicePharmaceuticalConsultations => '药物咨询';

  @override
  String get serviceCompoundingPharmacy => '配药房';

  @override
  String get serviceHerbalMedicine => '中药';

  @override
  String get serviceCounseling => '咨询';

  @override
  String get servicePsychotherapy => '心理治疗';

  @override
  String get serviceAddictionTreatment => '成瘾治疗';

  @override
  String get serviceSupportGroups => '支持小组';

  @override
  String get serviceBehavioralTherapy => '行为疗法';

  @override
  String get serviceAcupuncture => '针灸';

  @override
  String get serviceChiropracticCare => '脊椎按摩疗法';

  @override
  String get serviceMassageTherapy => '按摩疗法';

  @override
  String get serviceNaturopathy => '自然疗法';

  @override
  String get serviceHomeopathy => '顺势疗法';

  @override
  String get selectPrefecture => '选择都道府县';

  @override
  String get selectCity => '选择城市';

  @override
  String get selectWard => '选择区';

  @override
  String get useCurrentLocation => '使用当前位置';

  @override
  String get prefectures => '都道府县';

  @override
  String get citiesDistricts => '城市/地区';

  @override
  String get wardsAreas => '区/地区';

  @override
  String allOf(String location) {
    return '全部$location';
  }

  @override
  String get searchEntirePrefecture => '搜索整个都道府县';

  @override
  String get searchEntireCity => '搜索整个城市';

  @override
  String get locationError => '无法获取位置信息。请启用位置服务并授予权限。';

  @override
  String get selectLocationError => '请选择位置或启用位置服务。';

  @override
  String get noServicesFound => '未找到服务';

  @override
  String get tryDifferentLocation => '请尝试在不同位置或服务类型中搜索。';

  @override
  String get retry => '重试';

  @override
  String get gettingLocation => '正在获取您的位置...';

  @override
  String get locationNotAvailable => '位置不可用';

  @override
  String get pullDownToRefresh => '下拉刷新或选择位置以查找附近的医疗服务';

  @override
  String get prefectureTokyo => '东京都';

  @override
  String get prefectureOsaka => '大阪府';

  @override
  String get prefectureKyoto => '京都府';

  @override
  String get prefectureHokkaido => '北海道';

  @override
  String get prefectureFukuoka => '福冈县';

  @override
  String get prefectureYokohama => '横滨市';

  @override
  String get prefectureNagoya => '名古屋市';

  @override
  String get prefectureKobe => '神户市';

  @override
  String get prefectureHiroshima => '广岛县';

  @override
  String get prefectureSendai => '仙台市';

  @override
  String get prefectureChiba => '千叶县';

  @override
  String get prefectureKanagawa => '神奈川县';

  @override
  String get prefectureSaitama => '埼玉县';

  @override
  String get prefectureShizuoka => '静冈县';

  @override
  String get prefectureAichi => '爱知县';

  @override
  String get prefectureHyogo => '兵库县';

  @override
  String get prefectureNiigata => '新潟县';

  @override
  String get prefectureMiyagi => '宫城县';

  @override
  String get prefectureNagano => '长野县';

  @override
  String get prefectureGifu => '岐阜县';

  @override
  String get prefectureGunma => '群马县';

  @override
  String get prefectureTochigi => '栃木县';

  @override
  String get prefectureIbaraki => '茨城县';

  @override
  String get prefectureOkayama => '冈山县';

  @override
  String get prefectureKumamoto => '熊本县';

  @override
  String get prefectureKagoshima => '鹿儿岛县';

  @override
  String get prefectureOkinawa => '冲绳县';

  @override
  String get prefectureNara => '奈良县';

  @override
  String get prefectureShiga => '滋贺县';

  @override
  String get prefectureMie => '三重县';

  @override
  String get prefectureWakayama => '和歌山县';

  @override
  String get prefectureYamaguchi => '山口县';

  @override
  String get prefectureEhime => '爱媛县';

  @override
  String get prefectureKagawa => '香川县';

  @override
  String get prefectureTokushima => '德岛县';

  @override
  String get prefectureKochi => '高知县';

  @override
  String get prefectureFukushima => '福岛县';

  @override
  String get prefectureYamagata => '山形县';

  @override
  String get prefectureIwate => '岩手县';

  @override
  String get prefectureAkita => '秋田县';

  @override
  String get prefectureAomori => '青森县';

  @override
  String get prefectureIshikawa => '石川县';

  @override
  String get prefectureFukui => '福井县';

  @override
  String get prefectureToyama => '富山县';

  @override
  String get prefectureYamanashi => '山梨县';

  @override
  String get prefectureSaga => '佐贺县';

  @override
  String get prefectureNagasaki => '长崎县';

  @override
  String get prefectureOita => '大分县';

  @override
  String get prefectureMiyazaki => '宫崎县';

  @override
  String get cityShibuya => '涩谷区';

  @override
  String get cityShinjuku => '新宿区';

  @override
  String get cityChiyoda => '千代田区';

  @override
  String get cityMinato => '港区';

  @override
  String get citySetagaya => '世田谷区';

  @override
  String get cityKita => '北区';

  @override
  String get cityChuo => '中央区';

  @override
  String get cityTennoji => '天王寺区';

  @override
  String get cityShimogyo => '下京区';

  @override
  String get cityHigashiyama => '东山区';

  @override
  String get citySakyo => '左京区';

  @override
  String get citySapporo => '札幌市';

  @override
  String get cityHakodate => '函馆市';

  @override
  String get cityAsahikawa => '旭川市';

  @override
  String get cityHakata => '博多区';

  @override
  String get cityTenjin => '天神';

  @override
  String get cityNaka => '中区';

  @override
  String get wardShibuya => '涩谷区';

  @override
  String get wardShinjuku => '新宿区';

  @override
  String get wardChiyoda => '千代田区';

  @override
  String get wardTennoji => '天王寺区';

  @override
  String get areaHarajuku => '原宿';

  @override
  String get areaEbisu => '惠比寿';

  @override
  String get areaKabukicho => '歌舞伎町';

  @override
  String get areaYotsuya => '四谷';

  @override
  String get areaMarunouchi => '丸之内';

  @override
  String get areaAkihabara => '秋叶原';

  @override
  String get areaKanda => '神田';

  @override
  String get areaRoppongi => '六本木';

  @override
  String get areaAzabu => '麻布';

  @override
  String get areaOdaiba => '台场';

  @override
  String get areaShimokitazawa => '下北泽';

  @override
  String get areaSangenjaya => '三轩茶屋';

  @override
  String get areaUmeda => '梅田';

  @override
  String get areaNakanoshima => '中之岛';

  @override
  String get areaNamba => '难波';

  @override
  String get areaShinsaibashi => '心斋桥';

  @override
  String get areaDotonbori => '道顿堀';

  @override
  String get areaAbeno => '阿倍野';

  @override
  String get areaKyotoStation => '京都站周边';

  @override
  String get areaGion => '祇园';

  @override
  String get areaKiyomizu => '清水';

  @override
  String get areaGinkakuji => '银阁寺周边';

  @override
  String get areaChuo => '中央';

  @override
  String get areaKita => '北';

  @override
  String get areaSusukino => '薄野';

  @override
  String get areaHakataStation => '博多站周边';

  @override
  String get areaCanal => '运河城';

  @override
  String get areaTenjinCentral => '天神中央';

  @override
  String get areaChinatown => '唐人街';

  @override
  String get areaMinatoMirai => '港未来';

  @override
  String get chatbotWelcome => '你好 我是你的医疗助手。你可以对我说话或输入问题。今天我能帮你什么';

  @override
  String get medicalAssistant => '医疗助手';

  @override
  String get detailed => '详细';

  @override
  String get quick => '快速';

  @override
  String get responseType => '回复类型';

  @override
  String get quickMode => '快速模式';

  @override
  String get quickModeDesc => '快速简洁的回答';

  @override
  String get detailedMode => '详细模式';

  @override
  String get detailedModeDesc => '全面的医疗信息';

  @override
  String get quickModeActivated => '⚡ 快速模式已激活';

  @override
  String get detailedModeActivated => '📋 详细模式已激活';

  @override
  String get chatCleared => '✅ 聊天记录已清除';

  @override
  String get thinking => '正在思考...';

  @override
  String get overloaded => '服务目前过载。请稍后再试。';

  @override
  String get errorOccurred => '发生错误。请再试一次。';

  @override
  String get networkError => '网络错误。请检查您的连接。';

  @override
  String get speechNotAvailable => '语音识别不可用';

  @override
  String get micPermissionRequired => '语音输入需要麦克风权限';

  @override
  String get voiceInputError => '语音输入发生错误';

  @override
  String get processing => '明白了。正在处理。';

  @override
  String get listening => '正在听...';

  @override
  String get typeOrSpeak => '输入或说出您的症状';

  @override
  String get you => '你';

  @override
  String get assistant => '助手';

  @override
  String get findNearbyFacilities => '🏥 查找附近设施';

  @override
  String get noDepartmentDetected => '尚未推荐医疗部门。请先描述您的症状。';

  @override
  String get askAssistant => '询问AI助手';

  @override
  String searchingForService(String service) {
    return '正在搜索$service...';
  }

  @override
  String get medicineReminderTitle => '用药提醒';

  @override
  String get reminderEmptyTitle => '暂无提醒';

  @override
  String get reminderEmptySubtitle => '点击 + 添加提醒';

  @override
  String get reminderAddedMessage => '已添加提醒';

  @override
  String get reminderUpdatedMessage => '提醒已更新';

  @override
  String reminderNotificationBody(int index) {
    return '该服药了 - 第$index次';
  }

  @override
  String get reminderNotificationChannelName => '用药提醒';

  @override
  String get reminderNotificationChannelDescription => '提醒您按时服药';

  @override
  String get reminderDoseMorning => '早上';

  @override
  String get reminderDoseNoon => '中午';

  @override
  String get reminderDoseEvening => '晚上';

  @override
  String get reminderDoseNight => '夜间';

  @override
  String get remindersTabLabel => '提醒';

  @override
  String reminderPhotoPickError(String error) {
    return '获取照片失败：$error';
  }

  @override
  String get reminderAddPhotoTitle => '添加照片';

  @override
  String get reminderPhotoFromCamera => '拍照';

  @override
  String get reminderPhotoFromGallery => '从相册选择';

  @override
  String get reminderPhotoRemove => '删除照片';

  @override
  String get reminderRepeatSettingsTitle => '重复设置';

  @override
  String get reminderRepeatNever => '不重复';

  @override
  String get reminderRepeatEveryday => '每天';

  @override
  String get reminderRepeatWeekdays => '仅工作日';

  @override
  String get reminderRepeatWeekends => '仅周末';

  @override
  String get reminderRepeatCustomOption => '自定义...';

  @override
  String get reminderRepeatDone => '完成';

  @override
  String get reminderSelectDays => '选择星期';

  @override
  String get reminderDayMonShort => '周一';

  @override
  String get reminderDayTueShort => '周二';

  @override
  String get reminderDayWedShort => '周三';

  @override
  String get reminderDayThuShort => '周四';

  @override
  String get reminderDayFriShort => '周五';

  @override
  String get reminderDaySatShort => '周六';

  @override
  String get reminderDaySunShort => '周日';

  @override
  String get reminderDaySeparator => '、';

  @override
  String reminderEveryWeekDays(String days) {
    return '每周 $days';
  }

  @override
  String get reminderAddTitle => '添加提醒';

  @override
  String get reminderEditTitle => '编辑提醒';

  @override
  String get reminderMedicineNameLabel => '药品名称';

  @override
  String get reminderMedicineNameHint => '例如：维生素C，阿司匹林';

  @override
  String get reminderPhotoLabel => '药品照片';

  @override
  String get reminderPhotoOptional => '（可选）';

  @override
  String get reminderAddPhotoButton => '添加照片';

  @override
  String get reminderTimeLabel => '时间';

  @override
  String get reminderRepeatLabel => '重复';

  @override
  String get reminderMealTimingLabel => '服药时机';

  @override
  String get reminderMealTimingNone => '不指定';

  @override
  String get reminderMealTimingBeforeTitle => '饭前服药';

  @override
  String get reminderMealTimingBeforeSubtitle => '餐前30分钟服用';

  @override
  String get reminderMealTimingAfterTitle => '饭后服药';

  @override
  String get reminderMealTimingAfterSubtitle => '闹钟时确认进餐';

  @override
  String get reminderCancel => '取消';

  @override
  String get reminderUpdate => '更新';

  @override
  String get reminderAdd => '添加';

  @override
  String get reminderTakenSnackBar => '已服用';

  @override
  String get reminderMealConfirmTitle => '用餐确认';

  @override
  String get reminderMealConfirmMessage => '请在饭后服用此药。';

  @override
  String get reminderMealConfirmQuestion => '您已经吃过饭了吗？';

  @override
  String get reminderMealConfirmRecommendation => '建议在饭后30分钟内服用。';

  @override
  String get reminderMealConfirmNotYet => '还没有';

  @override
  String get reminderMealConfirmDone => '已吃';

  @override
  String get reminderLaterTitle => '提醒';

  @override
  String get reminderLaterMessage => '请在饭后再服药。\\n提醒将保持有效。';

  @override
  String get reminderLaterOk => '知道了';

  @override
  String get reminderTimeToTakeMessage => '该服药了';

  @override
  String get reminderTakenButton => '我已服用';

  @override
  String get reminderCloseButton => '关闭';

  @override
  String get homeTabLabel => '首页';

  @override
  String get historyTabLabel => '历史';

  @override
  String placeholderComingSoon(String title) {
    return '$title - ????';
  }

  @override
  String get placeholderUnderDevelopment => '????????';
}
