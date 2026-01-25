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
  String get transitDirectionsTitle => '公共交通機関での経路';

  @override
  String get transitDirectionsMessage =>
      '公共交通機関の経路はGoogle Mapsで表示することをお勧めします。\n\nGoogle Mapsで経路を表示しますか？';

  @override
  String get openMaps => 'マップを開く';

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
  String get selectWard => '区を選択';

  @override
  String get useCurrentLocation => '現在地を使用';

  @override
  String get prefectures => '都道府県';

  @override
  String get regionHokkaido => '北海道地方';

  @override
  String get regionTohoku => '東北地方';

  @override
  String get regionKanto => '関東地方';

  @override
  String get regionChubu => '中部地方';

  @override
  String get regionKansai => '関西地方';

  @override
  String get regionChugoku => '中国地方';

  @override
  String get regionShikoku => '四国地方';

  @override
  String get regionKyushuOkinawa => '九州・沖縄地方';

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
  String get cityNaka => '那珂';

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
  String get servicePharmacy => '薬局';

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
  String get chatCleared => 'チャット履歴がクリアされました';

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
    return '$days';
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
  String get reminderTakenButton => '服薬済み';

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
  String get reminderMealConfirmDone => '食事済み';

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

  @override
  String get clearChat => 'チャットをクリア';

  @override
  String get clearChatMessage => '新しい会話を開始しますか？現在のチャットはクリアされます。';

  @override
  String get clearChatConfirm => 'クリア';

  @override
  String get cityAbashiri => '網走';

  @override
  String get cityAbeno => '阿倍野';

  @override
  String get cityAbiko => '我孫子';

  @override
  String get cityAgeo => '上尾';

  @override
  String get cityAichi => '愛知';

  @override
  String get cityAioi => '相生';

  @override
  String get cityAira => '姶良';

  @override
  String get cityAisai => '愛西';

  @override
  String get cityAizuwakamatsu => '会津若松';

  @override
  String get cityAkaiwa => '赤磐';

  @override
  String get cityAkashi => '明石';

  @override
  String get cityAki => '安芸';

  @override
  String get cityAkihabara => '秋葉原';

  @override
  String get cityAkita => '秋田';

  @override
  String get cityAkitaCity => '秋田市';

  @override
  String get cityAkitakata => '安芸高田';

  @override
  String get cityAko => '赤穂';

  @override
  String get cityAkune => '阿久根';

  @override
  String get cityAma => 'あま';

  @override
  String get cityAmagasaki => '尼崎';

  @override
  String get cityAmakusa => '天草';

  @override
  String get cityAnan => '阿南';

  @override
  String get cityAnjo => '安城';

  @override
  String get cityAnnaka => '安中';

  @override
  String get cityAomori => '青森';

  @override
  String get cityAomoriCity => '青森市';

  @override
  String get cityArao => '荒尾';

  @override
  String get cityArida => '有田';

  @override
  String get cityAsago => '朝来';

  @override
  String get cityAsahi => '旭';

  @override
  String get cityAsaka => '朝霞';

  @override
  String get cityAsakuchi => '浅口';

  @override
  String get cityAsakura => '朝倉';

  @override
  String get cityAsakusa => '浅草';

  @override
  String get cityAshikaga => '足利';

  @override
  String get cityAshiya => '芦屋';

  @override
  String get citySo => 'Aso';

  @override
  String get cityAtami => '熱海';

  @override
  String get cityAtsugi => '厚木';

  @override
  String get cityAwa => '阿波';

  @override
  String get cityAwaji => '淡路';

  @override
  String get cityAwara => 'あわら';

  @override
  String get cityAyabe => '綾部';

  @override
  String get cityAyase => '綾瀬';

  @override
  String get cityAzabu => '麻布';

  @override
  String get cityAzumino => '安曇野';

  @override
  String get cityBeppu => '別府';

  @override
  String get cityBibai => '美唄';

  @override
  String get cityBizen => '備前';

  @override
  String get cityBungoono => '豊後大野';

  @override
  String get cityBungotakada => '豊後高田';

  @override
  String get cityBuzen => '豊前';

  @override
  String get cityCanelCity => 'Canal City';

  @override
  String get cityChiba => '千葉';

  @override
  String get cityChibaCity => '千葉市';

  @override
  String get cityChichibu => '秩父';

  @override
  String get cityChigasaki => '茅ヶ崎';

  @override
  String get cityChikugo => '筑後';

  @override
  String get cityChikuma => '千曲';

  @override
  String get cityChikushino => '筑紫野';

  @override
  String get cityChinatown => '中華街';

  @override
  String get cityChino => '茅野';

  @override
  String get cityChiryu => '知立';

  @override
  String get cityChita => '知多';

  @override
  String get cityChitose => '千歳';

  @override
  String get cityDaisen => '大仙';

  @override
  String get cityDaito => '大東';

  @override
  String get cityDate => '伊達';

  @override
  String get cityDazaifu => '太宰府';

  @override
  String get cityDotonbori => '道頓堀';

  @override
  String get cityEbetsu => '江別';

  @override
  String get cityEbina => '海老名';

  @override
  String get cityEbino => 'えびの';

  @override
  String get cityEbisu => '恵比寿';

  @override
  String get cityEchizen => '越前';

  @override
  String get cityEhime => '愛媛';

  @override
  String get cityEna => '恵那';

  @override
  String get cityEniwa => '恵庭';

  @override
  String get cityEtajima => '江田島';

  @override
  String get cityFuchu => '府中';

  @override
  String get cityFuefuki => '笛吹';

  @override
  String get cityFujieda => '藤枝';

  @override
  String get cityFujiidera => '藤井寺';

  @override
  String get cityFujimi => '富士見';

  @override
  String get cityFujimino => 'ふじみ野';

  @override
  String get cityFujinomiya => '富士宮';

  @override
  String get cityFujioka => '藤岡';

  @override
  String get cityFujisawa => '藤沢';

  @override
  String get cityFujiyoshida => '富士吉田';

  @override
  String get cityFukuchiyama => '福知山';

  @override
  String get cityFukui => '福井';

  @override
  String get cityFukuiCity => '福井市';

  @override
  String get cityFukuoka => '福岡';

  @override
  String get cityFukagawa => '深川';

  @override
  String get cityFukaya => '深谷';

  @override
  String get cityFukuokaCity => '福岡市';

  @override
  String get cityFukuroi => '袋井';

  @override
  String get cityFukushima => '福島';

  @override
  String get cityFukushimaCity => '福島市';

  @override
  String get cityFukutsu => '福津';

  @override
  String get cityFunabashi => '船橋';

  @override
  String get cityFurano => '富良野';

  @override
  String get cityFuttsu => '富津';

  @override
  String get cityGamagori => '蒲郡';

  @override
  String get cityGero => '下呂';

  @override
  String get cityGifu => '岐阜';

  @override
  String get cityGifuCity => '岐阜市';

  @override
  String get cityGinkakujiArea => '銀閣寺周辺';

  @override
  String get cityGinza => '銀座';

  @override
  String get cityGinowan => '宜野湾';

  @override
  String get cityGion => '祇園';

  @override
  String get cityGobo => '御坊';

  @override
  String get cityGojo => '五條';

  @override
  String get cityGose => '御所';

  @override
  String get cityGosen => '五泉';

  @override
  String get cityGoshogawara => '五所川原';

  @override
  String get cityGoto => '五島';

  @override
  String get cityGotemba => '御殿場';

  @override
  String get cityGotsu => '江津';

  @override
  String get cityGunma => '群馬';

  @override
  String get cityGyoda => '行田';

  @override
  String get cityHabikino => '羽曳野';

  @override
  String get cityHachinohe => '八戸';

  @override
  String get cityHachimantai => '八幡平';

  @override
  String get cityHadano => '秦野';

  @override
  String get cityHagi => '萩';

  @override
  String get cityHakataStationArea => '博多駅周辺';

  @override
  String get cityHakui => '羽咋';

  @override
  String get cityHakusan => '白山';

  @override
  String get cityHamada => '浜田';

  @override
  String get cityHamamatsu => '浜松';

  @override
  String get cityHana => '半田';

  @override
  String get cityHanamaki => '花巻';

  @override
  String get cityHannan => '阪南';

  @override
  String get cityHanno => '飯能';

  @override
  String get cityHanyu => '羽生';

  @override
  String get cityHarajuku => '原宿';

  @override
  String get cityHashima => '羽島';

  @override
  String get cityHashimoto => '橋本';

  @override
  String get cityHasuda => '蓮田';

  @override
  String get cityHatsukaichi => '廿日市';

  @override
  String get cityHekinan => '碧南';

  @override
  String get cityHida => '飛騨';

  @override
  String get cityHidaka => '日高';

  @override
  String get cityHigashihiroshima => '東広島';

  @override
  String get cityHigashikagawa => '東かがわ';

  @override
  String get cityHigashimatsushima => '東松島';

  @override
  String get cityHigashimatsuyama => '東松山';

  @override
  String get cityHigashiomi => '東近江';

  @override
  String get cityHigashiosaka => '東大阪';

  @override
  String get cityHigashine => '東根';

  @override
  String get cityHikari => '光';

  @override
  String get cityHikone => '彦根';

  @override
  String get cityHimi => '氷見';

  @override
  String get cityHimeji => '姫路';

  @override
  String get cityHioki => '日置';

  @override
  String get cityHirakata => '枚方';

  @override
  String get cityHirakawa => '平川';

  @override
  String get cityHirado => '平戸';

  @override
  String get cityHiratsuka => '平塚';

  @override
  String get cityHirosaki => '弘前';

  @override
  String get cityHiroshima => '広島';

  @override
  String get cityHiroshimaCity => '広島市';

  @override
  String get cityHitachi => '日立';

  @override
  String get cityHitachinaka => 'ひたちなか';

  @override
  String get cityHitachiomiya => '常陸大宮';

  @override
  String get cityHitachiota => '常陸太田';

  @override
  String get cityHitoyoshi => '人吉';

  @override
  String get cityHofu => '防府';

  @override
  String get cityHokkaido => '北海道';

  @override
  String get cityHokuto => '北杜';

  @override
  String get cityHonjo => '本庄';

  @override
  String get cityHyogo => '兵庫';

  @override
  String get cityHyuga => '日向';

  @override
  String get cityIbaraki => '茨木';

  @override
  String get cityIbara => '井原';

  @override
  String get cityIbusuki => '指宿';

  @override
  String get cityIchihara => '市原';

  @override
  String get cityIchikawa => '市川';

  @override
  String get cityIchikikushikino => 'いちき串木野';

  @override
  String get cityIchinoseki => '一関';

  @override
  String get cityIchinomiya => '一宮';

  @override
  String get cityIda => 'Iida';

  @override
  String get cityIga => '伊賀';

  @override
  String get cityIizuka => '飯塚';

  @override
  String get cityIiyama => '飯山';

  @override
  String get cityIkebukuro => '池袋';

  @override
  String get cityIkeda => '池田';

  @override
  String get cityIkoma => '生駒';

  @override
  String get cityIki => '壱岐';

  @override
  String get cityImabari => '今治';

  @override
  String get cityImari => '伊万里';

  @override
  String get cityImizu => '射水';

  @override
  String get cityInabe => 'いなべ';

  @override
  String get cityInashiki => '稲敷';

  @override
  String get cityInazawa => '稲沢';

  @override
  String get cityInuyama => '犬山';

  @override
  String get cityInzai => '印西';

  @override
  String get cityIruma => '入間';

  @override
  String get cityIsahaya => '諫早';

  @override
  String get cityIse => '伊勢';

  @override
  String get cityIsehara => '伊勢原';

  @override
  String get cityIsesaki => '伊勢崎';

  @override
  String get cityIshigaki => '石垣';

  @override
  String get cityIshikari => '石狩';

  @override
  String get cityIshikawa => '石川';

  @override
  String get cityIshioka => '石岡';

  @override
  String get cityIshinomaki => '石巻';

  @override
  String get cityIsumi => 'いすみ';

  @override
  String get cityItako => '潮来';

  @override
  String get cityItami => '伊丹';

  @override
  String get cityIto => '伊東';

  @override
  String get cityItoigawa => '糸魚川';

  @override
  String get cityItoman => '糸満';

  @override
  String get cityItoshima => '糸島';

  @override
  String get cityIwade => '岩出';

  @override
  String get cityIwaki => 'いわき';

  @override
  String get cityIwakuni => '岩国';

  @override
  String get cityIwakura => '岩倉';

  @override
  String get cityIwamizawa => '岩見沢';

  @override
  String get cityIwanuma => '岩沼';

  @override
  String get cityIwate => '岩手';

  @override
  String get cityIwata => '磐田';

  @override
  String get cityIyo => '伊予';

  @override
  String get cityIzu => '伊豆';

  @override
  String get cityIzumi => '和泉';

  @override
  String get cityIzumiotsu => '泉大津';

  @override
  String get cityIzumisano => '泉佐野';

  @override
  String get cityIzumo => '出雲';

  @override
  String get cityIzunokuni => '伊豆の国';

  @override
  String get cityJoetsu => '上越';

  @override
  String get cityJoso => '常総';

  @override
  String get cityJoyo => '城陽';

  @override
  String get cityKabukicho => '歌舞伎町';

  @override
  String get cityKadoma => '門真';

  @override
  String get cityKaga => '加賀';

  @override
  String get cityKagawa => '香川';

  @override
  String get cityKagoshima => '鹿児島';

  @override
  String get cityKagoshimaCity => '鹿児島市';

  @override
  String get cityKahoku => 'かほく';

  @override
  String get cityKai => '甲斐';

  @override
  String get cityKainan => '海南';

  @override
  String get cityKaizuka => '貝塚';

  @override
  String get cityKaizu => '海津';

  @override
  String get cityKakamigahara => '各務原';

  @override
  String get cityKakegawa => '掛川';

  @override
  String get cityKakogawa => '加古川';

  @override
  String get cityKakuda => '角田';

  @override
  String get cityKama => '嘉麻';

  @override
  String get cityKamagaya => '鎌ケ谷';

  @override
  String get cityKamaishi => '釜石';

  @override
  String get cityKamakura => '鎌倉';

  @override
  String get cityKami => '香美';

  @override
  String get cityKamiamakusa => '上天草';

  @override
  String get cityKaminoyama => '上山';

  @override
  String get cityKamo => '加茂';

  @override
  String get cityKamogawa => '鴨川';

  @override
  String get cityKanagawa => '神奈川';

  @override
  String get cityKanda => '神田';

  @override
  String get cityKani => '可児';

  @override
  String get cityKannonji => '観音寺';

  @override
  String get cityKanoya => '鹿屋';

  @override
  String get cityKanuma => '鹿沼';

  @override
  String get cityKanzaki => '神埼';

  @override
  String get cityKanazawa => '金沢';

  @override
  String get cityKariya => '刈谷';

  @override
  String get cityKaratsu => '唐津';

  @override
  String get cityKasai => '加西';

  @override
  String get cityKasama => '笠間';

  @override
  String get cityKasaoka => '笠岡';

  @override
  String get cityKashiba => '香芝';

  @override
  String get cityKashihara => '橿原';

  @override
  String get cityKashima => '鹿島';

  @override
  String get cityKashiwa => '柏';

  @override
  String get cityKashiwabara => '柏原';

  @override
  String get cityKashiwazaki => '柏崎';

  @override
  String get cityKasuga => '春日';

  @override
  String get cityKasugai => '春日井';

  @override
  String get cityKasukabe => '春日部';

  @override
  String get cityKatagami => '潟上';

  @override
  String get cityKatano => '交野';

  @override
  String get cityKato => '加東';

  @override
  String get cityKatori => '香取';

  @override
  String get cityKatsuragi => '葛城';

  @override
  String get cityKatsuura => '勝浦';

  @override
  String get cityKatsuyama => '勝山';

  @override
  String get cityKawachinagano => '河内長野';

  @override
  String get cityKawagoe => '川越';

  @override
  String get cityKawaguchi => '川口';

  @override
  String get cityKawanishi => '川西';

  @override
  String get cityKawasaki => '川崎';

  @override
  String get cityKazuno => '鹿角';

  @override
  String get cityKazo => '加須';

  @override
  String get cityKesennuma => '気仙沼';

  @override
  String get cityKikuchi => '菊池';

  @override
  String get cityKikugawa => '菊川';

  @override
  String get cityKimitsu => '君津';

  @override
  String get cityKinokawa => '紀の川';

  @override
  String get cityKirishima => '霧島';

  @override
  String get cityKiryu => '桐生';

  @override
  String get cityKisarazu => '木更津';

  @override
  String get cityKishiwada => '岸和田';

  @override
  String get cityKitahiroshima => '北広島';

  @override
  String get cityKitaibaraki => '北茨城';

  @override
  String get cityKitakami => '北上';

  @override
  String get cityKitakata => '喜多方';

  @override
  String get cityKitakyushu => '北九州';

  @override
  String get cityKitami => '北見';

  @override
  String get cityKitamoto => '北本';

  @override
  String get cityKitanagoya => '北名古屋';

  @override
  String get cityKitsuki => '杵築';

  @override
  String get cityKiyomizu => '清水';

  @override
  String get cityKiyosu => '清須';

  @override
  String get cityKizugawa => '木津川';

  @override
  String get cityKobe => '神戸';

  @override
  String get cityKobayashi => '小林';

  @override
  String get cityKochi => '高知';

  @override
  String get cityKochiCity => '高知市';

  @override
  String get cityKofu => '甲府';

  @override
  String get cityKoga => '古賀';

  @override
  String get cityKoka => '甲賀';

  @override
  String get cityKomagane => '駒ヶ根';

  @override
  String get cityKomaki => '小牧';

  @override
  String get cityKomatsu => '小松';

  @override
  String get cityKomatsushima => '小松島';

  @override
  String get cityKonan => '江南';

  @override
  String get cityKoriyama => '郡山';

  @override
  String get cityKosai => '湖西';

  @override
  String get cityKoshigaya => '越谷';

  @override
  String get cityKoshi => '合志';

  @override
  String get cityKoshu => '甲州';

  @override
  String get cityKudamatsu => '下松';

  @override
  String get cityKuki => '久喜';

  @override
  String get cityKumamoto => '熊本';

  @override
  String get cityKumamotoCity => '熊本市';

  @override
  String get cityKumagaya => '熊谷';

  @override
  String get cityKumano => '熊野';

  @override
  String get cityKunisaki => '国東';

  @override
  String get cityKurashiki => '倉敷';

  @override
  String get cityKurayoshi => '倉吉';

  @override
  String get cityKure => '呉';

  @override
  String get cityKurihara => '栗原';

  @override
  String get cityKuroishi => '黒石';

  @override
  String get cityKurobe => '黒部';

  @override
  String get cityKurume => '久留米';

  @override
  String get cityKushima => '串間';

  @override
  String get cityKushiro => '釧路';

  @override
  String get cityKusatsu => '草津';

  @override
  String get cityKuwana => '桑名';

  @override
  String get cityKyoto => '京都';

  @override
  String get cityKyotoCity => '京都市';

  @override
  String get cityKyotanabe => '京田辺';

  @override
  String get cityKyotango => '京丹後';

  @override
  String get cityKyotoStationArea => '京都駅周辺';

  @override
  String get cityMaebashi => '前橋';

  @override
  String get cityMaibara => '米原';

  @override
  String get cityMaizuru => '舞鶴';

  @override
  String get cityMakinohara => '牧之原';

  @override
  String get cityMakurazaki => '枕崎';

  @override
  String get cityManiwa => '真庭';

  @override
  String get cityMarugame => '丸亀';

  @override
  String get cityMarunouchi => '丸の内';

  @override
  String get cityMasuda => '益田';

  @override
  String get cityMatsubara => '松原';

  @override
  String get cityMatsudo => '松戸';

  @override
  String get cityMatsue => '松江';

  @override
  String get cityMatsumoto => '松本';

  @override
  String get cityMatsusaka => '松阪';

  @override
  String get cityMatsuura => '松浦';

  @override
  String get cityMatsuyama => '松山';

  @override
  String get cityMie => '三重';

  @override
  String get cityMidori => 'みどり';

  @override
  String get cityMihara => '三原';

  @override
  String get cityMikasa => '三笠';

  @override
  String get cityMiki => '三木';

  @override
  String get cityMima => '美馬';

  @override
  String get cityMimasaka => '美作';

  @override
  String get cityMinamiAlps => '南アルプス';

  @override
  String get cityMinamiashigara => '南足柄';

  @override
  String get cityMinamiawaji => '南あわじ';

  @override
  String get cityMinamiboso => '南房総';

  @override
  String get cityMinamisatsuma => '南さつま';

  @override
  String get cityMinamishimabara => '南島原';

  @override
  String get cityMinamisoma => '南相馬';

  @override
  String get cityMinamiuonuma => '南魚沼';

  @override
  String get cityMinatoMirai => 'みなとみらい';

  @override
  String get cityMine => '美祢';

  @override
  String get cityMinoh => '箕面';

  @override
  String get cityMino => '美濃';

  @override
  String get cityMinokamo => '美濃加茂';

  @override
  String get cityMisato => '三郷';

  @override
  String get cityMisawa => '三沢';

  @override
  String get cityMishima => '三島';

  @override
  String get cityMito => '水戸';

  @override
  String get cityMitoyo => '三豊';

  @override
  String get cityMitsuke => '見附';

  @override
  String get cityMiura => '三浦';

  @override
  String get cityMiyagi => '宮城';

  @override
  String get cityMiyako => '宮古';

  @override
  String get cityMiyakojima => '宮古島';

  @override
  String get cityMiyakonojo => '都城';

  @override
  String get cityMiyama => 'みやま';

  @override
  String get cityMiyawaka => '宮若';

  @override
  String get cityMiyazaki => '宮崎';

  @override
  String get cityMiyazakiCity => '宮崎市';

  @override
  String get cityMiyazu => '宮津';

  @override
  String get cityMiyoshi => '三好';

  @override
  String get cityMizuho => '瑞穂';

  @override
  String get cityMizunami => '瑞浪';

  @override
  String get cityMobara => '茂原';

  @override
  String get cityMoka => '真岡';

  @override
  String get cityMoriguchi => '守口';

  @override
  String get cityMorioka => '盛岡';

  @override
  String get cityMoriya => '守谷';

  @override
  String get cityMoriyama => '守山';

  @override
  String get cityMotomiya => '本宮';

  @override
  String get cityMotosu => '本巣';

  @override
  String get cityMuko => '向日';

  @override
  String get cityMunakata => '宗像';

  @override
  String get cityMurakami => '村上';

  @override
  String get cityMurayama => '村山';

  @override
  String get cityMonbetsu => '紋別';

  @override
  String get cityMuroran => '室蘭';

  @override
  String get cityMuroto => '室戸';

  @override
  String get cityMutsu => 'むつ';

  @override
  String get cityMyoko => '妙高';

  @override
  String get cityNabari => '名張';

  @override
  String get cityNagai => '長井';

  @override
  String get cityNagahama => '長浜';

  @override
  String get cityNagakute => '長久手';

  @override
  String get cityNagano => '長野';

  @override
  String get cityNaganoCity => '長野市';

  @override
  String get cityNagaoka => '長岡';

  @override
  String get cityNagaokakyo => '長岡京';

  @override
  String get cityNagareyama => '流山';

  @override
  String get cityNagasaki => '長崎';

  @override
  String get cityNagasakiCity => '長崎市';

  @override
  String get cityNagato => '長門';

  @override
  String get cityNagoya => '名古屋';

  @override
  String get cityNaha => '那覇';

  @override
  String get cityNakagawa => '那珂川';

  @override
  String get cityNakama => '中間';

  @override
  String get cityNakanoshima => '中之島';

  @override
  String get cityNakano => '中野';

  @override
  String get cityNakatsugawa => '中津川';

  @override
  String get cityNamba => '難波';

  @override
  String get cityNamerikawa => '滑川';

  @override
  String get cityNankoku => '南国';

  @override
  String get cityNanao => '七尾';

  @override
  String get cityNanjo => '南城';

  @override
  String get cityNantan => '南丹';

  @override
  String get cityNanto => '南砺';

  @override
  String get cityNanyo => '南陽';

  @override
  String get cityNayoro => '名寄';

  @override
  String get cityNara => '奈良';

  @override
  String get cityNaraCity => '奈良市';

  @override
  String get cityNarashino => '習志野';

  @override
  String get cityNarita => '成田';

  @override
  String get cityNaruto => '鳴門';

  @override
  String get cityNasushiobara => '那須塩原';

  @override
  String get cityNasukarasuyama => '那須烏山';

  @override
  String get cityNatori => '名取';

  @override
  String get cityNemuro => '根室';

  @override
  String get cityNeyagawa => '寝屋川';

  @override
  String get cityNichinan => '日南';

  @override
  String get cityNiigata => '新潟';

  @override
  String get cityNiigataCity => '新潟市';

  @override
  String get cityNiihama => '新居浜';

  @override
  String get cityNiimi => '新見';

  @override
  String get cityNiiza => '新座';

  @override
  String get cityNihonmatsu => '二本松';

  @override
  String get cityNikaho => 'にかほ';

  @override
  String get cityNikko => '日光';

  @override
  String get cityNirasaki => '韮崎';

  @override
  String get cityNiseko => 'ニセコ';

  @override
  String get cityNishinomiya => '西宮';

  @override
  String get cityNishinoomote => '西之表';

  @override
  String get cityNishio => '西尾';

  @override
  String get cityNishiwaki => '西脇';

  @override
  String get cityNobeoka => '延岡';

  @override
  String get cityNoboribetsu => '登別';

  @override
  String get cityNoda => '野田';

  @override
  String get cityNogata => '直方';

  @override
  String get cityNomi => '能美';

  @override
  String get cityNonoichi => '野々市';

  @override
  String get cityNoshiro => '能代';

  @override
  String get cityNumata => '沼田';

  @override
  String get cityNumazu => '沼津';

  @override
  String get cityOamishirasato => '大網白里';

  @override
  String get cityObanazawa => '尾花沢';

  @override
  String get cityObama => '小浜';

  @override
  String get cityObihiro => '帯広';

  @override
  String get cityObu => '大府';

  @override
  String get cityOda => '大田';

  @override
  String get cityOdaiba => 'お台場';

  @override
  String get cityOdate => '大館';

  @override
  String get cityOdawara => '小田原';

  @override
  String get cityOfunato => '大船渡';

  @override
  String get cityOgaki => '大垣';

  @override
  String get cityOgi => '小城';

  @override
  String get cityOgori => '小郡';

  @override
  String get cityOita => '大分';

  @override
  String get cityOitaCity => '大分市';

  @override
  String get cityOjiya => '小千谷';

  @override
  String get cityOkawa => '大川';

  @override
  String get cityOkaya => '岡谷';

  @override
  String get cityOkayama => '岡山';

  @override
  String get cityOkayamaCity => '岡山市';

  @override
  String get cityOkegawa => '桶川';

  @override
  String get cityOkinawa => '沖縄';

  @override
  String get cityOmaezaki => '御前崎';

  @override
  String get cityOmachi => '大町';

  @override
  String get cityOmihachiman => '近江八幡';

  @override
  String get cityOmiya => '大宮';

  @override
  String get cityOmuta => '大牟田';

  @override
  String get cityOmura => '大村';

  @override
  String get cityOnojo => '大野城';

  @override
  String get cityOnomichi => '尾道';

  @override
  String get cityOno => '小野';

  @override
  String get cityOsaka => '大阪';

  @override
  String get cityOsakaCity => '大阪市';

  @override
  String get cityOsakasayama => '大阪狭山';

  @override
  String get cityOsaki => '大崎';

  @override
  String get cityOshu => '奥州';

  @override
  String get cityOta => '太田';

  @override
  String get cityOtake => '大竹';

  @override
  String get cityOtaru => '小樽';

  @override
  String get cityOhtawara => '大田原';

  @override
  String get cityOtsu => '大津';

  @override
  String get cityOtsuki => '大月';

  @override
  String get cityOwariasahi => '尾張旭';

  @override
  String get cityOwase => '尾鷲';

  @override
  String get cityOyabe => '小矢部';

  @override
  String get cityOyama => '小山';

  @override
  String get cityOzu => '大洲';

  @override
  String get cityRikuzentakata => '陸前高田';

  @override
  String get cityRitto => '栗東';

  @override
  String get cityRoppongi => '六本木';

  @override
  String get cityRumoi => '留萌';

  @override
  String get cityRyugasaki => '龍ケ崎';

  @override
  String get citySabae => '鯖江';

  @override
  String get citySado => 'Sado';

  @override
  String get citySaga => '佐賀';

  @override
  String get citySagaCity => '佐賀市';

  @override
  String get citySagae => '寒河江';

  @override
  String get citySagamihara => '相模原';

  @override
  String get citySaijo => '西条';

  @override
  String get citySaiki => '佐伯';

  @override
  String get citySaikai => '西海';

  @override
  String get citySaitama => '埼玉';

  @override
  String get citySaito => '西都';

  @override
  String get citySakado => '坂戸';

  @override
  String get citySakai => '堺';

  @override
  String get citySakaide => '坂出';

  @override
  String get citySakaiminato => '境港';

  @override
  String get citySakata => '酒田';

  @override
  String get citySakura => '佐倉';

  @override
  String get citySakurai => '桜井';

  @override
  String get citySaku => '佐久';

  @override
  String get citySangenjaya => '三軒茶屋';

  @override
  String get citySanjo => '三条';

  @override
  String get citySanmu => '山武';

  @override
  String get citySano => '佐野';

  @override
  String get citySanuki => 'さぬき';

  @override
  String get citySanyoOnoda => '山陽小野田';

  @override
  String get citySasayama => '篠山';

  @override
  String get citySasebo => '佐世保';

  @override
  String get citySatsuma => 'さつま';

  @override
  String get citySatsumasendai => '薩摩川内';

  @override
  String get citySayama => '狭山';

  @override
  String get citySeiyo => '西予';

  @override
  String get citySeki => '関';

  @override
  String get citySemboku => '仙北';

  @override
  String get citySendai => '仙台';

  @override
  String get citySennan => '泉南';

  @override
  String get cityShibetsu => '士別';

  @override
  String get citySeto => '瀬戸';

  @override
  String get citySetouchi => '瀬戸内';

  @override
  String get citySettsu => '摂津';

  @override
  String get cityShibata => '新発田';

  @override
  String get cityShibukawa => '渋川';

  @override
  String get cityShiga => '滋賀';

  @override
  String get cityShiki => '志木';

  @override
  String get cityShikokuchuo => '四国中央';

  @override
  String get cityShima => '志摩';

  @override
  String get cityShimabara => '島原';

  @override
  String get cityShimada => '島田';

  @override
  String get cityShimane => '島根';

  @override
  String get cityShimanto => '四万十';

  @override
  String get cityShimoda => '下田';

  @override
  String get cityShimokitazawa => '下北沢';

  @override
  String get cityShimonoseki => '下関';

  @override
  String get cityShimotsuke => '下野';

  @override
  String get cityShimotsuma => '下妻';

  @override
  String get cityShingu => '新宮';

  @override
  String get cityShinjo => '新庄';

  @override
  String get cityShinsaibashi => '心斎橋';

  @override
  String get cityShinsho => '新城';

  @override
  String get cityShiogama => '塩竈';

  @override
  String get cityShiojiri => '塩尻';

  @override
  String get cityShijonawate => '四條畷';

  @override
  String get cityShiraoka => '白岡';

  @override
  String get cityShirakawa => '白河';

  @override
  String get cityShiroishi => '白石';

  @override
  String get cityShiroi => '白井';

  @override
  String get cityShiwa => '紫波';

  @override
  String get cityShiso => '宍粟';

  @override
  String get cityShizuoka => '静岡';

  @override
  String get cityShizuokaCity => '静岡市';

  @override
  String get cityShobara => '庄原';

  @override
  String get cityShunan => '周南';

  @override
  String get citySodegaura => '袖ケ浦';

  @override
  String get citySoja => '総社';

  @override
  String get citySoka => '草加';

  @override
  String get citySoma => '相馬';

  @override
  String get citySoo => '曽於';

  @override
  String get citySosa => '匝瑳';

  @override
  String get citySuita => '吹田';

  @override
  String get citySukagawa => '須賀川';

  @override
  String get citySukumo => '宿毛';

  @override
  String get citySumoto => '洲本';

  @override
  String get citySunagawa => '砂川';

  @override
  String get citySusaki => '須崎';

  @override
  String get citySusono => '裾野';

  @override
  String get citySusukino => 'すすきの';

  @override
  String get citySuwa => '諏訪';

  @override
  String get citySuzu => '珠洲';

  @override
  String get citySuzaka => '須坂';

  @override
  String get citySuzuka => '鈴鹿';

  @override
  String get cityTagajo => '多賀城';

  @override
  String get cityTagawa => '田川';

  @override
  String get cityTainai => '胎内';

  @override
  String get cityTajimi => '多治見';

  @override
  String get cityTakahagi => '高萩';

  @override
  String get cityTakahama => '高浜';

  @override
  String get cityTakahashi => '高梁';

  @override
  String get cityTakikawa => '滝川';

  @override
  String get cityTakaishi => '高石';

  @override
  String get cityTakamatsu => '高松';

  @override
  String get cityTakaoka => '高岡';

  @override
  String get cityTakasago => '高砂';

  @override
  String get cityTakasaki => '高崎';

  @override
  String get cityTakashima => '高島';

  @override
  String get cityTakarazuka => '宝塚';

  @override
  String get cityTakatsuki => '高槻';

  @override
  String get cityTakayama => '高山';

  @override
  String get cityTakeo => '武雄';

  @override
  String get cityTakehara => '竹原';

  @override
  String get cityTaketa => '竹田';

  @override
  String get cityTakizawa => '滝沢';

  @override
  String get cityTamana => '玉名';

  @override
  String get cityTamano => '玉野';

  @override
  String get cityTamba => '丹波';

  @override
  String get cityTambaSasayama => '丹波篠山';

  @override
  String get cityTamura => '田村';

  @override
  String get cityTanabe => '田辺';

  @override
  String get cityTatebayashi => '館林';

  @override
  String get cityTarumizu => '垂水';

  @override
  String get cityTendo => '天童';

  @override
  String get cityTenjinCentral => '天神中央';

  @override
  String get cityTenri => '天理';

  @override
  String get cityToba => '鳥羽';

  @override
  String get cityTochigi => '栃木';

  @override
  String get cityToda => '戸田';

  @override
  String get cityTogane => '東金';

  @override
  String get cityToki => '土岐';

  @override
  String get cityTomiya => '富谷';

  @override
  String get cityTokai => '東海';

  @override
  String get cityTokamachi => '十日町';

  @override
  String get cityTokoname => '常滑';

  @override
  String get cityTokorozawa => '所沢';

  @override
  String get cityTokushima => '徳島';

  @override
  String get cityTokushimaCity => '徳島市';

  @override
  String get cityTokyo => '東京';

  @override
  String get cityTomakomai => '苫小牧';

  @override
  String get cityTome => '登米';

  @override
  String get cityTomi => '東御';

  @override
  String get cityTomigusuku => '豊見城';

  @override
  String get cityTomioka => '富岡';

  @override
  String get cityTomisato => '富里';

  @override
  String get cityTonami => '砺波';

  @override
  String get cityTondabayashi => '富田林';

  @override
  String get cityTono => '遠野';

  @override
  String get cityToon => '東温';

  @override
  String get cityToride => '取手';

  @override
  String get cityTosa => '土佐';

  @override
  String get cityTosashimizu => '土佐清水';

  @override
  String get cityTosu => '鳥栖';

  @override
  String get cityTottori => '鳥取';

  @override
  String get cityTottoriCity => '鳥取市';

  @override
  String get cityTowada => '十和田';

  @override
  String get cityToyama => '富山';

  @override
  String get cityToyamaCity => '富山市';

  @override
  String get cityToyohashi => '豊橋';

  @override
  String get cityToyokawa => '豊川';

  @override
  String get cityToyonaka => '豊中';

  @override
  String get cityToyooka => '豊岡';

  @override
  String get cityToyota => '豊田';

  @override
  String get cityTsubame => '燕';

  @override
  String get cityTsuchiura => '土浦';

  @override
  String get cityTsugaru => 'つがる';

  @override
  String get cityTsukuba => 'つくば';

  @override
  String get cityTsukumi => '津久見';

  @override
  String get cityTsu => '津';

  @override
  String get cityTsuruga => '敦賀';

  @override
  String get cityTsurugashima => '鶴ヶ島';

  @override
  String get cityTsuruoka => '鶴岡';

  @override
  String get cityTsuru => '都留';

  @override
  String get cityTsushima => '津島';

  @override
  String get cityTsuyama => '津山';

  @override
  String get cityUbe => '宇部';

  @override
  String get cityUchi => '内子';

  @override
  String get cityUda => '宇陀';

  @override
  String get cityUeda => '上田';

  @override
  String get cityUenohara => '上野原';

  @override
  String get cityUeno => '上野';

  @override
  String get cityUji => '宇治';

  @override
  String get cityUkiha => 'うきは';

  @override
  String get cityUki => '宇城';

  @override
  String get cityUmeda => '梅田';

  @override
  String get cityUnnan => '雲南';

  @override
  String get cityUnzen => '雲仙';

  @override
  String get cityUonuma => '魚沼';

  @override
  String get cityUozu => '魚津';

  @override
  String get cityUrasoe => '浦添';

  @override
  String get cityUrayasu => '浦安';

  @override
  String get cityUreshino => '嬉野';

  @override
  String get cityUruma => 'うるま';

  @override
  String get cityUrawa => '浦和';

  @override
  String get cityUsa => '宇佐';

  @override
  String get cityUtashinai => '歌志内';

  @override
  String get cityUshiku => '牛久';

  @override
  String get cityUto => '宇土';

  @override
  String get cityUtsunomiya => '宇都宮';

  @override
  String get cityUwajima => '宇和島';

  @override
  String get cityWajima => '輪島';

  @override
  String get cityWakayama => '和歌山';

  @override
  String get cityWakayamaCity => '和歌山市';

  @override
  String get cityWakkanai => '稚内';

  @override
  String get cityWako => '和光';

  @override
  String get cityWarabi => '蕨';

  @override
  String get cityYabu => '養父';

  @override
  String get cityYachimat => '八街';

  @override
  String get cityYachiyo => '八千代';

  @override
  String get cityYaita => '矢板';

  @override
  String get cityYaizu => '焼津';

  @override
  String get cityYakumo => '八女';

  @override
  String get cityYamagata => '山県';

  @override
  String get cityYamagataCity => '山形市';

  @override
  String get cityYamaguchi => '山口';

  @override
  String get cityYamaguchiCity => '山口市';

  @override
  String get cityYamaga => '山鹿';

  @override
  String get cityYamanashi => '山梨';

  @override
  String get cityYamato => '大和';

  @override
  String get cityYamatokoriyama => '大和郡山';

  @override
  String get cityYamatoTakada => '大和高田';

  @override
  String get cityYanagawa => '柳川';

  @override
  String get cityYanai => '柳井';

  @override
  String get cityYao => '八尾';

  @override
  String get cityYashio => '八潮';

  @override
  String get cityYasu => '野洲';

  @override
  String get cityYasugi => '安来';

  @override
  String get cityYatomi => 'Yatomi';

  @override
  String get cityYatsushiro => '八代';

  @override
  String get cityYawata => '八幡';

  @override
  String get cityYawatahama => '八幡浜';

  @override
  String get cityYokkaichi => '四日市';

  @override
  String get cityYokohama => '横浜';

  @override
  String get cityYokosuka => '横須賀';

  @override
  String get cityYokote => '横手';

  @override
  String get cityYonago => '米子';

  @override
  String get cityYonezawa => '米沢';

  @override
  String get cityYoshikawa => '吉川';

  @override
  String get cityYoshinogawa => '吉野川';

  @override
  String get cityYotsukaido => '四街道';

  @override
  String get cityYubari => '夕張';

  @override
  String get cityYotsuya => '四ツ谷';

  @override
  String get cityYufu => '由布';

  @override
  String get cityYuki => '結城';

  @override
  String get cityYukuhashi => '行橋';

  @override
  String get cityYuzawa => '湯沢';

  @override
  String get cityZama => '座間';

  @override
  String get cityZentsuji => '善通寺';

  @override
  String get cityZushi => '逗子';
}
