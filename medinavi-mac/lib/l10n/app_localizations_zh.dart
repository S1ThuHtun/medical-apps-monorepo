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
    return '已登录为 $email';
  }

  @override
  String signedUpAs(Object email) {
    return '已注册为 $email';
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
  String get confirmPasswordErrorMessage => '密码与确认密码不一致';

  @override
  String get logOut => '登出';

  @override
  String get signUp => '注册新账户';

  @override
  String get newSignUp => '还没有账户？注册新账户';

  @override
  String get oldLogin => '已有账户？请登录';

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
  String get selectCity => '选择城市';

  @override
  String get selectWard => '选择地区';

  @override
  String get useCurrentLocation => '使用当前位置';

  @override
  String get prefectures => '都道府县';

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
}
