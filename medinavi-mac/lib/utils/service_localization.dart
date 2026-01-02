import '../l10n/app_localizations.dart';

/// Maps service names to their localization key names
String getLocalizedServiceName(String serviceName, AppLocalizations localizations) {
  final localizationMap = {
    // Core 11 Medical Services
    'Internal Medicine': localizations.serviceGeneralMedicine,
    'Surgery': localizations.serviceGeneralSurgery,
    'Orthopedics': localizations.serviceOrthopedics,
    'Dermatology': localizations.serviceDermatology,
    'Ophthalmology': localizations.serviceOphthalmology,
    'Pediatrics': localizations.servicePediatrics,
    'OG/GYN': localizations.serviceObstetricsGynecology,
    'Psychiatry': localizations.servicePsychiatry,
  };
  
  return localizationMap[serviceName] ?? serviceName;
}
