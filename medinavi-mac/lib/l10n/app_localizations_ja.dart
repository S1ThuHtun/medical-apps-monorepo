// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get selectLanguage => '言語選択';

  @override
  String get getStarted => '開始';

  @override
  String get chooseLanguage => '言語を選択してください';

  @override
  String get selectedLanguage => '日本語が選択されています';

  @override
  String get login => 'ログイン';

  @override
  String loginAs(Object email) {
    return '$emailでログインしています';
  }

  @override
  String signedUpAs(Object email) {
    return '$emailで登録しました';
  }

  @override
  String get enterEmail => 'メールアドレスを入力してください';

  @override
  String get invalidEmail => 'メールアドレスの形式が正しくありません';

  @override
  String get enteredPasswordMessage => 'パスワードを入力してください';

  @override
  String get enteredPasswordErrorMessage => 'パスワードは6文字以上で入力してください';

  @override
  String get confirmPasswordMessage => 'パスワード（確認）を入力してください';

  @override
  String get confirmPasswordErrorMessage => 'パスワードと確認用パスワードが一致しません';

  @override
  String get logOut => 'ログアウト';

  @override
  String get signUp => '新規登録';

  @override
  String get newSignUp => 'アカウントをお持ちでないですか？新規登録';

  @override
  String get oldLogin => 'アカウントはお持ちですか？ログイン';

  @override
  String get emailAddress => 'メールアドレス';

  @override
  String get password => 'パスワード';

  @override
  String get confirmPassword => 'パスワード（確認）';

  @override
  String get settings => '設定';

  @override
  String get medicalServices => '医療サービス';

  @override
  String get currentLocation => '現在地';

  @override
  String get language => '言語';

  @override
  String get logout => 'ログアウト';

  @override
  String foundNearby(int count) {
    return '付近で$count件見つかりました';
  }

  @override
  String get within5km => '5km圏内';

  @override
  String kmAway(String distance) {
    return '$distance km';
  }

  @override
  String get open => '営業中';

  @override
  String get closed => '閉店';

  @override
  String get viewOnMap => '地図で見る';

  @override
  String get call => '電話';

  @override
  String get directions => '道順';

  @override
  String get categoryGeneralServices => '一般診療';

  @override
  String get categorySpecializedServices => '専門診療';

  @override
  String get categorySurgicalServices => '外科';

  @override
  String get categoryRehabilitationServices => 'リハビリテーション';

  @override
  String get categoryDiagnosticServices => '診断サービス';

  @override
  String get categoryEmergencyServices => '救急サービス';

  @override
  String get categoryMaternityWomensHealth => '産婦人科・女性医療';

  @override
  String get categoryPharmacyServices => '薬局サービス';

  @override
  String get categoryMentalHealthServices => 'メンタルヘルス';

  @override
  String get categoryAlternativeMedicine => '代替医療';

  @override
  String get serviceGeneralMedicine => '一般内科';

  @override
  String get serviceEmergencyCare => '救急医療';

  @override
  String get serviceFamilyMedicine => '家庭医療';

  @override
  String get servicePreventativeMedicine => '予防医療';

  @override
  String get serviceHealthCheckups => '健康診断';

  @override
  String get serviceUrgentCare => '急患診療';

  @override
  String get serviceCardiology => '循環器内科';

  @override
  String get serviceDermatology => '皮膚科';

  @override
  String get serviceEndocrinology => '内分泌内科';

  @override
  String get serviceGastroenterology => '消化器内科';

  @override
  String get serviceHematology => '血液内科';

  @override
  String get serviceNephrology => '腎臓内科';

  @override
  String get serviceNeurology => '神経内科';

  @override
  String get serviceObstetricsGynecology => '産婦人科';

  @override
  String get serviceOphthalmology => '眼科';

  @override
  String get serviceOrthopedics => '整形外科';

  @override
  String get servicePediatrics => '小児科';

  @override
  String get servicePsychiatry => '精神科';

  @override
  String get serviceRheumatology => 'リウマチ科';

  @override
  String get servicePulmonology => '呼吸器内科';

  @override
  String get serviceUrology => '泌尿器科';

  @override
  String get serviceGeneralSurgery => '一般外科';

  @override
  String get serviceCardiacSurgery => '心臓外科';

  @override
  String get serviceOrthopedicSurgery => '整形外科手術';

  @override
  String get serviceNeurosurgery => '脳神経外科';

  @override
  String get servicePlasticSurgery => '形成外科';

  @override
  String get servicePediatricSurgery => '小児外科';

  @override
  String get serviceObstetricSurgery => '産科手術';

  @override
  String get serviceTraumaSurgery => '外傷外科';

  @override
  String get servicePhysicalTherapy => '理学療法';

  @override
  String get serviceOccupationalTherapy => '作業療法';

  @override
  String get serviceSpeechTherapy => '言語療法';

  @override
  String get serviceCardiacRehabilitation => '心臓リハビリ';

  @override
  String get serviceNeurologicalRehabilitation => '神経リハビリ';

  @override
  String get serviceLaboratoryTests => '検査';

  @override
  String get serviceRadiology => '放射線科';

  @override
  String get servicePathology => '病理診断';

  @override
  String get serviceEndoscopy => '内視鏡検査';

  @override
  String get serviceECG => '心電図';

  @override
  String get serviceEEG => '脳波検査';

  @override
  String get serviceEmergencyRoom => '救急外来';

  @override
  String get serviceTraumaCare => '外傷治療';

  @override
  String get serviceICU => '集中治療室（ICU）';

  @override
  String get serviceBurnUnit => '熱傷治療';

  @override
  String get serviceObstetrics => '産科';

  @override
  String get serviceGynecology => '婦人科';

  @override
  String get serviceFamilyPlanning => '家族計画';

  @override
  String get serviceBreastHealth => '乳腺外科';

  @override
  String get servicePrescriptionMedications => '処方薬';

  @override
  String get serviceOTCMedications => '市販薬';

  @override
  String get serviceVaccinations => '予防接種';

  @override
  String get servicePharmaceuticalConsultations => '服薬相談';

  @override
  String get serviceCompoundingPharmacy => '調剤薬局';

  @override
  String get serviceHerbalMedicine => '漢方薬';

  @override
  String get serviceCounseling => 'カウンセリング';

  @override
  String get servicePsychotherapy => '心理療法';

  @override
  String get serviceAddictionTreatment => '依存症治療';

  @override
  String get serviceSupportGroups => 'サポートグループ';

  @override
  String get serviceBehavioralTherapy => '行動療法';

  @override
  String get serviceAcupuncture => '鍼灸';

  @override
  String get serviceChiropracticCare => 'カイロプラクティック';

  @override
  String get serviceMassageTherapy => 'マッサージ療法';

  @override
  String get serviceNaturopathy => '自然療法';

  @override
  String get serviceHomeopathy => 'ホメオパシー';

  @override
  String get selectPrefecture => '都道府県を選択';

  @override
  String get selectCity => '市区町村を選択';

  @override
  String get selectWard => '地域を選択';

  @override
  String get useCurrentLocation => '現在地を使用';

  @override
  String get prefectures => '都道府県';

  @override
  String get citiesDistricts => '市区町村';

  @override
  String get wardsAreas => '地域';

  @override
  String allOf(String location) {
    return '$location全域';
  }

  @override
  String get searchEntirePrefecture => '都道府県全域で検索';

  @override
  String get searchEntireCity => '市区町村全域で検索';

  @override
  String get locationError => '位置情報を取得できません。位置情報サービスを有効にして、許可を付与してください。';

  @override
  String get selectLocationError => '場所を選択するか、位置情報サービスを有効にしてください。';

  @override
  String get noServicesFound => 'サービスが見つかりません';

  @override
  String get tryDifferentLocation => '別の場所またはサービスタイプで検索してください。';

  @override
  String get retry => '再試行';
}
