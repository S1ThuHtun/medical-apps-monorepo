// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get getStarted => '始める';

  @override
  String get chooseLanguage => '言語を選択してください';

  @override
  String get selectedLanguage => '日本語が選択されています';

  @override
  String get login => 'ログイン';

  @override
  String loginAs(String email) {
    return '$emailとしてログインしました';
  }

  @override
  String signedUpAs(String email) {
    return '$emailとして登録しました';
  }

  @override
  String get enterEmail => 'メールアドレスを入力してください';

  @override
  String get invalidEmail => '無効なメールアドレス形式です';

  @override
  String get enteredPasswordMessage => 'パスワードを入力';

  @override
  String get enteredPasswordErrorMessage => 'パスワードは6文字以上である必要があります';

  @override
  String get confirmPasswordMessage => 'パスワードを確認';

  @override
  String get confirmPasswordErrorMessage => 'パスワードと確認用パスワードが一致しません';

  @override
  String get logOut => 'ログアウト';

  @override
  String get signUp => 'サインアップ';

  @override
  String get newSignUp => 'アカウントをお持ちでないですか？サインアップ';

  @override
  String get oldLogin => '既にアカウントをお持ちですか！ログイン';

  @override
  String get emailAddress => 'メールアドレス';

  @override
  String get password => 'パスワード';

  @override
  String get confirmPassword => 'パスワードを確認';

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
    return '近くに$count件見つかりました';
  }

  @override
  String get within5km => '5km以内';

  @override
  String kmAway(String distance) {
    return '$distance km先';
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
  String get address => '住所';

  @override
  String get openNow => '営業中';

  @override
  String away(Object distance) {
    return '$distance km先';
  }

  @override
  String get getDirections => '道順を表示';

  @override
  String get updateRoute => 'ルートを更新';

  @override
  String get visitWebsite => 'ウェブサイトを訪問';

  @override
  String get wheelchairAccessible => '車椅子でアクセス可能';

  @override
  String get limitedWheelchairAccess => '限定的な車椅子アクセス';

  @override
  String get openInGoogleMaps => 'Googleマップで開く';

  @override
  String get noPhoneAvailable => 'このサービスには電話番号がありません';

  @override
  String get invalidPhoneFormat => '無効な電話番号形式';

  @override
  String get cannotOpenPhoneDialer => '電話アプリを開けません';

  @override
  String get errorOpeningMaps => 'Googleマップを開けません';

  @override
  String get categoryGeneralServices => '一般診療';

  @override
  String get categorySpecializedServices => '専門診療';

  @override
  String get categorySurgicalServices => '外科サービス';

  @override
  String get categoryRehabilitationServices => 'リハビリテーション';

  @override
  String get categoryDiagnosticServices => '診断サービス';

  @override
  String get categoryEmergencyServices => '救急サービス';

  @override
  String get categoryMaternityWomensHealth => '産婦人科・女性の健康';

  @override
  String get categoryPharmacyServices => '薬局サービス';

  @override
  String get categoryMentalHealthServices => 'メンタルヘルスサービス';

  @override
  String get categoryAlternativeMedicine => '代替医療';

  @override
  String get serviceGeneralMedicine => '内科';

  @override
  String get serviceEmergencyCare => '救急医療';

  @override
  String get serviceFamilyMedicine => '家庭医療';

  @override
  String get servicePreventativeMedicine => '予防医学';

  @override
  String get serviceHealthCheckups => '健康診断';

  @override
  String get serviceUrgentCare => '緊急医療';

  @override
  String get serviceCardiology => '循環器科';

  @override
  String get serviceDermatology => '皮膚科';

  @override
  String get serviceEndocrinology => '内分泌科';

  @override
  String get serviceGastroenterology => '消化器科';

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
  String get servicePulmonology => '呼吸器科';

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
  String get serviceCardiacRehabilitation => '心臓リハビリテーション';

  @override
  String get serviceNeurologicalRehabilitation => '神経リハビリテーション';

  @override
  String get serviceLaboratoryTests => '臨床検査';

  @override
  String get serviceRadiology => '放射線科';

  @override
  String get servicePathology => '病理学';

  @override
  String get serviceEndoscopy => '内視鏡検査';

  @override
  String get serviceECG => '心電図';

  @override
  String get serviceEEG => '脳波検査';

  @override
  String get serviceEmergencyRoom => '救急室（ER）';

  @override
  String get serviceTraumaCare => '外傷治療';

  @override
  String get serviceICU => '集中治療室（ICU）';

  @override
  String get serviceBurnUnit => '熱傷治療室';

  @override
  String get serviceObstetrics => '産科';

  @override
  String get serviceGynecology => '婦人科';

  @override
  String get serviceFamilyPlanning => '家族計画';

  @override
  String get serviceBreastHealth => '乳房の健康';

  @override
  String get servicePrescriptionMedications => '処方薬';

  @override
  String get serviceOTCMedications => '市販薬';

  @override
  String get serviceVaccinations => '予防接種';

  @override
  String get servicePharmaceuticalConsultations => '薬剤相談';

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
  String get serviceAcupuncture => '鍼治療';

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
  String get selectWard => '区を選択';

  @override
  String get useCurrentLocation => '現在地を使用';

  @override
  String get prefectures => '都道府県';

  @override
  String get citiesDistricts => '市区町村';

  @override
  String get wardsAreas => '区・エリア';

  @override
  String allOf(String location) {
    return '$location全体';
  }

  @override
  String get searchEntirePrefecture => '都道府県全体を検索';

  @override
  String get searchEntireCity => '市区町村全体を検索';

  @override
  String get locationError => '位置情報を取得できません。位置情報サービスを有効にして権限を付与してください。';

  @override
  String get selectLocationError => '位置情報を選択するか、位置情報サービスを有効にしてください。';

  @override
  String get noServicesFound => 'サービスが見つかりませんでした';

  @override
  String get tryDifferentLocation => '別の場所やサービスタイプで検索してみてください。';

  @override
  String get retry => '再試行';

  @override
  String get gettingLocation => '位置情報を取得中...';

  @override
  String get locationNotAvailable => '位置情報が利用できません';

  @override
  String get pullDownToRefresh => '下にスワイプして更新するか、場所を選択して近くの医療サービスを検索してください';

  @override
  String get prefectureTokyo => '東京都';

  @override
  String get prefectureOsaka => '大阪府';

  @override
  String get prefectureKyoto => '京都府';

  @override
  String get prefectureHokkaido => '北海道';

  @override
  String get prefectureFukuoka => '福岡県';

  @override
  String get prefectureYokohama => '横浜市';

  @override
  String get prefectureNagoya => '名古屋市';

  @override
  String get prefectureKobe => '神戸市';

  @override
  String get prefectureHiroshima => '広島県';

  @override
  String get prefectureSendai => '仙台市';

  @override
  String get prefectureChiba => '千葉県';

  @override
  String get prefectureKanagawa => '神奈川県';

  @override
  String get prefectureSaitama => '埼玉県';

  @override
  String get prefectureShizuoka => '静岡県';

  @override
  String get prefectureAichi => '愛知県';

  @override
  String get prefectureHyogo => '兵庫県';

  @override
  String get prefectureNiigata => '新潟県';

  @override
  String get prefectureMiyagi => '宮城県';

  @override
  String get prefectureNagano => '長野県';

  @override
  String get prefectureGifu => '岐阜県';

  @override
  String get prefectureGunma => '群馬県';

  @override
  String get prefectureTochigi => '栃木県';

  @override
  String get prefectureIbaraki => '茨城県';

  @override
  String get prefectureOkayama => '岡山県';

  @override
  String get prefectureKumamoto => '熊本県';

  @override
  String get prefectureKagoshima => '鹿児島県';

  @override
  String get prefectureOkinawa => '沖縄県';

  @override
  String get prefectureNara => '奈良県';

  @override
  String get prefectureShiga => '滋賀県';

  @override
  String get prefectureMie => '三重県';

  @override
  String get prefectureWakayama => '和歌山県';

  @override
  String get prefectureYamaguchi => '山口県';

  @override
  String get prefectureEhime => '愛媛県';

  @override
  String get prefectureKagawa => '香川県';

  @override
  String get prefectureTokushima => '徳島県';

  @override
  String get prefectureKochi => '高知県';

  @override
  String get prefectureFukushima => '福島県';

  @override
  String get prefectureYamagata => '山形県';

  @override
  String get prefectureIwate => '岩手県';

  @override
  String get prefectureAkita => '秋田県';

  @override
  String get prefectureAomori => '青森県';

  @override
  String get prefectureIshikawa => '石川県';

  @override
  String get prefectureFukui => '福井県';

  @override
  String get prefectureToyama => '富山県';

  @override
  String get prefectureYamanashi => '山梨県';

  @override
  String get prefectureSaga => '佐賀県';

  @override
  String get prefectureNagasaki => '長崎県';

  @override
  String get prefectureOita => '大分県';

  @override
  String get prefectureMiyazaki => '宮崎県';

  @override
  String get cityShibuya => '渋谷区';

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
  String get cityHigashiyama => '東山区';

  @override
  String get citySakyo => '左京区';

  @override
  String get citySapporo => '札幌市';

  @override
  String get cityHakodate => '函館市';

  @override
  String get cityAsahikawa => '旭川市';

  @override
  String get cityHakata => '博多区';

  @override
  String get cityTenjin => '天神';

  @override
  String get cityNaka => '中区';

  @override
  String get wardShibuya => '渋谷区';

  @override
  String get wardShinjuku => '新宿区';

  @override
  String get wardChiyoda => '千代田区';

  @override
  String get wardTennoji => '天王寺区';

  @override
  String get areaHarajuku => '原宿';

  @override
  String get areaEbisu => '恵比寿';

  @override
  String get areaKabukicho => '歌舞伎町';

  @override
  String get areaYotsuya => '四谷';

  @override
  String get areaMarunouchi => '丸の内';

  @override
  String get areaAkihabara => '秋葉原';

  @override
  String get areaKanda => '神田';

  @override
  String get areaRoppongi => '六本木';

  @override
  String get areaAzabu => '麻布';

  @override
  String get areaOdaiba => 'お台場';

  @override
  String get areaShimokitazawa => '下北沢';

  @override
  String get areaSangenjaya => '三軒茶屋';

  @override
  String get areaUmeda => '梅田';

  @override
  String get areaNakanoshima => '中之島';

  @override
  String get areaNamba => '難波';

  @override
  String get areaShinsaibashi => '心斎橋';

  @override
  String get areaDotonbori => '道頓堀';

  @override
  String get areaAbeno => '阿倍野';

  @override
  String get areaKyotoStation => '京都駅周辺';

  @override
  String get areaGion => '祇園';

  @override
  String get areaKiyomizu => '清水';

  @override
  String get areaGinkakuji => '銀閣寺周辺';

  @override
  String get areaChuo => '中央';

  @override
  String get areaKita => '北';

  @override
  String get areaSusukino => 'すすきの';

  @override
  String get areaHakataStation => '博多駅周辺';

  @override
  String get areaCanal => 'キャナルシティ';

  @override
  String get areaTenjinCentral => '天神セントラル';

  @override
  String get areaChinatown => '中華街';

  @override
  String get areaMinatoMirai => 'みなとみらい';

  @override
  String get chatbotWelcome =>
      'こんにちは 私はあなたの医療アシスタントです。話しかけるか、質問を入力してください。今日はどのようにお手伝いできますか';

  @override
  String get medicalAssistant => '医療アシスタント';

  @override
  String get detailed => '詳細';

  @override
  String get quick => 'クイック';

  @override
  String get responseType => '応答タイプ';

  @override
  String get quickMode => 'クイックモード';

  @override
  String get quickModeDesc => '迅速で簡潔な回答';

  @override
  String get detailedMode => '詳細モード';

  @override
  String get detailedModeDesc => '包括的な医療情報';

  @override
  String get quickModeActivated => '⚡ クイックモード起動';

  @override
  String get detailedModeActivated => '📋 詳細モード起動';

  @override
  String get chatCleared => '✅ チャット履歴をクリアしました';

  @override
  String get thinking => '考え中...';

  @override
  String get overloaded => '現在サービスが過負荷状態です。後でもう一度お試しください。';

  @override
  String get errorOccurred => 'エラーが発生しました。もう一度お試しください。';

  @override
  String get networkError => 'ネットワークエラー。接続を確認してください。';

  @override
  String get speechNotAvailable => '音声認識が利用できません';

  @override
  String get micPermissionRequired => '音声入力にはマイクの許可が必要です';

  @override
  String get voiceInputError => '音声入力エラーが発生しました';

  @override
  String get processing => 'わかりました。処理中です。';

  @override
  String get listening => '聞いています...';

  @override
  String get typeOrSpeak => '症状を入力または話してください';

  @override
  String get you => 'あなた';

  @override
  String get assistant => 'アシスタント';

  @override
  String get findNearbyFacilities => '🏥 近くの施設を探す';

  @override
  String get noDepartmentDetected => 'まだ医療部門が推奨されていません。まず症状を説明してください。';

  @override
  String get askAssistant => 'AIアシスタントに質問';

  @override
  String searchingForService(String service) {
    return '$serviceを検索中...';
  }
}
