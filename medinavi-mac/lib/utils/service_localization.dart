import '../l10n/app_localizations.dart';

/// Maps service names to their localization key names
String getLocalizedServiceName(String serviceName, AppLocalizations localizations) {
  final localizationMap = {
    // Categories
    'General Services': localizations.categoryGeneralServices,
    'Specialized Services': localizations.categorySpecializedServices,
    'Surgical Services': localizations.categorySurgicalServices,
    'Rehabilitation Services': localizations.categoryRehabilitationServices,
    'Diagnostic Services': localizations.categoryDiagnosticServices,
    'Emergency Services': localizations.categoryEmergencyServices,
    'Maternity and Women\'s Health': localizations.categoryMaternityWomensHealth,
    'Pharmacy Services': localizations.categoryPharmacyServices,
    'Mental Health Services': localizations.categoryMentalHealthServices,
    'Alternative Medicine': localizations.categoryAlternativeMedicine,
    
    // General Services
    'General Medicine': localizations.serviceGeneralMedicine,
    'Emergency Care': localizations.serviceEmergencyCare,
    'Family Medicine': localizations.serviceFamilyMedicine,
    'Preventative Medicine': localizations.servicePreventativeMedicine,
    'Health Check-ups': localizations.serviceHealthCheckups,
    'Urgent Care': localizations.serviceUrgentCare,
    
    // Specialized Services
    'Cardiology': localizations.serviceCardiology,
    'Dermatology': localizations.serviceDermatology,
    'Endocrinology': localizations.serviceEndocrinology,
    'Gastroenterology': localizations.serviceGastroenterology,
    'Hematology': localizations.serviceHematology,
    'Nephrology': localizations.serviceNephrology,
    'Neurology': localizations.serviceNeurology,
    'Obstetrics and Gynecology': localizations.serviceObstetricsGynecology,
    'Ophthalmology': localizations.serviceOphthalmology,
    'Orthopedics': localizations.serviceOrthopedics,
    'Pediatrics': localizations.servicePediatrics,
    'Psychiatry': localizations.servicePsychiatry,
    'Rheumatology': localizations.serviceRheumatology,
    'Pulmonology': localizations.servicePulmonology,
    'Urology': localizations.serviceUrology,
    
    // Surgical Services
    'General Surgery': localizations.serviceGeneralSurgery,
    'Cardiac Surgery': localizations.serviceCardiacSurgery,
    'Orthopedic Surgery': localizations.serviceOrthopedicSurgery,
    'Neurosurgery': localizations.serviceNeurosurgery,
    'Plastic Surgery': localizations.servicePlasticSurgery,
    'Pediatric Surgery': localizations.servicePediatricSurgery,
    'Obstetric Surgery': localizations.serviceObstetricSurgery,
    'Trauma Surgery': localizations.serviceTraumaSurgery,
    
    // Rehabilitation Services
    'Physical Therapy': localizations.servicePhysicalTherapy,
    'Occupational Therapy': localizations.serviceOccupationalTherapy,
    'Speech Therapy': localizations.serviceSpeechTherapy,
    'Cardiac Rehabilitation': localizations.serviceCardiacRehabilitation,
    'Neurological Rehabilitation': localizations.serviceNeurologicalRehabilitation,
    
    // Diagnostic Services
    'Laboratory Tests': localizations.serviceLaboratoryTests,
    'Radiology': localizations.serviceRadiology,
    'Pathology': localizations.servicePathology,
    'Endoscopy': localizations.serviceEndoscopy,
    'ECG': localizations.serviceECG,
    'EEG': localizations.serviceEEG,
    
    // Emergency Services
    'Emergency Room (ER)': localizations.serviceEmergencyRoom,
    'Trauma Care': localizations.serviceTraumaCare,
    'Intensive Care Unit (ICU)': localizations.serviceICU,
    'Burn Unit': localizations.serviceBurnUnit,
    
    // Maternity and Women's Health
    'Obstetrics': localizations.serviceObstetrics,
    'Gynecology': localizations.serviceGynecology,
    'Family Planning': localizations.serviceFamilyPlanning,
    'Breast Health': localizations.serviceBreastHealth,
    
    // Pharmacy Services
    'Prescription Medications': localizations.servicePrescriptionMedications,
    'Over-the-Counter Medications': localizations.serviceOTCMedications,
    'Vaccinations': localizations.serviceVaccinations,
    'Pharmaceutical Consultations': localizations.servicePharmaceuticalConsultations,
    'Compounding Pharmacy': localizations.serviceCompoundingPharmacy,
    'Herbal Medicine': localizations.serviceHerbalMedicine,
    
    // Mental Health Services
    'Counseling': localizations.serviceCounseling,
    'Psychotherapy': localizations.servicePsychotherapy,
    'Addiction Treatment': localizations.serviceAddictionTreatment,
    'Support Groups': localizations.serviceSupportGroups,
    'Behavioral Therapy': localizations.serviceBehavioralTherapy,
    
    // Alternative Medicine
    'Acupuncture': localizations.serviceAcupuncture,
    'Chiropractic Care': localizations.serviceChiropracticCare,
    'Massage Therapy': localizations.serviceMassageTherapy,
    'Naturopathy': localizations.serviceNaturopathy,
    'Homeopathy': localizations.serviceHomeopathy,
  };
  
  return localizationMap[serviceName] ?? serviceName;
}
