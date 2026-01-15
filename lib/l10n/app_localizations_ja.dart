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
  String get getStarted => 'はじめる';

  @override
  String get chooseLanguage => '言語を選択してください';

  @override
  String get selectedLanguage => '日本語が選択されています';

  @override
  String get login => 'ログイン';

  @override
  String loginAs(Object email) {
    return '$emailとしてログインしました';
  }

  @override
  String signedUpAs(Object email) {
    return '$emailとして登録しました';
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
  String get confirmPasswordErrorMessage => 'パスワードが一致しません';

  @override
  String get logOut => 'ログアウト';

  @override
  String get logoutConfirmation => 'ログアウトしてもよろしいですか？';

  @override
  String get cancel => 'キャンセル';

  @override
  String get signUp => '新規登録';

  @override
  String get newSignUp => 'アカウントをお持ちでない方はこちら';

  @override
  String get oldLogin => 'アカウントをお持ちの方はこちら';

  @override
  String get emailAddress => 'メールアドレス';

  @override
  String get password => 'パスワード';

  @override
  String get confirmPassword => 'パスワード（確認）';

  @override
  String get settings => '設定';

  @override
  String get home => 'ホーム';

  @override
  String get reminders => 'リマインダー';

  @override
  String get favorites => 'お気に入り';

  @override
  String get member => 'メンバー';

  @override
  String get noFavorites => 'お気に入りの施設リストは空です';

  @override
  String get tapHeartToSave => '施設のハートアイコンをタップして保存してください';

  @override
  String get history => '履歴';

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
  String get address => '住所';

  @override
  String get openNow => '営業中';

  @override
  String away(Object distance) {
    return '$distance km 離れています';
  }

  @override
  String get getDirections => '経路を表示';

  @override
  String get updateRoute => '経路を更新';

  @override
  String get visitWebsite => 'ウェブサイトにアクセス';

  @override
  String get wheelchairAccessible => '車椅子対応';

  @override
  String get limitedWheelchairAccess => '限定的な車椅子対応';

  @override
  String get openInGoogleMaps => 'Google Mapsで開く';

  @override
  String get noPhoneAvailable => 'このサービスの電話番号がありません';

  @override
  String get invalidPhoneFormat => '無効な電話番号形式です';

  @override
  String get cannotOpenPhoneDialer => '電話ダイアラーを開くことができません';

  @override
  String get errorOpeningMaps => 'Google Mapsを開けません';

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

  @override
  String get gettingLocation => '現在地を取得中...';

  @override
  String get locationNotAvailable => '位置情報が利用できません';

  @override
  String get pullDownToRefresh => '下にプルしてリフレッシュするか、場所を選択して近くの医療サービスを見つけてください';

  @override
  String get prefectureTokyo => '東京';

  @override
  String get prefectureOsaka => '大阪';

  @override
  String get prefectureKyoto => '京都';

  @override
  String get prefectureHokkaido => '北海道';

  @override
  String get prefectureFukuoka => '福岡';

  @override
  String get prefectureYokohama => '横浜';

  @override
  String get prefectureNagoya => '名古屋';

  @override
  String get prefectureKobe => '神戸';

  @override
  String get prefectureHiroshima => '広島';

  @override
  String get prefectureSendai => '仙台';

  @override
  String get prefectureChiba => '千葉';

  @override
  String get prefectureKanagawa => '神奈川';

  @override
  String get prefectureSaitama => '埼玉';

  @override
  String get prefectureShizuoka => '静岡';

  @override
  String get prefectureAichi => '愛知';

  @override
  String get prefectureHyogo => '兵庫';

  @override
  String get prefectureNiigata => '新潟';

  @override
  String get prefectureMiyagi => '宮城';

  @override
  String get prefectureNagano => '長野';

  @override
  String get prefectureGifu => '岐阜';

  @override
  String get prefectureGunma => '群馬';

  @override
  String get prefectureTochigi => '栃木';

  @override
  String get prefectureIbaraki => '茨城';

  @override
  String get prefectureOkayama => '岡山';

  @override
  String get prefectureKumamoto => '熊本';

  @override
  String get prefectureKagoshima => '鹿児島';

  @override
  String get prefectureOkinawa => '沖縄';

  @override
  String get prefectureNara => '奈良';

  @override
  String get prefectureShiga => '滋賀';

  @override
  String get prefectureMie => '三重';

  @override
  String get prefectureWakayama => '和歌山';

  @override
  String get prefectureYamaguchi => '山口';

  @override
  String get prefectureEhime => '愛媛';

  @override
  String get prefectureKagawa => '香川';

  @override
  String get prefectureTokushima => '徳島';

  @override
  String get prefectureKochi => '高知';

  @override
  String get prefectureFukushima => '福島';

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
  String get prefectureSaga => '佐賀';

  @override
  String get prefectureNagasaki => '長崎';

  @override
  String get prefectureOita => '大分';

  @override
  String get prefectureMiyazaki => '宮崎';

  @override
  String get cityShibuya => '渋谷';

  @override
  String get cityShinjuku => '新宿';

  @override
  String get cityChiyoda => '千代田';

  @override
  String get cityMinato => '港';

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
  String get cityHigashiyama => '東山';

  @override
  String get citySakyo => '左京';

  @override
  String get citySapporo => '札幌';

  @override
  String get cityHakodate => '函館';

  @override
  String get cityAsahikawa => '旭川';

  @override
  String get cityHakata => '博多';

  @override
  String get cityTenjin => '天神';

  @override
  String get cityNaka => '中';

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
  String get areaTenjinCentral => '天神中央';

  @override
  String get areaChinatown => '中華街';

  @override
  String get areaMinatoMirai => 'みなとみらい';

  @override
  String get serviceInternalMedicine => '内科';

  @override
  String get serviceSurgery => '外科';

  @override
  String get serviceENT => '耳鼻咽喉科';

  @override
  String get serviceDentistry => '歯科';

  @override
  String get serviceOBGYN => '産婦人科';

  @override
  String get servicePsychosomaticMedicine => '心療内科';

  @override
  String get chatbotWelcome =>
      'こんにちは！私はあなたの医療アシスタントです。話しかけるか、質問を入力してください。今日はどのようにお手伝いできますか？';

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
  String get quickModeActivated => '⚡ クイックモードが有効になりました';

  @override
  String get detailedModeActivated => '📋 詳細モードが有効になりました';

  @override
  String get chatCleared => '✅ チャット履歴がクリアされました';

  @override
  String get thinking => '考え中...';

  @override
  String get overloaded => 'サービスが現在過負荷状態です。後でもう一度お試しください。';

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
  String get findNearbyFacilities => '🏥 近くの施設を検索';

  @override
  String get noDepartmentDetected => '医療部門はまだ推奨されていません。まず症状を説明してください。';

  @override
  String get askAssistant => 'AIアシスタントに聞く';

  @override
  String searchingForService(String service) {
    return '$serviceを検索中...';
  }

  @override
  String get cannotOpenPhoneDial => '電話ダイヤラーを開けません';

  @override
  String get reminderAddTitle => 'リマインダーを追加';

  @override
  String get reminderEditTitle => 'リマインダーを編集';

  @override
  String get reminderMedicineNameLabel => '薬の名前';

  @override
  String get reminderMedicineNameHint => '薬の名前を入力';

  @override
  String get reminderPhotoLabel => '薬の写真';

  @override
  String get reminderPhotoOptional => '（オプション）';

  @override
  String get reminderAddPhotoTitle => '写真を追加';

  @override
  String get reminderAddPhotoButton => 'タップして写真を追加';

  @override
  String get reminderPhotoFromCamera => '写真を撮る';

  @override
  String get reminderPhotoFromGallery => 'ギャラリーから選択';

  @override
  String get reminderPhotoRemove => '写真を削除';

  @override
  String reminderPhotoPickError(String error) {
    return '写真の選択エラー: $error';
  }

  @override
  String get reminderTimeLabel => '時刻';

  @override
  String get reminderRepeatLabel => '繰り返し';

  @override
  String get reminderRepeatNever => 'なし';

  @override
  String get reminderRepeatEveryday => '毎日';

  @override
  String get reminderRepeatWeekdays => '平日のみ';

  @override
  String get reminderRepeatWeekends => '週末のみ';

  @override
  String get reminderRepeatCustomOption => 'カスタム';

  @override
  String get reminderRepeatSettingsTitle => '繰り返し設定';

  @override
  String get reminderRepeatDone => '完了';

  @override
  String get reminderSelectDays => '曜日を選択';

  @override
  String get reminderDayMonShort => '月';

  @override
  String get reminderDayTueShort => '火';

  @override
  String get reminderDayWedShort => '水';

  @override
  String get reminderDayThuShort => '木';

  @override
  String get reminderDayFriShort => '金';

  @override
  String get reminderDaySatShort => '土';

  @override
  String get reminderDaySunShort => '日';

  @override
  String get reminderDaySeparator => '、';

  @override
  String reminderEveryWeekDays(String days) {
    return '毎週$days';
  }

  @override
  String get reminderMealTimingLabel => '服用タイミング';

  @override
  String get reminderMealTimingNone => '指定なし';

  @override
  String get reminderMealTimingBeforeTitle => '食前';

  @override
  String get reminderMealTimingBeforeSubtitle => '食事の30分前に服用';

  @override
  String get reminderMealTimingAfterTitle => '食後';

  @override
  String get reminderMealTimingAfterSubtitle => '食事の30分後に服用';

  @override
  String get reminderCancel => 'キャンセル';

  @override
  String get reminderAdd => '追加';

  @override
  String get reminderUpdate => '更新';

  @override
  String get reminderDoseMorning => '朝';

  @override
  String get reminderDoseNoon => '昼';

  @override
  String get reminderDoseEvening => '夕';

  @override
  String get reminderDoseNight => '夜';

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
  String get reminderAddedMessage => 'リマインダーを追加しました！';

  @override
  String get reminderUpdatedMessage => 'リマインダーを更新しました！';

  @override
  String get reminderDeletedMessage => 'リマインダーを削除しました';

  @override
  String get reminderTakenSnackBar => '服用しました！';

  @override
  String get reminderTimeToTakeMessage => 'お薬を飲む時間です';

  @override
  String get reminderTakenButton => '飲みました';

  @override
  String get reminderCloseButton => '閉じる';

  @override
  String get reminderMealConfirmTitle => '食事確認';

  @override
  String get reminderMealConfirmMessage => 'このお薬は食後に服用してください';

  @override
  String get reminderMealConfirmQuestion => '食事は済みましたか？';

  @override
  String get reminderMealConfirmRecommendation => '効果を高めるため、食後30分以内の服用をお勧めします';

  @override
  String get reminderMealConfirmNotYet => 'まだです';

  @override
  String get reminderMealConfirmDone => 'はい、食べました';

  @override
  String get reminderLaterTitle => 'リマインダー設定';

  @override
  String get reminderLaterMessage => '食後にお薬を飲むことを忘れないでください！';

  @override
  String get reminderLaterOk => 'OK';

  @override
  String get medicineReminderTitle => '服薬リマインダー';

  @override
  String get reminderEmptyTitle => 'リマインダーはまだありません';

  @override
  String get reminderEmptySubtitle => '+ボタンをタップして最初の服薬リマインダーを追加';

  @override
  String addedToFavorites(String name) {
    return '$nameをお気に入りに追加しました';
  }

  @override
  String removedFromFavorites(String name) {
    return '$nameをお気に入りから削除しました';
  }

  @override
  String get reminderTestAlarmTooltip => 'このリマインダーのアラームをテスト';

  @override
  String get settingsAccount => 'アカウント';

  @override
  String get settingsProfile => 'プロフィール';

  @override
  String get settingsNotifications => '通知';

  @override
  String get settingsPrivacySecurity => 'プライバシーとセキュリティ';

  @override
  String get settingsAbout => 'について';

  @override
  String get settingsHelpSupport => 'ヘルプとサポート';

  @override
  String get settingsAboutApp => 'MediNaviについて';
}
