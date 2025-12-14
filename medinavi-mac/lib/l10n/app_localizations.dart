import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('zh')
  ];

  /// Asking the user what Language would they like to start the app with
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// The text to go to the SignUp and Login screen
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// Shows the title of the language selection box when the language selection is pressed
  ///
  /// In en, this message translates to:
  /// **'Choose the Language'**
  String get chooseLanguage;

  /// Shows what language is selected in the messagebox
  ///
  /// In en, this message translates to:
  /// **'English is selected'**
  String get selectedLanguage;

  /// Text for Login
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// After logged the snackbar will show logged in as email
  ///
  /// In en, this message translates to:
  /// **'Logged in as {email}'**
  String loginAs(Object email);

  /// After signed up the snackbar will show signed up as email
  ///
  /// In en, this message translates to:
  /// **'Singed up as {email}'**
  String signedUpAs(Object email);

  /// When user is not filling email, this message will be shown
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get enterEmail;

  /// When user input invalid method, this message will show
  ///
  /// In en, this message translates to:
  /// **'Invalid email format'**
  String get invalidEmail;

  /// No description provided for @enteredPasswordMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enteredPasswordMessage;

  /// No description provided for @enteredPasswordErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Password must have at least 6 characters'**
  String get enteredPasswordErrorMessage;

  /// No description provided for @confirmPasswordMessage.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordMessage;

  /// No description provided for @confirmPasswordErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Password and Confirm Password are not matched'**
  String get confirmPasswordErrorMessage;

  /// Text for Logout
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logOut;

  /// Text for SignUp
  ///
  /// In en, this message translates to:
  /// **'SignUp'**
  String get signUp;

  /// Text for SignUp new users
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? SignUp'**
  String get newSignUp;

  /// Text for old users to login
  ///
  /// In en, this message translates to:
  /// **'Already have an account! Login'**
  String get oldLogin;

  /// Input for email address
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// Adding password for the mail
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Adding the same password for confirmation
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// Title of the endDrawer from the appbar in Login screen
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @medicalServices.
  ///
  /// In en, this message translates to:
  /// **'Medical Services'**
  String get medicalServices;

  /// No description provided for @currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get currentLocation;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @foundNearby.
  ///
  /// In en, this message translates to:
  /// **'Found {count} nearby'**
  String foundNearby(int count);

  /// No description provided for @within5km.
  ///
  /// In en, this message translates to:
  /// **'Within 5km'**
  String get within5km;

  /// No description provided for @kmAway.
  ///
  /// In en, this message translates to:
  /// **'{distance} km away'**
  String kmAway(String distance);

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @viewOnMap.
  ///
  /// In en, this message translates to:
  /// **'View on Map'**
  String get viewOnMap;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @directions.
  ///
  /// In en, this message translates to:
  /// **'Directions'**
  String get directions;

  /// No description provided for @categoryGeneralServices.
  ///
  /// In en, this message translates to:
  /// **'General Services'**
  String get categoryGeneralServices;

  /// No description provided for @categorySpecializedServices.
  ///
  /// In en, this message translates to:
  /// **'Specialized Services'**
  String get categorySpecializedServices;

  /// No description provided for @categorySurgicalServices.
  ///
  /// In en, this message translates to:
  /// **'Surgical Services'**
  String get categorySurgicalServices;

  /// No description provided for @categoryRehabilitationServices.
  ///
  /// In en, this message translates to:
  /// **'Rehabilitation Services'**
  String get categoryRehabilitationServices;

  /// No description provided for @categoryDiagnosticServices.
  ///
  /// In en, this message translates to:
  /// **'Diagnostic Services'**
  String get categoryDiagnosticServices;

  /// No description provided for @categoryEmergencyServices.
  ///
  /// In en, this message translates to:
  /// **'Emergency Services'**
  String get categoryEmergencyServices;

  /// No description provided for @categoryMaternityWomensHealth.
  ///
  /// In en, this message translates to:
  /// **'Maternity & Women\'s Health'**
  String get categoryMaternityWomensHealth;

  /// No description provided for @categoryPharmacyServices.
  ///
  /// In en, this message translates to:
  /// **'Pharmacy Services'**
  String get categoryPharmacyServices;

  /// No description provided for @categoryMentalHealthServices.
  ///
  /// In en, this message translates to:
  /// **'Mental Health Services'**
  String get categoryMentalHealthServices;

  /// No description provided for @categoryAlternativeMedicine.
  ///
  /// In en, this message translates to:
  /// **'Alternative Medicine'**
  String get categoryAlternativeMedicine;

  /// No description provided for @serviceGeneralMedicine.
  ///
  /// In en, this message translates to:
  /// **'General Medicine'**
  String get serviceGeneralMedicine;

  /// No description provided for @serviceEmergencyCare.
  ///
  /// In en, this message translates to:
  /// **'Emergency Care'**
  String get serviceEmergencyCare;

  /// No description provided for @serviceFamilyMedicine.
  ///
  /// In en, this message translates to:
  /// **'Family Medicine'**
  String get serviceFamilyMedicine;

  /// No description provided for @servicePreventativeMedicine.
  ///
  /// In en, this message translates to:
  /// **'Preventative Medicine'**
  String get servicePreventativeMedicine;

  /// No description provided for @serviceHealthCheckups.
  ///
  /// In en, this message translates to:
  /// **'Health Check-ups'**
  String get serviceHealthCheckups;

  /// No description provided for @serviceUrgentCare.
  ///
  /// In en, this message translates to:
  /// **'Urgent Care'**
  String get serviceUrgentCare;

  /// No description provided for @serviceCardiology.
  ///
  /// In en, this message translates to:
  /// **'Cardiology'**
  String get serviceCardiology;

  /// No description provided for @serviceDermatology.
  ///
  /// In en, this message translates to:
  /// **'Dermatology'**
  String get serviceDermatology;

  /// No description provided for @serviceEndocrinology.
  ///
  /// In en, this message translates to:
  /// **'Endocrinology'**
  String get serviceEndocrinology;

  /// No description provided for @serviceGastroenterology.
  ///
  /// In en, this message translates to:
  /// **'Gastroenterology'**
  String get serviceGastroenterology;

  /// No description provided for @serviceHematology.
  ///
  /// In en, this message translates to:
  /// **'Hematology'**
  String get serviceHematology;

  /// No description provided for @serviceNephrology.
  ///
  /// In en, this message translates to:
  /// **'Nephrology'**
  String get serviceNephrology;

  /// No description provided for @serviceNeurology.
  ///
  /// In en, this message translates to:
  /// **'Neurology'**
  String get serviceNeurology;

  /// No description provided for @serviceObstetricsGynecology.
  ///
  /// In en, this message translates to:
  /// **'Obstetrics and Gynecology'**
  String get serviceObstetricsGynecology;

  /// No description provided for @serviceOphthalmology.
  ///
  /// In en, this message translates to:
  /// **'Ophthalmology'**
  String get serviceOphthalmology;

  /// No description provided for @serviceOrthopedics.
  ///
  /// In en, this message translates to:
  /// **'Orthopedics'**
  String get serviceOrthopedics;

  /// No description provided for @servicePediatrics.
  ///
  /// In en, this message translates to:
  /// **'Pediatrics'**
  String get servicePediatrics;

  /// No description provided for @servicePsychiatry.
  ///
  /// In en, this message translates to:
  /// **'Psychiatry'**
  String get servicePsychiatry;

  /// No description provided for @serviceRheumatology.
  ///
  /// In en, this message translates to:
  /// **'Rheumatology'**
  String get serviceRheumatology;

  /// No description provided for @servicePulmonology.
  ///
  /// In en, this message translates to:
  /// **'Pulmonology'**
  String get servicePulmonology;

  /// No description provided for @serviceUrology.
  ///
  /// In en, this message translates to:
  /// **'Urology'**
  String get serviceUrology;

  /// No description provided for @serviceGeneralSurgery.
  ///
  /// In en, this message translates to:
  /// **'General Surgery'**
  String get serviceGeneralSurgery;

  /// No description provided for @serviceCardiacSurgery.
  ///
  /// In en, this message translates to:
  /// **'Cardiac Surgery'**
  String get serviceCardiacSurgery;

  /// No description provided for @serviceOrthopedicSurgery.
  ///
  /// In en, this message translates to:
  /// **'Orthopedic Surgery'**
  String get serviceOrthopedicSurgery;

  /// No description provided for @serviceNeurosurgery.
  ///
  /// In en, this message translates to:
  /// **'Neurosurgery'**
  String get serviceNeurosurgery;

  /// No description provided for @servicePlasticSurgery.
  ///
  /// In en, this message translates to:
  /// **'Plastic Surgery'**
  String get servicePlasticSurgery;

  /// No description provided for @servicePediatricSurgery.
  ///
  /// In en, this message translates to:
  /// **'Pediatric Surgery'**
  String get servicePediatricSurgery;

  /// No description provided for @serviceObstetricSurgery.
  ///
  /// In en, this message translates to:
  /// **'Obstetric Surgery'**
  String get serviceObstetricSurgery;

  /// No description provided for @serviceTraumaSurgery.
  ///
  /// In en, this message translates to:
  /// **'Trauma Surgery'**
  String get serviceTraumaSurgery;

  /// No description provided for @servicePhysicalTherapy.
  ///
  /// In en, this message translates to:
  /// **'Physical Therapy'**
  String get servicePhysicalTherapy;

  /// No description provided for @serviceOccupationalTherapy.
  ///
  /// In en, this message translates to:
  /// **'Occupational Therapy'**
  String get serviceOccupationalTherapy;

  /// No description provided for @serviceSpeechTherapy.
  ///
  /// In en, this message translates to:
  /// **'Speech Therapy'**
  String get serviceSpeechTherapy;

  /// No description provided for @serviceCardiacRehabilitation.
  ///
  /// In en, this message translates to:
  /// **'Cardiac Rehabilitation'**
  String get serviceCardiacRehabilitation;

  /// No description provided for @serviceNeurologicalRehabilitation.
  ///
  /// In en, this message translates to:
  /// **'Neurological Rehabilitation'**
  String get serviceNeurologicalRehabilitation;

  /// No description provided for @serviceLaboratoryTests.
  ///
  /// In en, this message translates to:
  /// **'Laboratory Tests'**
  String get serviceLaboratoryTests;

  /// No description provided for @serviceRadiology.
  ///
  /// In en, this message translates to:
  /// **'Radiology'**
  String get serviceRadiology;

  /// No description provided for @servicePathology.
  ///
  /// In en, this message translates to:
  /// **'Pathology'**
  String get servicePathology;

  /// No description provided for @serviceEndoscopy.
  ///
  /// In en, this message translates to:
  /// **'Endoscopy'**
  String get serviceEndoscopy;

  /// No description provided for @serviceECG.
  ///
  /// In en, this message translates to:
  /// **'ECG'**
  String get serviceECG;

  /// No description provided for @serviceEEG.
  ///
  /// In en, this message translates to:
  /// **'EEG'**
  String get serviceEEG;

  /// No description provided for @serviceEmergencyRoom.
  ///
  /// In en, this message translates to:
  /// **'Emergency Room (ER)'**
  String get serviceEmergencyRoom;

  /// No description provided for @serviceTraumaCare.
  ///
  /// In en, this message translates to:
  /// **'Trauma Care'**
  String get serviceTraumaCare;

  /// No description provided for @serviceICU.
  ///
  /// In en, this message translates to:
  /// **'Intensive Care Unit (ICU)'**
  String get serviceICU;

  /// No description provided for @serviceBurnUnit.
  ///
  /// In en, this message translates to:
  /// **'Burn Unit'**
  String get serviceBurnUnit;

  /// No description provided for @serviceObstetrics.
  ///
  /// In en, this message translates to:
  /// **'Obstetrics'**
  String get serviceObstetrics;

  /// No description provided for @serviceGynecology.
  ///
  /// In en, this message translates to:
  /// **'Gynecology'**
  String get serviceGynecology;

  /// No description provided for @serviceFamilyPlanning.
  ///
  /// In en, this message translates to:
  /// **'Family Planning'**
  String get serviceFamilyPlanning;

  /// No description provided for @serviceBreastHealth.
  ///
  /// In en, this message translates to:
  /// **'Breast Health'**
  String get serviceBreastHealth;

  /// No description provided for @servicePrescriptionMedications.
  ///
  /// In en, this message translates to:
  /// **'Prescription Medications'**
  String get servicePrescriptionMedications;

  /// No description provided for @serviceOTCMedications.
  ///
  /// In en, this message translates to:
  /// **'Over-the-Counter Medications'**
  String get serviceOTCMedications;

  /// No description provided for @serviceVaccinations.
  ///
  /// In en, this message translates to:
  /// **'Vaccinations'**
  String get serviceVaccinations;

  /// No description provided for @servicePharmaceuticalConsultations.
  ///
  /// In en, this message translates to:
  /// **'Pharmaceutical Consultations'**
  String get servicePharmaceuticalConsultations;

  /// No description provided for @serviceCompoundingPharmacy.
  ///
  /// In en, this message translates to:
  /// **'Compounding Pharmacy'**
  String get serviceCompoundingPharmacy;

  /// No description provided for @serviceHerbalMedicine.
  ///
  /// In en, this message translates to:
  /// **'Herbal Medicine'**
  String get serviceHerbalMedicine;

  /// No description provided for @serviceCounseling.
  ///
  /// In en, this message translates to:
  /// **'Counseling'**
  String get serviceCounseling;

  /// No description provided for @servicePsychotherapy.
  ///
  /// In en, this message translates to:
  /// **'Psychotherapy'**
  String get servicePsychotherapy;

  /// No description provided for @serviceAddictionTreatment.
  ///
  /// In en, this message translates to:
  /// **'Addiction Treatment'**
  String get serviceAddictionTreatment;

  /// No description provided for @serviceSupportGroups.
  ///
  /// In en, this message translates to:
  /// **'Support Groups'**
  String get serviceSupportGroups;

  /// No description provided for @serviceBehavioralTherapy.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Therapy'**
  String get serviceBehavioralTherapy;

  /// No description provided for @serviceAcupuncture.
  ///
  /// In en, this message translates to:
  /// **'Acupuncture'**
  String get serviceAcupuncture;

  /// No description provided for @serviceChiropracticCare.
  ///
  /// In en, this message translates to:
  /// **'Chiropractic Care'**
  String get serviceChiropracticCare;

  /// No description provided for @serviceMassageTherapy.
  ///
  /// In en, this message translates to:
  /// **'Massage Therapy'**
  String get serviceMassageTherapy;

  /// No description provided for @serviceNaturopathy.
  ///
  /// In en, this message translates to:
  /// **'Naturopathy'**
  String get serviceNaturopathy;

  /// No description provided for @serviceHomeopathy.
  ///
  /// In en, this message translates to:
  /// **'Homeopathy'**
  String get serviceHomeopathy;

  /// No description provided for @selectPrefecture.
  ///
  /// In en, this message translates to:
  /// **'Select Prefecture'**
  String get selectPrefecture;

  /// No description provided for @selectCity.
  ///
  /// In en, this message translates to:
  /// **'Select City'**
  String get selectCity;

  /// No description provided for @selectWard.
  ///
  /// In en, this message translates to:
  /// **'Select Ward'**
  String get selectWard;

  /// No description provided for @useCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Use Current Location'**
  String get useCurrentLocation;

  /// No description provided for @prefectures.
  ///
  /// In en, this message translates to:
  /// **'Prefectures'**
  String get prefectures;

  /// No description provided for @citiesDistricts.
  ///
  /// In en, this message translates to:
  /// **'Cities / Districts'**
  String get citiesDistricts;

  /// No description provided for @wardsAreas.
  ///
  /// In en, this message translates to:
  /// **'Wards / Areas'**
  String get wardsAreas;

  /// No description provided for @allOf.
  ///
  /// In en, this message translates to:
  /// **'All of {location}'**
  String allOf(String location);

  /// No description provided for @searchEntirePrefecture.
  ///
  /// In en, this message translates to:
  /// **'Search entire prefecture'**
  String get searchEntirePrefecture;

  /// No description provided for @searchEntireCity.
  ///
  /// In en, this message translates to:
  /// **'Search entire city'**
  String get searchEntireCity;

  /// No description provided for @locationError.
  ///
  /// In en, this message translates to:
  /// **'Unable to get location. Please enable location services and grant permission.'**
  String get locationError;

  /// No description provided for @selectLocationError.
  ///
  /// In en, this message translates to:
  /// **'Please select a location or enable location services.'**
  String get selectLocationError;

  /// No description provided for @noServicesFound.
  ///
  /// In en, this message translates to:
  /// **'No services found'**
  String get noServicesFound;

  /// No description provided for @tryDifferentLocation.
  ///
  /// In en, this message translates to:
  /// **'Try searching in a different location or service type.'**
  String get tryDifferentLocation;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ja': return AppLocalizationsJa();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
