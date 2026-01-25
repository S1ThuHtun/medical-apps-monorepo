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
  String get chooseLanguage => '请选择语言';

  @override
  String get selectedLanguage => '已选择中文';

  @override
  String get login => '登录';

  @override
  String loginAs(Object email) {
    return '已以 $email 登录';
  }

  @override
  String signedUpAs(Object email) {
    return '已以 $email 注册';
  }

  @override
  String get enterEmail => '请输入电子邮件地址';

  @override
  String get invalidEmail => '电子邮件格式无效';

  @override
  String get enteredPasswordMessage => '请输入密码';

  @override
  String get enteredPasswordErrorMessage => '密码至少需要6个字符';

  @override
  String get confirmPasswordMessage => '请确认密码';

  @override
  String get confirmPasswordErrorMessage => '密码不一致';

  @override
  String get logOut => '退出登录';

  @override
  String get logoutConfirmation => '确定要退出登录吗？';

  @override
  String get cancel => '取消';

  @override
  String get signUp => '注册';

  @override
  String get newSignUp => '没有账户？立即注册';

  @override
  String get oldLogin => '已有账户？立即登录';

  @override
  String get emailAddress => '电子邮件地址';

  @override
  String get password => '密码';

  @override
  String get confirmPassword => '确认密码';

  @override
  String get settings => '设置';

  @override
  String get home => '首页';

  @override
  String get reminders => '提醒';

  @override
  String get favorites => '收藏';

  @override
  String get member => '会员';

  @override
  String get noFavorites => '您的收藏设施列表为空';

  @override
  String get tapHeartToSave => '点击任意设施的心形图标将其保存到这里';

  @override
  String get history => '历史记录';

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
    return '$distance 公里';
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
  String get directions => '获取路线';

  @override
  String get address => '地址';

  @override
  String get openNow => '营业中';

  @override
  String away(Object distance) {
    return '$distance 公里外';
  }

  @override
  String get getDirections => '获取路线';

  @override
  String get updateRoute => '更新路线';

  @override
  String get visitWebsite => '访问网站';

  @override
  String get wheelchairAccessible => '轮椅无障碍';

  @override
  String get limitedWheelchairAccess => '有限轮椅无障碍';

  @override
  String get openInGoogleMaps => '在Google地图中打开';

  @override
  String get noPhoneAvailable => '此服务没有电话号码';

  @override
  String get invalidPhoneFormat => '电话号码格式无效';

  @override
  String get cannotOpenPhoneDialer => '无法打开电话拨号器';

  @override
  String get errorOpeningMaps => '无法打开Google地图';

  @override
  String get transitDirectionsTitle => '公共交通路线';

  @override
  String get transitDirectionsMessage =>
      '公共交通路线在Google地图中查看效果最佳。\n\n是否要在Google地图中打开公共交通路线？';

  @override
  String get openMaps => '打开地图';

  @override
  String get categoryGeneralServices => '一般服务';

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
  String get serviceGeneralMedicine => '全科医学';

  @override
  String get serviceEmergencyCare => '急诊护理';

  @override
  String get serviceFamilyMedicine => '家庭医学';

  @override
  String get servicePreventativeMedicine => '预防医学';

  @override
  String get serviceHealthCheckups => '健康检查';

  @override
  String get serviceUrgentCare => '紧急护理';

  @override
  String get serviceCardiology => '心脏病学';

  @override
  String get serviceDermatology => '皮肤科';

  @override
  String get serviceEndocrinology => '内分泌学';

  @override
  String get serviceGastroenterology => '胃肠病学';

  @override
  String get serviceHematology => '血液学';

  @override
  String get serviceNephrology => '肾脏病学';

  @override
  String get serviceNeurology => '神经病学';

  @override
  String get serviceObstetricsGynecology => '妇产科';

  @override
  String get serviceOphthalmology => '眼科';

  @override
  String get serviceOrthopedics => '骨科';

  @override
  String get servicePediatrics => '儿科';

  @override
  String get servicePsychiatry => '精神病学';

  @override
  String get serviceRheumatology => '风湿病学';

  @override
  String get servicePulmonology => '肺病学';

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
  String get serviceLaboratoryTests => '实验室检查';

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
  String get serviceEmergencyRoom => '急诊室';

  @override
  String get serviceTraumaCare => '创伤护理';

  @override
  String get serviceICU => '重症监护室（ICU）';

  @override
  String get serviceBurnUnit => '烧伤科';

  @override
  String get serviceObstetrics => '产科';

  @override
  String get serviceGynecology => '妇科';

  @override
  String get serviceFamilyPlanning => '计划生育';

  @override
  String get serviceBreastHealth => '乳腺健康';

  @override
  String get servicePrescriptionMedications => '处方药';

  @override
  String get serviceOTCMedications => '非处方药';

  @override
  String get serviceVaccinations => '疫苗接种';

  @override
  String get servicePharmaceuticalConsultations => '药物咨询';

  @override
  String get serviceCompoundingPharmacy => '配药药房';

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
  String get selectCity => '选择市区町村';

  @override
  String get selectWard => '选择区';

  @override
  String get useCurrentLocation => '使用当前位置';

  @override
  String get prefectures => '都道府县';

  @override
  String get regionHokkaido => '北海道地区';

  @override
  String get regionTohoku => '东北地区';

  @override
  String get regionKanto => '关东地区';

  @override
  String get regionChubu => '中部地区';

  @override
  String get regionKansai => '关西地区';

  @override
  String get regionChugoku => '中国地区';

  @override
  String get regionShikoku => '四国地区';

  @override
  String get regionKyushuOkinawa => '九州及冲绳地区';

  @override
  String get citiesDistricts => '城市/地区';

  @override
  String get wardsAreas => '地区/区域';

  @override
  String allOf(String location) {
    return '$location的所有地区';
  }

  @override
  String get searchEntirePrefecture => '搜索整个都道府县';

  @override
  String get searchEntireCity => '搜索整个城市';

  @override
  String get locationError => '无法获取位置。请启用位置服务并授予权限。';

  @override
  String get selectLocationError => '请选择一个位置或启用位置服务。';

  @override
  String get noServicesFound => '未找到服务';

  @override
  String get tryDifferentLocation => '尝试在不同的位置或服务类型中搜索。';

  @override
  String get retry => '重试';

  @override
  String get gettingLocation => '正在获取您的位置...';

  @override
  String get locationNotAvailable => '位置信息不可用';

  @override
  String get pullDownToRefresh => '向下拉以刷新或选择位置以查找附近的医疗服务';

  @override
  String get prefectureTokyo => '东京';

  @override
  String get prefectureOsaka => '大阪';

  @override
  String get prefectureKyoto => '京都';

  @override
  String get prefectureHokkaido => '北海道';

  @override
  String get prefectureFukuoka => '福冈';

  @override
  String get prefectureYokohama => '横滨';

  @override
  String get prefectureNagoya => '名古屋';

  @override
  String get prefectureKobe => '神户';

  @override
  String get prefectureHiroshima => '广岛';

  @override
  String get prefectureSendai => '仙台';

  @override
  String get prefectureChiba => '千叶';

  @override
  String get prefectureKanagawa => '神奈川';

  @override
  String get prefectureSaitama => '埼玉';

  @override
  String get prefectureShizuoka => '静冈';

  @override
  String get prefectureAichi => '爱知';

  @override
  String get prefectureHyogo => '兵库';

  @override
  String get prefectureNiigata => '新潟';

  @override
  String get prefectureMiyagi => '宫城';

  @override
  String get prefectureNagano => '长野';

  @override
  String get prefectureGifu => '岐阜';

  @override
  String get prefectureGunma => '群马';

  @override
  String get prefectureTochigi => '栃木';

  @override
  String get prefectureIbaraki => '茨城';

  @override
  String get prefectureOkayama => '冈山';

  @override
  String get prefectureKumamoto => '熊本';

  @override
  String get prefectureKagoshima => '鹿儿岛';

  @override
  String get prefectureOkinawa => '冲绳';

  @override
  String get prefectureNara => '奈良';

  @override
  String get prefectureShiga => '滋贺';

  @override
  String get prefectureMie => '三重';

  @override
  String get prefectureWakayama => '和歌山';

  @override
  String get prefectureYamaguchi => '山口';

  @override
  String get prefectureEhime => '爱媛';

  @override
  String get prefectureKagawa => '香川';

  @override
  String get prefectureTokushima => '德岛';

  @override
  String get prefectureKochi => '高知';

  @override
  String get prefectureFukushima => '福岛';

  @override
  String get prefectureYamagata => '山形';

  @override
  String get prefectureIwate => '岩手';

  @override
  String get prefectureAkita => '秋田';

  @override
  String get prefectureAomori => '青森';

  @override
  String get prefectureIshikawa => '石川';

  @override
  String get prefectureFukui => '福井';

  @override
  String get prefectureToyama => '富山';

  @override
  String get prefectureYamanashi => '山梨';

  @override
  String get prefectureSaga => '佐贺';

  @override
  String get prefectureNagasaki => '长崎';

  @override
  String get prefectureOita => '大分';

  @override
  String get prefectureMiyazaki => '宫崎';

  @override
  String get cityShibuya => '涩谷';

  @override
  String get cityShinjuku => '新宿';

  @override
  String get cityChiyoda => '千代田';

  @override
  String get cityMinato => '港口';

  @override
  String get citySetagaya => '世田谷';

  @override
  String get cityKita => '北';

  @override
  String get cityChuo => '中央';

  @override
  String get cityTennoji => '天王寺';

  @override
  String get cityShimogyo => '下京';

  @override
  String get cityHigashiyama => '东山';

  @override
  String get citySakyo => '左京';

  @override
  String get citySapporo => '札幌';

  @override
  String get cityHakodate => '函馆';

  @override
  String get cityAsahikawa => '旭川';

  @override
  String get cityHakata => '博多';

  @override
  String get cityTenjin => '天神';

  @override
  String get cityNaka => '中';

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
  String get areaSangenjaya => '三茶';

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
  String get areaSusukino => '簇薇野';

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
  String get serviceInternalMedicine => '内科';

  @override
  String get serviceSurgery => '外科';

  @override
  String get serviceENT => '耳鼻喉科';

  @override
  String get serviceDentistry => '牙科';

  @override
  String get serviceOBGYN => '妇产科';

  @override
  String get servicePsychosomaticMedicine => '心身医学';

  @override
  String get servicePharmacy => '药房';

  @override
  String get chatbotWelcome => '你好！我是你的医疗助手。你可以对我说话或输入问题。今天我能帮你什么？';

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
  String get chatCleared => '聊天记录已清除';

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
  String get cannotOpenPhoneDial => '无法打开电话拨号器';

  @override
  String get reminderAddTitle => '添加提醒';

  @override
  String get reminderEditTitle => '编辑提醒';

  @override
  String get reminderMedicineNameLabel => '药品名称';

  @override
  String get reminderMedicineNameHint => '请输入药品名称';

  @override
  String get reminderPhotoLabel => '药品照片';

  @override
  String get reminderPhotoOptional => '（可选）';

  @override
  String get reminderAddPhotoTitle => '添加照片';

  @override
  String get reminderAddPhotoButton => '点击添加照片';

  @override
  String get reminderPhotoFromCamera => '拍照';

  @override
  String get reminderPhotoFromGallery => '从相册选择';

  @override
  String get reminderPhotoRemove => '移除照片';

  @override
  String reminderPhotoPickError(String error) {
    return '选择照片出错: $error';
  }

  @override
  String get reminderTimeLabel => '时间';

  @override
  String get reminderRepeatLabel => '重复';

  @override
  String get reminderRepeatNever => '从不';

  @override
  String get reminderRepeatEveryday => '每天';

  @override
  String get reminderRepeatWeekdays => '仅工作日';

  @override
  String get reminderRepeatWeekends => '仅周末';

  @override
  String get reminderRepeatCustomOption => 'Custom';

  @override
  String get reminderRepeatSettingsTitle => '重复设置';

  @override
  String get reminderRepeatDone => '完成';

  @override
  String get reminderSelectDays => '选择日期';

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
    return '$days';
  }

  @override
  String get reminderMealTimingLabel => '用药时机';

  @override
  String get reminderMealTimingNone => '无特定时间';

  @override
  String get reminderMealTimingBeforeTitle => '饭前';

  @override
  String get reminderMealTimingBeforeSubtitle => '饭前30分钟服用';

  @override
  String get reminderMealTimingAfterTitle => '饭后';

  @override
  String get reminderMealTimingAfterSubtitle => '饭后30分钟服用';

  @override
  String get reminderCancel => '取消';

  @override
  String get reminderAdd => '添加';

  @override
  String get reminderUpdate => '更新';

  @override
  String get reminderDoseMorning => '早上';

  @override
  String get reminderDoseNoon => '中午';

  @override
  String get reminderDoseEvening => '傍晚';

  @override
  String get reminderDoseNight => '晚上';

  @override
  String reminderNotificationBody(int dose) {
    return 'Time to take your medicine (Dose $dose)';
  }

  @override
  String get reminderNotificationChannelName => 'Medicine Reminders';

  @override
  String get reminderNotificationChannelDescription =>
      'Notifications for medicine reminders';

  @override
  String get reminderAddedMessage => '提醒添加成功！';

  @override
  String get reminderUpdatedMessage => '提醒更新成功！';

  @override
  String get reminderDeletedMessage => '提醒已删除';

  @override
  String get reminderTakenSnackBar => '已服药！';

  @override
  String get reminderTimeToTakeMessage => '该服药了';

  @override
  String get reminderTakenButton => '已服用';

  @override
  String get reminderCloseButton => '关闭';

  @override
  String get reminderMealConfirmTitle => '用餐确认';

  @override
  String get reminderMealConfirmMessage => '此药应在饭后服用';

  @override
  String get reminderMealConfirmQuestion => '您吃完饭了吗？';

  @override
  String get reminderMealConfirmRecommendation => '为达到最佳效果，请在饭后30分钟内服药';

  @override
  String get reminderMealConfirmNotYet => '还没有';

  @override
  String get reminderMealConfirmDone => '是的，我吃了';

  @override
  String get reminderLaterTitle => '提醒已设置';

  @override
  String get reminderLaterMessage => '请记得饭后服药！';

  @override
  String get reminderLaterOk => '确定';

  @override
  String get medicineReminderTitle => '用药提醒';

  @override
  String get reminderEmptyTitle => '暂无提醒';

  @override
  String get reminderEmptySubtitle => '点击+添加您的第一个用药提醒';

  @override
  String addedToFavorites(String name) {
    return '$name已添加到收藏';
  }

  @override
  String removedFromFavorites(String name) {
    return '$name已从收藏中移除';
  }

  @override
  String get reminderTestAlarmTooltip => '测试此提醒的闹钟';

  @override
  String get settingsAccount => '账户';

  @override
  String get settingsProfile => '个人资料';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPrivacySecurity => '隐私和安全';

  @override
  String get settingsAbout => '关于';

  @override
  String get settingsHelpSupport => '帮助与支持';

  @override
  String get settingsAboutApp => '关于MediNavi';

  @override
  String get clearChat => '清除聊天';

  @override
  String get clearChatMessage => '开始新对话？当前聊天将被清除。';

  @override
  String get clearChatConfirm => '清除';

  @override
  String get cityAbashiri => '网走';

  @override
  String get cityAbeno => 'Abeno';

  @override
  String get cityAbiko => 'Abiko';

  @override
  String get cityAgeo => 'Ageo';

  @override
  String get cityAichi => 'Aichi';

  @override
  String get cityAioi => 'Aioi';

  @override
  String get cityAira => 'Aira';

  @override
  String get cityAisai => 'Aisai';

  @override
  String get cityAizuwakamatsu => '会津若松';

  @override
  String get cityAkaiwa => 'Akaiwa';

  @override
  String get cityAkashi => 'Akashi';

  @override
  String get cityAki => 'Aki';

  @override
  String get cityAkihabara => '秋叶原';

  @override
  String get cityAkita => 'Akita';

  @override
  String get cityAkitaCity => '秋田市';

  @override
  String get cityAkitakata => 'Akitakata';

  @override
  String get cityAko => 'Ako';

  @override
  String get cityAkune => 'Akune';

  @override
  String get cityAma => 'Ama';

  @override
  String get cityAmagasaki => 'Amagasaki';

  @override
  String get cityAmakusa => 'Amakusa';

  @override
  String get cityAnan => 'Anan';

  @override
  String get cityAnjo => 'Anjo';

  @override
  String get cityAnnaka => 'Annaka';

  @override
  String get cityAomori => 'Aomori';

  @override
  String get cityAomoriCity => '青森市';

  @override
  String get cityArao => 'Arao';

  @override
  String get cityArida => 'Arida';

  @override
  String get cityArashiyama => '岚山';

  @override
  String get cityAsago => 'Asago';

  @override
  String get cityAsahi => '旭区';

  @override
  String get cityAsaka => 'Asaka';

  @override
  String get cityAsakuchi => 'Asakuchi';

  @override
  String get cityAsakura => 'Asakura';

  @override
  String get cityAsakusa => '浅草';

  @override
  String get cityAshikaga => 'Ashikaga';

  @override
  String get cityAshiya => 'Ashiya';

  @override
  String get cityAso => 'Aso';

  @override
  String get cityAtami => 'Atami';

  @override
  String get cityAtsugi => 'Atsugi';

  @override
  String get cityAwa => 'Awa';

  @override
  String get cityAwaji => 'Awaji';

  @override
  String get cityAwara => 'Awara';

  @override
  String get cityAyabe => 'Ayabe';

  @override
  String get cityAyase => '绫濑';

  @override
  String get cityAzabu => 'Azabu';

  @override
  String get cityAzumino => 'Azumino';

  @override
  String get cityAdachi => '足立区';

  @override
  String get cityArakawa => '荒川区';

  @override
  String get cityBunkyo => '文京区';

  @override
  String get cityEdogawa => '江户川区';

  @override
  String get cityItabashi => '板桥区';

  @override
  String get cityKatsushika => '葛饰区';

  @override
  String get cityKoto => '江东区';

  @override
  String get cityMeguro => '目黑区';

  @override
  String get cityNakano => '中野区';

  @override
  String get cityNerima => '练马区';

  @override
  String get cityOta => '太田';

  @override
  String get cityOtaWard => '大田区';

  @override
  String get cityShinagawa => '品川区';

  @override
  String get citySuginami => '杉并区';

  @override
  String get citySumida => '墨田区';

  @override
  String get citySuminoe => '住之江';

  @override
  String get citySumiyoshi => '住吉';

  @override
  String get cityTaito => '台东区';

  @override
  String get cityToshima => '丰岛区';

  @override
  String get cityMiura => '三浦';

  @override
  String get cityHadano => '秦野';

  @override
  String get cityIsehara => '伊势原';

  @override
  String get cityMinamiashigara => '南足柄';

  @override
  String get cityTsurumi => '鹤见区';

  @override
  String get cityKanagawaWard => '神奈川区';

  @override
  String get cityKohoku => '港北区';

  @override
  String get cityTotsuka => '户塚区';

  @override
  String get cityHodogaya => '保土谷区';

  @override
  String get cityIsogo => '矶子区';

  @override
  String get cityKanazawaWard => '金泽区';

  @override
  String get cityKonanWard => '港南区';

  @override
  String get cityMidori => '绿区';

  @override
  String get citySeya => '濑谷区';

  @override
  String get citySakae => '荣区';

  @override
  String get cityIzumiWard => '泉区';

  @override
  String get cityAoba => '青叶区';

  @override
  String get cityTsuzuki => '都筑区';

  @override
  String get cityNishi => '西区';

  @override
  String get cityMinami => '南区';

  @override
  String get cityNakaWard => '中区';

  @override
  String get cityBeppu => 'Beppu';

  @override
  String get cityBibai => '美呗';

  @override
  String get cityBizen => 'Bizen';

  @override
  String get cityBungoono => 'Bungoono';

  @override
  String get cityBungotakada => 'Bungotakada';

  @override
  String get cityBuzen => 'Buzen';

  @override
  String get cityCanalCity => 'Canal City';

  @override
  String get cityChiba => 'Chiba';

  @override
  String get cityChibaCity => 'Chiba City';

  @override
  String get cityChichibu => 'Chichibu';

  @override
  String get cityChigasaki => 'Chigasaki';

  @override
  String get cityChikugo => 'Chikugo';

  @override
  String get cityChikuma => 'Chikuma';

  @override
  String get cityChikushino => 'Chikushino';

  @override
  String get cityChinatown => 'Chinatown';

  @override
  String get cityChino => 'Chino';

  @override
  String get cityChiryu => 'Chiryu';

  @override
  String get cityChita => 'Chita';

  @override
  String get cityChitose => '千岁';

  @override
  String get cityDaisen => '大仙';

  @override
  String get cityDaito => 'Daito';

  @override
  String get cityDate => '伊达';

  @override
  String get cityDazaifu => 'Dazaifu';

  @override
  String get cityDotonbori => 'Dotonbori';

  @override
  String get cityEbetsu => '江别';

  @override
  String get cityEbina => 'Ebina';

  @override
  String get cityEbino => 'Ebino';

  @override
  String get cityEbisu => 'Ebisu';

  @override
  String get cityEchizen => 'Echizen';

  @override
  String get cityEhime => 'Ehime';

  @override
  String get cityEna => 'Ena';

  @override
  String get cityEniwa => '惠庭';

  @override
  String get cityEtajima => 'Etajima';

  @override
  String get cityFuchu => 'Fuchu';

  @override
  String get cityFuefuki => 'Fuefuki';

  @override
  String get cityFujieda => 'Fujieda';

  @override
  String get cityFujiidera => 'Fujiidera';

  @override
  String get cityFujimi => 'Fujimi';

  @override
  String get cityFujimino => 'Fujimino';

  @override
  String get cityFujinomiya => 'Fujinomiya';

  @override
  String get cityFujioka => 'Fujioka';

  @override
  String get cityFujisawa => 'Fujisawa';

  @override
  String get cityFujiyoshida => 'Fujiyoshida';

  @override
  String get cityFukuchiyama => 'Fukuchiyama';

  @override
  String get cityFukui => 'Fukui';

  @override
  String get cityFukuiCity => 'Fukui City';

  @override
  String get cityFukuoka => '福冈';

  @override
  String get cityFukagawa => '深川';

  @override
  String get cityFukaya => '深谷';

  @override
  String get cityFukuokaCity => 'Fukuoka City';

  @override
  String get cityFukuroi => 'Fukuroi';

  @override
  String get cityFukushima => 'Fukushima';

  @override
  String get cityFukushimaCity => '福岛市';

  @override
  String get cityFukutsu => 'Fukutsu';

  @override
  String get cityFukuyama => '福山';

  @override
  String get cityFushimi => '伏见';

  @override
  String get cityFunabashi => 'Funabashi';

  @override
  String get cityFurano => '富良野';

  @override
  String get cityFuttsu => 'Futtsu';

  @override
  String get cityGamagori => 'Gamagori';

  @override
  String get cityGero => 'Gero';

  @override
  String get cityGifu => 'Gifu';

  @override
  String get cityGifuCity => 'Gifu City';

  @override
  String get cityGinkakujiArea => 'Ginkakuji Area';

  @override
  String get cityGinza => '银座';

  @override
  String get cityGinowan => 'Ginowan';

  @override
  String get cityGion => 'Gion';

  @override
  String get cityGobo => 'Gobo';

  @override
  String get cityGojo => 'Gojo';

  @override
  String get cityGose => 'Gose';

  @override
  String get cityGosen => 'Gosen';

  @override
  String get cityGoshogawara => '五所川原';

  @override
  String get cityGoto => 'Goto';

  @override
  String get cityGotemba => 'Gotemba';

  @override
  String get cityGotsu => 'Gotsu';

  @override
  String get cityGunma => 'Gunma';

  @override
  String get cityGyoda => 'Gyoda';

  @override
  String get cityHabikino => 'Habikino';

  @override
  String get cityHachinohe => '八户';

  @override
  String get cityHachimantai => '八幡平';

  @override
  String get cityHagi => 'Hagi';

  @override
  String get cityHakataStationArea => 'Hakata Station Area';

  @override
  String get cityHakui => 'Hakui';

  @override
  String get cityHakusan => 'Hakusan';

  @override
  String get cityHamada => 'Hamada';

  @override
  String get cityHamamatsu => 'Hamamatsu';

  @override
  String get cityHana => 'Handa';

  @override
  String get cityHanamaki => '花卷';

  @override
  String get cityHannan => 'Hannan';

  @override
  String get cityHanno => '饭能';

  @override
  String get cityHanyu => 'Hanyu';

  @override
  String get cityHarajuku => '原宿';

  @override
  String get cityHashima => 'Hashima';

  @override
  String get cityHashimoto => 'Hashimoto';

  @override
  String get cityHasuda => 'Hasuda';

  @override
  String get cityHatsukaichi => 'Hatsukaichi';

  @override
  String get cityHekinan => 'Hekinan';

  @override
  String get cityHida => 'Hida';

  @override
  String get cityHidaka => 'Hidaka';

  @override
  String get cityHigashi => 'Higashi';

  @override
  String get cityHigashihiroshima => 'Higashihiroshima';

  @override
  String get cityHigashikagawa => 'Higashikagawa';

  @override
  String get cityHigashimatsushima => '东松岛';

  @override
  String get cityHigashimatsuyama => 'Higashimatsuyama';

  @override
  String get cityHigashinari => '东成';

  @override
  String get cityHigashiomi => 'Higashiomi';

  @override
  String get cityHigashiosaka => 'Higashiosaka';

  @override
  String get cityHigashisumiyoshi => '东住吉';

  @override
  String get cityHigashiyodogawa => '东淀川';

  @override
  String get cityHigashine => '东根';

  @override
  String get cityHikari => 'Hikari';

  @override
  String get cityHikone => 'Hikone';

  @override
  String get cityHimi => 'Himi';

  @override
  String get cityHimeji => 'Himeji';

  @override
  String get cityHioki => 'Hioki';

  @override
  String get cityHirakata => 'Hirakata';

  @override
  String get cityHirakawa => '平川';

  @override
  String get cityHirado => 'Hirado';

  @override
  String get cityHirano => '平野';

  @override
  String get cityHiratsuka => 'Hiratsuka';

  @override
  String get cityHirosaki => '弘前';

  @override
  String get cityHiroshima => '广岛';

  @override
  String get cityHiroshimaCity => 'Hiroshima City';

  @override
  String get cityHitachi => 'Hitachi';

  @override
  String get cityHitachinaka => 'Hitachinaka';

  @override
  String get cityHitachiomiya => 'Hitachiomiya';

  @override
  String get cityHitachiota => '常陆太田';

  @override
  String get cityHitoyoshi => 'Hitoyoshi';

  @override
  String get cityHita => 'Hita';

  @override
  String get cityHofu => 'Hofu';

  @override
  String get cityHokkaido => '北海道';

  @override
  String get cityHokuto => '北斗';

  @override
  String get cityHonjo => 'Honjo';

  @override
  String get cityHyogo => 'Hyogo';

  @override
  String get cityHyuga => 'Hyuga';

  @override
  String get cityIbaraki => 'Ibaraki';

  @override
  String get cityIbara => 'Ibara';

  @override
  String get cityIbusuki => 'Ibusuki';

  @override
  String get cityIchihara => 'Ichihara';

  @override
  String get cityIchikawa => 'Ichikawa';

  @override
  String get cityIchikikushikino => 'Ichikikushikino';

  @override
  String get cityIchinoseki => '一关';

  @override
  String get cityIchinomiya => 'Ichinomiya';

  @override
  String get cityIda => 'Iida';

  @override
  String get cityIga => 'Iga';

  @override
  String get cityIizuka => 'Iizuka';

  @override
  String get cityIiyama => 'Iiyama';

  @override
  String get cityIkebukuro => '池袋';

  @override
  String get cityIkeda => 'Ikeda';

  @override
  String get cityIkoma => 'Ikoma';

  @override
  String get cityIki => 'Iki';

  @override
  String get cityIkuno => '生野';

  @override
  String get cityImabari => 'Imabari';

  @override
  String get cityImari => 'Imari';

  @override
  String get cityImizu => 'Imizu';

  @override
  String get cityInabe => 'Inabe';

  @override
  String get cityInashiki => 'Inashiki';

  @override
  String get cityInazawa => 'Inazawa';

  @override
  String get cityInuyama => 'Inuyama';

  @override
  String get cityInzai => 'Inzai';

  @override
  String get cityIruma => 'Iruma';

  @override
  String get cityIsahaya => 'Isahaya';

  @override
  String get cityIsa => 'Isa';

  @override
  String get cityIse => 'Ise';

  @override
  String get cityIsesaki => 'Isesaki';

  @override
  String get cityIshigaki => 'Ishigaki';

  @override
  String get cityIshikari => '石狩';

  @override
  String get cityIshikawa => 'Ishikawa';

  @override
  String get cityIshioka => 'Ishioka';

  @override
  String get cityIshinomaki => '石卷';

  @override
  String get cityIsumi => 'Isumi';

  @override
  String get cityItako => 'Itako';

  @override
  String get cityItami => 'Itami';

  @override
  String get cityIto => 'Ito';

  @override
  String get cityItoigawa => 'Itoigawa';

  @override
  String get cityItoman => 'Itoman';

  @override
  String get cityItoshima => 'Itoshima';

  @override
  String get cityIwade => 'Iwade';

  @override
  String get cityIwaki => '磐城';

  @override
  String get cityIwakuni => 'Iwakuni';

  @override
  String get cityIwakura => 'Iwakura';

  @override
  String get cityIwamizawa => '岩见泽';

  @override
  String get cityIwanuma => '岩沼';

  @override
  String get cityIwate => 'Iwate';

  @override
  String get cityIwata => 'Iwata';

  @override
  String get cityIyo => 'Iyo';

  @override
  String get cityIzu => 'Izu';

  @override
  String get cityIzumi => 'Izumi';

  @override
  String get cityIzumiotsu => 'Izumiotsu';

  @override
  String get cityIzumisano => 'Izumisano';

  @override
  String get cityIzumo => 'Izumo';

  @override
  String get cityIzunokuni => 'Izunokuni';

  @override
  String get cityJoetsu => 'Joetsu';

  @override
  String get cityJonan => 'Jonan';

  @override
  String get cityJoso => 'Joso';

  @override
  String get cityJoto => '城东';

  @override
  String get cityJoyo => 'Joyo';

  @override
  String get cityKabukicho => 'Kabukicho';

  @override
  String get cityKadoma => 'Kadoma';

  @override
  String get cityKaga => 'Kaga';

  @override
  String get cityKagawa => 'Kagawa';

  @override
  String get cityKagoshima => 'Kagoshima';

  @override
  String get cityKagoshimaCity => 'Kagoshima City';

  @override
  String get cityKahoku => 'Kahoku';

  @override
  String get cityKai => 'Kai';

  @override
  String get cityKainan => 'Kainan';

  @override
  String get cityKaizuka => 'Kaizuka';

  @override
  String get cityKaizu => 'Kaizu';

  @override
  String get cityKakamigahara => 'Kakamigahara';

  @override
  String get cityKakegawa => 'Kakegawa';

  @override
  String get cityKakogawa => 'Kakogawa';

  @override
  String get cityKakuda => '角田';

  @override
  String get cityKama => 'Kama';

  @override
  String get cityKamagaya => 'Kamagaya';

  @override
  String get cityKamaishi => '釜石';

  @override
  String get cityKamakura => 'Kamakura';

  @override
  String get cityKameoka => '龟冈';

  @override
  String get cityKameyama => '龟山';

  @override
  String get cityKami => 'Kami';

  @override
  String get cityKamiamakusa => 'Kamiamakusa';

  @override
  String get cityKamigyo => '上京';

  @override
  String get cityKaminoyama => '上山';

  @override
  String get cityKamo => 'Kamo';

  @override
  String get cityKamogawa => 'Kamogawa';

  @override
  String get cityKanagawa => 'Kanagawa';

  @override
  String get cityKanda => 'Kanda';

  @override
  String get cityKani => 'Kani';

  @override
  String get cityKannonji => 'Kan\'onji';

  @override
  String get cityKanoya => 'Kanoya';

  @override
  String get cityKanuma => 'Kanuma';

  @override
  String get cityKanzaki => 'Kanzaki';

  @override
  String get cityKanazawa => 'Kanazawa';

  @override
  String get cityKariya => 'Kariya';

  @override
  String get cityKaratsu => 'Karatsu';

  @override
  String get cityKasai => 'Kasai';

  @override
  String get cityKasama => 'Kasama';

  @override
  String get cityKasaoka => 'Kasaoka';

  @override
  String get cityKashiba => 'Kashiba';

  @override
  String get cityKashihara => 'Kashihara';

  @override
  String get cityKashima => 'Kashima';

  @override
  String get cityKashiwa => 'Kashiwa';

  @override
  String get cityKashiwara => '柏原';

  @override
  String get cityKashiwazaki => 'Kashiwazaki';

  @override
  String get cityKasuga => 'Kasuga';

  @override
  String get cityKasugai => 'Kasugai';

  @override
  String get cityKasukabe => 'Kasukabe';

  @override
  String get cityKatagami => '潟上';

  @override
  String get cityKatano => 'Katano';

  @override
  String get cityKato => 'Kato';

  @override
  String get cityKatori => 'Katori';

  @override
  String get cityKatsuragi => 'Katsuragi';

  @override
  String get cityKatsuura => 'Katsuura';

  @override
  String get cityKatsuyama => 'Katsuyama';

  @override
  String get cityKawachinagano => 'Kawachinagano';

  @override
  String get cityKawagoe => 'Kawagoe';

  @override
  String get cityKawaguchi => 'Kawaguchi';

  @override
  String get cityKawanishi => 'Kawanishi';

  @override
  String get cityKawasaki => 'Kawasaki';

  @override
  String get cityKazuno => '鹿角';

  @override
  String get cityKazo => 'Kazo';

  @override
  String get cityKesennuma => '气仙沼';

  @override
  String get cityKikuchi => 'Kikuchi';

  @override
  String get cityKikugawa => 'Kikugawa';

  @override
  String get cityKimitsu => 'Kimitsu';

  @override
  String get cityKinkakujiArea => '金阁寺地区';

  @override
  String get cityKinokawa => 'Kinokawa';

  @override
  String get cityKirishima => 'Kirishima';

  @override
  String get cityKiryu => 'Kiryu';

  @override
  String get cityKisarazu => 'Kisarazu';

  @override
  String get cityKishiwada => 'Kishiwada';

  @override
  String get cityKitahiroshima => '北广岛';

  @override
  String get cityKitaibaraki => '北茨城';

  @override
  String get cityKitakami => '北上';

  @override
  String get cityKitakata => '喜多方';

  @override
  String get cityKitakyushu => 'Kitakyushu';

  @override
  String get cityKitami => '北见';

  @override
  String get cityKitamoto => 'Kitamoto';

  @override
  String get cityKitanagoya => 'Kitanagoya';

  @override
  String get cityKitsuki => 'Kitsuki';

  @override
  String get cityKiyomizu => 'Kiyomizu';

  @override
  String get cityKiyosu => 'Kiyosu';

  @override
  String get cityKizugawa => 'Kizugawa';

  @override
  String get cityKobe => '神户';

  @override
  String get cityKobayashi => 'Kobayashi';

  @override
  String get cityKochi => 'Kochi';

  @override
  String get cityKochiCity => 'Kochi City';

  @override
  String get cityKofu => 'Kofu';

  @override
  String get cityKoga => 'Koga';

  @override
  String get cityKoka => 'Koka';

  @override
  String get cityKomagane => 'Komagane';

  @override
  String get cityKomaki => 'Komaki';

  @override
  String get cityKomatsu => 'Komatsu';

  @override
  String get cityKomatsushima => 'Komatsushima';

  @override
  String get cityKonan => 'Konan';

  @override
  String get cityKonohana => '此花';

  @override
  String get cityKoriyama => '郡山';

  @override
  String get cityKosai => 'Kosai';

  @override
  String get cityKoshigaya => 'Koshigaya';

  @override
  String get cityKoshi => 'Koshi';

  @override
  String get cityKoshu => 'Koshu';

  @override
  String get cityKudamatsu => 'Kudamatsu';

  @override
  String get cityKuki => 'Kuki';

  @override
  String get cityKumamoto => 'Kumamoto';

  @override
  String get cityKumamotoCity => 'Kumamoto City';

  @override
  String get cityKumagaya => 'Kumagaya';

  @override
  String get cityKumano => 'Kumano';

  @override
  String get cityKunisaki => 'Kunisaki';

  @override
  String get cityKurashiki => 'Kurashiki';

  @override
  String get cityKurayoshi => 'Kurayoshi';

  @override
  String get cityKure => 'Kure';

  @override
  String get cityKurihara => '栗原';

  @override
  String get cityKuroishi => '黑石';

  @override
  String get cityKurobe => 'Kurobe';

  @override
  String get cityKurume => 'Kurume';

  @override
  String get cityKushima => 'Kushima';

  @override
  String get cityKushiro => '钏路';

  @override
  String get cityKusatsu => 'Kusatsu';

  @override
  String get cityKuwana => 'Kuwana';

  @override
  String get cityKyoto => '京都';

  @override
  String get cityKyotoCity => 'Kyoto City';

  @override
  String get cityKyotanabe => 'Kyotanabe';

  @override
  String get cityKyotango => 'Kyotango';

  @override
  String get cityKyotoStationArea => 'Kyoto Station Area';

  @override
  String get cityMaebashi => 'Maebashi';

  @override
  String get cityMaibara => 'Maibara';

  @override
  String get cityMaizuru => 'Maizuru';

  @override
  String get cityMakinohara => 'Makinohara';

  @override
  String get cityMakurazaki => 'Makurazaki';

  @override
  String get cityManiwa => 'Maniwa';

  @override
  String get cityMarugame => 'Marugame';

  @override
  String get cityMarunouchi => 'Marunouchi';

  @override
  String get cityMasuda => 'Masuda';

  @override
  String get cityMatsubara => 'Matsubara';

  @override
  String get cityMatsudo => 'Matsudo';

  @override
  String get cityMatsue => 'Matsue';

  @override
  String get cityMatsumoto => 'Matsumoto';

  @override
  String get cityMatsusaka => 'Matsusaka';

  @override
  String get cityMatsuura => 'Matsuura';

  @override
  String get cityMatsuyama => 'Matsuyama';

  @override
  String get cityMie => 'Mie';

  @override
  String get cityMihara => 'Mihara';

  @override
  String get cityMikasa => '三笠';

  @override
  String get cityMiki => 'Miki';

  @override
  String get cityMima => 'Mima';

  @override
  String get cityMimasaka => 'Mimasaka';

  @override
  String get cityMinamiAlps => 'Minami-Alps';

  @override
  String get cityMinamiawaji => 'Minamiawaji';

  @override
  String get cityMinamiboso => 'Minamiboso';

  @override
  String get cityMinamisatsuma => 'Minamisatsuma';

  @override
  String get cityMinamata => 'Minamata';

  @override
  String get cityMinamishimabara => 'Minamishimabara';

  @override
  String get cityMinamisoma => '南相马';

  @override
  String get cityMinamiuonuma => 'Minamiuonuma';

  @override
  String get cityMinatoMirai => 'Minato Mirai';

  @override
  String get cityMine => 'Mine';

  @override
  String get cityMinoh => 'Minoh';

  @override
  String get cityMino => 'Mino';

  @override
  String get cityMinokamo => 'Minokamo';

  @override
  String get cityMisato => 'Misato';

  @override
  String get cityMisawa => '三泽';

  @override
  String get cityMishima => 'Mishima';

  @override
  String get cityMito => 'Mito';

  @override
  String get cityMitoyo => 'Mitoyo';

  @override
  String get cityMitsuke => 'Mitsuke';

  @override
  String get cityMiyagi => 'Miyagi';

  @override
  String get cityMiyako => '宫古';

  @override
  String get cityMiyakojima => 'Miyakojima';

  @override
  String get cityMiyakonojo => 'Miyakonojo';

  @override
  String get cityMiyama => 'Miyama';

  @override
  String get cityMiyawaka => 'Miyawaka';

  @override
  String get cityMiyazaki => 'Miyazaki';

  @override
  String get cityMiyazakiCity => 'Miyazaki City';

  @override
  String get cityMiyazu => 'Miyazu';

  @override
  String get cityMiyoshi => 'Miyoshi';

  @override
  String get cityMizuho => 'Mizuho';

  @override
  String get cityMizunami => 'Mizunami';

  @override
  String get cityMobara => 'Mobara';

  @override
  String get cityMoka => 'Moka';

  @override
  String get cityMoriguchi => 'Moriguchi';

  @override
  String get cityMorioka => '盛冈';

  @override
  String get cityMoriya => 'Moriya';

  @override
  String get cityMoriyama => 'Moriyama';

  @override
  String get cityMotomiya => '本宫';

  @override
  String get cityMotosu => 'Motosu';

  @override
  String get cityMuko => 'Muko';

  @override
  String get cityMunakata => 'Munakata';

  @override
  String get cityMurakami => 'Murakami';

  @override
  String get cityMurayama => '村山';

  @override
  String get cityMonbetsu => '纹别';

  @override
  String get cityMuroran => '室兰';

  @override
  String get cityMuroto => 'Muroto';

  @override
  String get cityMutsu => '陆奥';

  @override
  String get cityMyoko => 'Myoko';

  @override
  String get cityNabari => 'Nabari';

  @override
  String get cityNagai => '长井';

  @override
  String get cityNagahama => 'Nagahama';

  @override
  String get cityNagakute => 'Nagakute';

  @override
  String get cityNagano => 'Nagano';

  @override
  String get cityNaganoCity => 'Nagano City';

  @override
  String get cityNagaoka => 'Nagaoka';

  @override
  String get cityNagaokakyo => 'Nagaokakyo';

  @override
  String get cityNagareyama => 'Nagareyama';

  @override
  String get cityNagasaki => 'Nagasaki';

  @override
  String get cityNagasakiCity => 'Nagasaki City';

  @override
  String get cityNagato => 'Nagato';

  @override
  String get cityNagoya => '名古屋';

  @override
  String get cityNago => 'Nago';

  @override
  String get cityNaha => '那霸';

  @override
  String get cityNakagawa => 'Nakagawa';

  @override
  String get cityNakagyo => '中京';

  @override
  String get cityNakama => 'Nakama';

  @override
  String get cityNaniwa => '浪速';

  @override
  String get cityNakanoshima => 'Nakanoshima';

  @override
  String get cityNakatsugawa => 'Nakatsugawa';

  @override
  String get cityNakatsu => 'Nakatsu';

  @override
  String get cityNamba => 'Namba';

  @override
  String get cityNamerikawa => 'Namerikawa';

  @override
  String get cityNankoku => 'Nankoku';

  @override
  String get cityNanao => 'Nanao';

  @override
  String get cityNanjo => 'Nanjo';

  @override
  String get cityNantan => 'Nantan';

  @override
  String get cityNanto => 'Nanto';

  @override
  String get cityNanyo => '南阳';

  @override
  String get cityNayoro => '名寄';

  @override
  String get cityNara => 'Nara';

  @override
  String get cityNaraCity => 'Nara City';

  @override
  String get cityNarashino => 'Narashino';

  @override
  String get cityNarita => 'Narita';

  @override
  String get cityNaruto => 'Naruto';

  @override
  String get cityNasushiobara => 'Nasushiobara';

  @override
  String get cityNasukarasuyama => 'Nasukarasuyama';

  @override
  String get cityNatori => '名取';

  @override
  String get cityNemuro => '根室';

  @override
  String get cityNeyagawa => 'Neyagawa';

  @override
  String get cityNichinan => 'Nichinan';

  @override
  String get cityNiigata => 'Niigata';

  @override
  String get cityNiigataCity => 'Niigata City';

  @override
  String get cityNiihama => 'Niihama';

  @override
  String get cityNiimi => 'Niimi';

  @override
  String get cityNiiza => 'Niiza';

  @override
  String get cityNihonmatsu => '二本松';

  @override
  String get cityNikaho => '仁贺保';

  @override
  String get cityNikko => 'Nikko';

  @override
  String get cityNirasaki => 'Nirasaki';

  @override
  String get cityNiseko => '二世谷';

  @override
  String get cityNishikyo => '西京';

  @override
  String get cityNishinomiya => 'Nishinomiya';

  @override
  String get cityNishinari => '西成';

  @override
  String get cityNishinoomote => 'Nishinoomote';

  @override
  String get cityNishio => 'Nishio';

  @override
  String get cityNishiwaki => 'Nishiwaki';

  @override
  String get cityNobeoka => 'Nobeoka';

  @override
  String get cityNoboribetsu => '登别';

  @override
  String get cityNoda => 'Noda';

  @override
  String get cityNogata => 'Nogata';

  @override
  String get cityNomi => 'Nomi';

  @override
  String get cityNonoichi => 'Nonoichi';

  @override
  String get cityNoshiro => '能代';

  @override
  String get cityNumata => 'Numata';

  @override
  String get cityNumazu => 'Numazu';

  @override
  String get cityOamishirasato => 'Oamishirasato';

  @override
  String get cityObanazawa => '尾花泽';

  @override
  String get cityObama => 'Obama';

  @override
  String get cityObihiro => '带广';

  @override
  String get cityObu => 'Obu';

  @override
  String get cityOda => 'Oda';

  @override
  String get cityOdaiba => 'Odaiba';

  @override
  String get cityOdate => '大馆';

  @override
  String get cityOdawara => 'Odawara';

  @override
  String get cityOfunato => '大船渡';

  @override
  String get cityOgaki => 'Ogaki';

  @override
  String get cityOgi => 'Ogi';

  @override
  String get cityOgori => 'Ogori';

  @override
  String get cityOita => 'Oita';

  @override
  String get cityOitaCity => 'Oita City';

  @override
  String get cityOjiya => 'Ojiya';

  @override
  String get cityOkawa => 'Okawa';

  @override
  String get cityOkaya => 'Okaya';

  @override
  String get cityOkayama => 'Okayama';

  @override
  String get cityOkayamaCity => 'Okayama City';

  @override
  String get cityOkegawa => 'Okegawa';

  @override
  String get cityOkinawa => 'Okinawa';

  @override
  String get cityOmaezaki => 'Omaezaki';

  @override
  String get cityOmachi => 'Omachi';

  @override
  String get cityOmihachiman => 'Omihachiman';

  @override
  String get cityOmiya => 'Omiya';

  @override
  String get cityOmuta => 'Omuta';

  @override
  String get cityOmura => 'Omura';

  @override
  String get cityOnojo => 'Onojo';

  @override
  String get cityOnomichi => 'Onomichi';

  @override
  String get cityOno => 'Ono';

  @override
  String get cityOsaka => '大阪';

  @override
  String get cityOsakaCity => 'Osaka City';

  @override
  String get cityOsakasayama => 'Osakasayama';

  @override
  String get cityOsaki => '大崎';

  @override
  String get cityOshu => '奥州';

  @override
  String get cityOtake => 'Otake';

  @override
  String get cityOtaru => '小樽';

  @override
  String get cityOhtawara => 'Ohtawara';

  @override
  String get cityOtsu => 'Otsu';

  @override
  String get cityOtsuki => 'Otsuki';

  @override
  String get cityOwariasahi => 'Owariasahi';

  @override
  String get cityOwase => 'Owase';

  @override
  String get cityOyabe => 'Oyabe';

  @override
  String get cityOyama => 'Oyama';

  @override
  String get cityOzu => 'Ozu';

  @override
  String get cityRikuzentakata => '陆前高田';

  @override
  String get cityRitto => 'Ritto';

  @override
  String get cityRoppongi => 'Roppongi';

  @override
  String get cityRumoi => '留萌';

  @override
  String get cityRyugasaki => 'Ryugasaki';

  @override
  String get citySabae => 'Sabae';

  @override
  String get citySado => 'Sado';

  @override
  String get citySaga => 'Saga';

  @override
  String get citySagaCity => 'Saga City';

  @override
  String get citySagae => '寒河江';

  @override
  String get citySagamihara => 'Sagamihara';

  @override
  String get citySaijo => 'Saijo';

  @override
  String get citySaiki => 'Saiki';

  @override
  String get citySaikai => 'Saikai';

  @override
  String get citySaitama => 'Saitama';

  @override
  String get citySaito => 'Saito';

  @override
  String get citySakado => 'Sakado';

  @override
  String get citySakai => 'Sakai';

  @override
  String get citySakaide => 'Sakaide';

  @override
  String get citySakaiminato => 'Sakaiminato';

  @override
  String get citySakata => '酒田';

  @override
  String get citySakura => 'Sakura';

  @override
  String get citySakurai => 'Sakurai';

  @override
  String get citySaku => 'Saku';

  @override
  String get citySanda => '三田';

  @override
  String get citySangenjaya => 'Sangenjaya';

  @override
  String get citySanjo => 'Sanjo';

  @override
  String get citySanmu => 'Sanmu';

  @override
  String get citySano => 'Sano';

  @override
  String get citySanuki => 'Sanuki';

  @override
  String get citySanyoOnoda => 'Sanyo-Onoda';

  @override
  String get citySasayama => 'Sasayama';

  @override
  String get citySasebo => 'Sasebo';

  @override
  String get citySatsuma => 'Satsuma';

  @override
  String get citySatsumasendai => 'Satsumasendai';

  @override
  String get citySayama => 'Sayama';

  @override
  String get citySawara => 'Sawara';

  @override
  String get citySeiyo => 'Seiyo';

  @override
  String get citySeki => 'Seki';

  @override
  String get citySemboku => '仙北';

  @override
  String get citySendai => '仙台';

  @override
  String get citySennan => 'Sennan';

  @override
  String get cityShibetsu => '士别';

  @override
  String get citySeto => 'Seto';

  @override
  String get citySetouchi => 'Setouchi';

  @override
  String get citySettsu => 'Settsu';

  @override
  String get cityShibata => 'Shibata';

  @override
  String get cityShibukawa => 'Shibukawa';

  @override
  String get cityShiga => 'Shiga';

  @override
  String get cityShiki => 'Shiki';

  @override
  String get cityShikokuchuo => 'Shikokuchuo';

  @override
  String get cityShima => 'Shima';

  @override
  String get cityShimabara => 'Shimabara';

  @override
  String get cityShimada => 'Shimada';

  @override
  String get cityShimane => 'Shimane';

  @override
  String get cityShimanto => 'Shimanto';

  @override
  String get cityShimoda => 'Shimoda';

  @override
  String get cityShimokitazawa => 'Shimokitazawa';

  @override
  String get cityShimonoseki => 'Shimonoseki';

  @override
  String get cityShimotsuke => 'Shimotsuke';

  @override
  String get cityShimotsuma => 'Shimotsuma';

  @override
  String get cityShingu => 'Shingu';

  @override
  String get cityShinjo => '新庄';

  @override
  String get cityShinsaibashi => 'Shinsaibashi';

  @override
  String get cityShinsho => 'Shinshiro';

  @override
  String get cityShiogama => '盐釜';

  @override
  String get cityShiojiri => 'Shiojiri';

  @override
  String get cityShijonawate => 'Shijonawate';

  @override
  String get cityShiraoka => 'Shiraoka';

  @override
  String get cityShirakawa => 'Shirakawa';

  @override
  String get cityShiroishi => '白石';

  @override
  String get cityShiroi => 'Shiroi';

  @override
  String get cityShiwa => '紫波';

  @override
  String get cityShiso => 'Shiso';

  @override
  String get cityShizuoka => 'Shizuoka';

  @override
  String get cityShizuokaCity => 'Shizuoka City';

  @override
  String get cityShobara => 'Shobara';

  @override
  String get cityShunan => 'Shunan';

  @override
  String get citySodegaura => 'Sodegaura';

  @override
  String get citySoja => 'Soja';

  @override
  String get citySoka => 'Soka';

  @override
  String get citySoma => '相马';

  @override
  String get citySoo => 'Soo';

  @override
  String get citySosa => 'Sosa';

  @override
  String get citySuita => 'Suita';

  @override
  String get citySukagawa => '须贺川';

  @override
  String get citySukumo => 'Sukumo';

  @override
  String get citySumoto => 'Sumoto';

  @override
  String get citySunagawa => '砂川';

  @override
  String get citySusaki => 'Susaki';

  @override
  String get citySusono => 'Susono';

  @override
  String get citySusukino => 'Susukino';

  @override
  String get citySuwa => 'Suwa';

  @override
  String get citySuzu => 'Suzu';

  @override
  String get citySuzaka => 'Suzaka';

  @override
  String get citySuzuka => 'Suzuka';

  @override
  String get cityTagajo => '多贺城';

  @override
  String get cityTagawa => 'Tagawa';

  @override
  String get cityTainai => 'Tainai';

  @override
  String get cityTaisho => '大正';

  @override
  String get cityTajimi => 'Tajimi';

  @override
  String get cityTakahagi => '高萩';

  @override
  String get cityTakahama => 'Takahama';

  @override
  String get cityTakahashi => 'Takahashi';

  @override
  String get cityTakikawa => '泷川';

  @override
  String get cityTaku => 'Taku';

  @override
  String get cityTakaishi => 'Takaishi';

  @override
  String get cityTakamatsu => 'Takamatsu';

  @override
  String get cityTakaoka => 'Takaoka';

  @override
  String get cityTakasago => 'Takasago';

  @override
  String get cityTakasaki => 'Takasaki';

  @override
  String get cityTakashima => 'Takashima';

  @override
  String get cityTakarazuka => 'Takarazuka';

  @override
  String get cityTakatsuki => 'Takatsuki';

  @override
  String get cityTakayama => 'Takayama';

  @override
  String get cityTakeo => 'Takeo';

  @override
  String get cityTakehara => 'Takehara';

  @override
  String get cityTaketa => 'Taketa';

  @override
  String get cityTakizawa => '泷泽';

  @override
  String get cityTamana => 'Tamana';

  @override
  String get cityTamano => 'Tamano';

  @override
  String get cityTamba => 'Tanba';

  @override
  String get cityTambaSasayama => 'Tamba-Sasayama';

  @override
  String get cityTamura => '田村';

  @override
  String get cityTanabe => 'Tanabe';

  @override
  String get cityTatebayashi => 'Tatebayashi';

  @override
  String get cityTatsuno => '龙野';

  @override
  String get cityTarumizu => 'Tarumizu';

  @override
  String get cityTendo => '天童';

  @override
  String get cityTenjinCentral => 'Tenjin Central';

  @override
  String get cityTenri => 'Tenri';

  @override
  String get cityToba => 'Toba';

  @override
  String get cityTochigi => 'Tochigi';

  @override
  String get cityToda => 'Toda';

  @override
  String get cityTogane => 'Togane';

  @override
  String get cityToki => 'Toki';

  @override
  String get cityTomiya => '富谷';

  @override
  String get cityTokai => 'Tokai';

  @override
  String get cityTokamachi => 'Tokamachi';

  @override
  String get cityTokoname => 'Tokoname';

  @override
  String get cityTokorozawa => 'Tokorozawa';

  @override
  String get cityTokushima => 'Tokushima';

  @override
  String get cityTokushimaCity => 'Tokushima City';

  @override
  String get cityTokyo => '东京';

  @override
  String get cityTomakomai => '苫小牧';

  @override
  String get cityTome => '登米';

  @override
  String get cityTomi => 'Tomi';

  @override
  String get cityTomigusuku => 'Tomigusuku';

  @override
  String get cityTomioka => 'Tomioka';

  @override
  String get cityTomisato => 'Tomisato';

  @override
  String get cityTonami => 'Tonami';

  @override
  String get cityTondabayashi => 'Tondabayashi';

  @override
  String get cityTono => '远野';

  @override
  String get cityToon => 'Toon';

  @override
  String get cityToride => 'Toride';

  @override
  String get cityTosa => 'Tosa';

  @override
  String get cityTosashimizu => 'Tosashimizu';

  @override
  String get cityTosu => 'Tosu';

  @override
  String get cityTottori => 'Tottori';

  @override
  String get cityTottoriCity => 'Tottori City';

  @override
  String get cityTowada => '十和田';

  @override
  String get cityToyama => 'Toyama';

  @override
  String get cityToyamaCity => 'Toyama City';

  @override
  String get cityToyohashi => 'Toyohashi';

  @override
  String get cityToyokawa => 'Toyokawa';

  @override
  String get cityToyonaka => 'Toyonaka';

  @override
  String get cityToyooka => 'Toyooka';

  @override
  String get cityToyota => 'Toyota';

  @override
  String get cityTsubame => 'Tsubame';

  @override
  String get cityTsuchiura => 'Tsuchiura';

  @override
  String get cityTsugaru => '津轻';

  @override
  String get cityTsukuba => 'Tsukuba';

  @override
  String get cityTsukumi => 'Tsukumi';

  @override
  String get cityTsu => 'Tsu';

  @override
  String get cityTsuruga => 'Tsuruga';

  @override
  String get cityTsurugashima => 'Tsurugashima';

  @override
  String get cityTsuruoka => '鹤冈';

  @override
  String get cityTsuru => 'Tsuru';

  @override
  String get cityTsushima => 'Tsushima';

  @override
  String get cityTsuyama => 'Tsuyama';

  @override
  String get cityUbe => 'Ube';

  @override
  String get cityUchi => 'Uchiko';

  @override
  String get cityUda => 'Uda';

  @override
  String get cityUeda => 'Ueda';

  @override
  String get cityUenohara => 'Uenohara';

  @override
  String get cityUeno => '上野';

  @override
  String get cityUji => 'Uji';

  @override
  String get cityUkiha => 'Ukiha';

  @override
  String get cityUki => 'Uki';

  @override
  String get cityUkyo => '右京';

  @override
  String get cityUmeda => 'Umeda';

  @override
  String get cityUnnan => 'Unnan';

  @override
  String get cityUnzen => 'Unzen';

  @override
  String get cityUonuma => 'Uonuma';

  @override
  String get cityUozu => 'Uozu';

  @override
  String get cityUrasoe => 'Urasoe';

  @override
  String get cityUrayasu => 'Urayasu';

  @override
  String get cityUreshino => 'Ureshino';

  @override
  String get cityUsuki => 'Usuki';

  @override
  String get cityUruma => 'Uruma';

  @override
  String get cityUrawa => 'Urawa';

  @override
  String get cityUsa => 'Usa';

  @override
  String get cityUtashinai => '歌志内';

  @override
  String get cityUshiku => 'Ushiku';

  @override
  String get cityUto => 'Uto';

  @override
  String get cityUtsunomiya => 'Utsunomiya';

  @override
  String get cityUwajima => 'Uwajima';

  @override
  String get cityWajima => 'Wajima';

  @override
  String get cityWakayama => 'Wakayama';

  @override
  String get cityWakayamaCity => 'Wakayama City';

  @override
  String get cityWakkanai => '稚内';

  @override
  String get cityWako => 'Wako';

  @override
  String get cityWarabi => 'Warabi';

  @override
  String get cityYabu => 'Yabu';

  @override
  String get cityYachimat => 'Yachimata';

  @override
  String get cityYachiyo => 'Yachiyo';

  @override
  String get cityYaita => 'Yaita';

  @override
  String get cityYaizu => 'Yaizu';

  @override
  String get cityYakumo => 'Yame';

  @override
  String get cityYamagata => 'Yamagata';

  @override
  String get cityYamagataCity => '山形市';

  @override
  String get cityYamaguchi => 'Yamaguchi';

  @override
  String get cityYamaguchiCity => 'Yamaguchi City';

  @override
  String get cityYamaga => 'Yamaga';

  @override
  String get cityYamanashi => 'Yamanashi';

  @override
  String get cityYamashina => '山科';

  @override
  String get cityYamato => 'Yamato';

  @override
  String get cityYamatokoriyama => 'Yamatokoriyama';

  @override
  String get cityYamatoTakada => 'Yamato-Takada';

  @override
  String get cityYanagawa => 'Yanagawa';

  @override
  String get cityYanai => 'Yanai';

  @override
  String get cityYame => 'Yame';

  @override
  String get cityYao => 'Yao';

  @override
  String get cityYashio => 'Yashio';

  @override
  String get cityYasu => 'Yasu';

  @override
  String get cityYasugi => 'Yasugi';

  @override
  String get cityYatomi => 'Yatomi';

  @override
  String get cityYatsushiro => 'Yatsushiro';

  @override
  String get cityYawata => 'Yawata';

  @override
  String get cityYawatahama => 'Yawatahama';

  @override
  String get cityYokkaichi => 'Yokkaichi';

  @override
  String get cityYokohama => '横滨';

  @override
  String get cityYokosuka => 'Yokosuka';

  @override
  String get cityYodogawa => '淀川';

  @override
  String get cityYokote => '横手';

  @override
  String get cityYonago => 'Yonago';

  @override
  String get cityYonezawa => '米泽';

  @override
  String get cityYoshikawa => 'Yoshikawa';

  @override
  String get cityYoshinogawa => 'Yoshinogawa';

  @override
  String get cityYotsukaido => 'Yotsukaido';

  @override
  String get cityYubari => '夕张';

  @override
  String get cityYotsuya => 'Yotsuya';

  @override
  String get cityYufu => 'Yufu';

  @override
  String get cityYuki => 'Yuki';

  @override
  String get cityYukuhashi => 'Yukuhashi';

  @override
  String get cityYuzawa => '汤泽';

  @override
  String get cityZama => 'Zama';

  @override
  String get cityZentsuji => 'Zentsuji';

  @override
  String get cityZushi => 'Zushi';
}
