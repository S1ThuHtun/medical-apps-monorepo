// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get getStarted => 'Get Started';

  @override
  String get chooseLanguage => 'Choose the Language';

  @override
  String get selectedLanguage => 'English is selected';

  @override
  String get login => 'Login';

  @override
  String loginAs(Object email) {
    return 'Logged in as $email';
  }

  @override
  String signedUpAs(Object email) {
    return 'Singed up as $email';
  }

  @override
  String get enterEmail => 'Please enter your email';

  @override
  String get invalidEmail => 'Invalid email format';

  @override
  String get enteredPasswordMessage => 'Enter Password';

  @override
  String get enteredPasswordErrorMessage => 'Password must have at least 6 characters';

  @override
  String get confirmPasswordMessage => 'Confirm Password';

  @override
  String get confirmPasswordErrorMessage => 'Password and Confirm Password are not matched';

  @override
  String get logOut => 'Logout';

  @override
  String get signUp => 'SignUp';

  @override
  String get newSignUp => 'Don\'t have an account? SignUp';

  @override
  String get oldLogin => 'Already have an account! Login';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get settings => 'Settings';

  @override
  String get medicalServices => 'Medical Services';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get language => 'Language';

  @override
  String get logout => 'Logout';

  @override
  String foundNearby(int count) {
    return 'Found $count nearby';
  }

  @override
  String get within5km => 'Within 5km';

  @override
  String kmAway(String distance) {
    return '$distance km away';
  }

  @override
  String get open => 'Open';

  @override
  String get closed => 'Closed';

  @override
  String get viewOnMap => 'View on Map';

  @override
  String get call => 'Call';

  @override
  String get directions => 'Directions';

  @override
  String get categoryGeneralServices => 'General Services';

  @override
  String get categorySpecializedServices => 'Specialized Services';

  @override
  String get categorySurgicalServices => 'Surgical Services';

  @override
  String get categoryRehabilitationServices => 'Rehabilitation Services';

  @override
  String get categoryDiagnosticServices => 'Diagnostic Services';

  @override
  String get categoryEmergencyServices => 'Emergency Services';

  @override
  String get categoryMaternityWomensHealth => 'Maternity & Women\'s Health';

  @override
  String get categoryPharmacyServices => 'Pharmacy Services';

  @override
  String get categoryMentalHealthServices => 'Mental Health Services';

  @override
  String get categoryAlternativeMedicine => 'Alternative Medicine';

  @override
  String get serviceGeneralMedicine => 'General Medicine';

  @override
  String get serviceEmergencyCare => 'Emergency Care';

  @override
  String get serviceFamilyMedicine => 'Family Medicine';

  @override
  String get servicePreventativeMedicine => 'Preventative Medicine';

  @override
  String get serviceHealthCheckups => 'Health Check-ups';

  @override
  String get serviceUrgentCare => 'Urgent Care';

  @override
  String get serviceCardiology => 'Cardiology';

  @override
  String get serviceDermatology => 'Dermatology';

  @override
  String get serviceEndocrinology => 'Endocrinology';

  @override
  String get serviceGastroenterology => 'Gastroenterology';

  @override
  String get serviceHematology => 'Hematology';

  @override
  String get serviceNephrology => 'Nephrology';

  @override
  String get serviceNeurology => 'Neurology';

  @override
  String get serviceObstetricsGynecology => 'Obstetrics and Gynecology';

  @override
  String get serviceOphthalmology => 'Ophthalmology';

  @override
  String get serviceOrthopedics => 'Orthopedics';

  @override
  String get servicePediatrics => 'Pediatrics';

  @override
  String get servicePsychiatry => 'Psychiatry';

  @override
  String get serviceRheumatology => 'Rheumatology';

  @override
  String get servicePulmonology => 'Pulmonology';

  @override
  String get serviceUrology => 'Urology';

  @override
  String get serviceGeneralSurgery => 'General Surgery';

  @override
  String get serviceCardiacSurgery => 'Cardiac Surgery';

  @override
  String get serviceOrthopedicSurgery => 'Orthopedic Surgery';

  @override
  String get serviceNeurosurgery => 'Neurosurgery';

  @override
  String get servicePlasticSurgery => 'Plastic Surgery';

  @override
  String get servicePediatricSurgery => 'Pediatric Surgery';

  @override
  String get serviceObstetricSurgery => 'Obstetric Surgery';

  @override
  String get serviceTraumaSurgery => 'Trauma Surgery';

  @override
  String get servicePhysicalTherapy => 'Physical Therapy';

  @override
  String get serviceOccupationalTherapy => 'Occupational Therapy';

  @override
  String get serviceSpeechTherapy => 'Speech Therapy';

  @override
  String get serviceCardiacRehabilitation => 'Cardiac Rehabilitation';

  @override
  String get serviceNeurologicalRehabilitation => 'Neurological Rehabilitation';

  @override
  String get serviceLaboratoryTests => 'Laboratory Tests';

  @override
  String get serviceRadiology => 'Radiology';

  @override
  String get servicePathology => 'Pathology';

  @override
  String get serviceEndoscopy => 'Endoscopy';

  @override
  String get serviceECG => 'ECG';

  @override
  String get serviceEEG => 'EEG';

  @override
  String get serviceEmergencyRoom => 'Emergency Room (ER)';

  @override
  String get serviceTraumaCare => 'Trauma Care';

  @override
  String get serviceICU => 'Intensive Care Unit (ICU)';

  @override
  String get serviceBurnUnit => 'Burn Unit';

  @override
  String get serviceObstetrics => 'Obstetrics';

  @override
  String get serviceGynecology => 'Gynecology';

  @override
  String get serviceFamilyPlanning => 'Family Planning';

  @override
  String get serviceBreastHealth => 'Breast Health';

  @override
  String get servicePrescriptionMedications => 'Prescription Medications';

  @override
  String get serviceOTCMedications => 'Over-the-Counter Medications';

  @override
  String get serviceVaccinations => 'Vaccinations';

  @override
  String get servicePharmaceuticalConsultations => 'Pharmaceutical Consultations';

  @override
  String get serviceCompoundingPharmacy => 'Compounding Pharmacy';

  @override
  String get serviceHerbalMedicine => 'Herbal Medicine';

  @override
  String get serviceCounseling => 'Counseling';

  @override
  String get servicePsychotherapy => 'Psychotherapy';

  @override
  String get serviceAddictionTreatment => 'Addiction Treatment';

  @override
  String get serviceSupportGroups => 'Support Groups';

  @override
  String get serviceBehavioralTherapy => 'Behavioral Therapy';

  @override
  String get serviceAcupuncture => 'Acupuncture';

  @override
  String get serviceChiropracticCare => 'Chiropractic Care';

  @override
  String get serviceMassageTherapy => 'Massage Therapy';

  @override
  String get serviceNaturopathy => 'Naturopathy';

  @override
  String get serviceHomeopathy => 'Homeopathy';

  @override
  String get selectPrefecture => 'Select Prefecture';

  @override
  String get selectCity => 'Select City';

  @override
  String get selectWard => 'Select Ward';

  @override
  String get useCurrentLocation => 'Use Current Location';

  @override
  String get prefectures => 'Prefectures';

  @override
  String get citiesDistricts => 'Cities / Districts';

  @override
  String get wardsAreas => 'Wards / Areas';

  @override
  String allOf(String location) {
    return 'All of $location';
  }

  @override
  String get searchEntirePrefecture => 'Search entire prefecture';

  @override
  String get searchEntireCity => 'Search entire city';

  @override
  String get locationError => 'Unable to get location. Please enable location services and grant permission.';

  @override
  String get selectLocationError => 'Please select a location or enable location services.';

  @override
  String get noServicesFound => 'No services found';

  @override
  String get tryDifferentLocation => 'Try searching in a different location or service type.';

  @override
  String get retry => 'Retry';
}
