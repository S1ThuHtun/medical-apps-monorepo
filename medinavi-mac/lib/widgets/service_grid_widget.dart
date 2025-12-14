import 'package:flutter/material.dart';
import '../data/medical_services_data.dart';
import '../l10n/app_localizations.dart';
import '../utils/service_localization.dart';

class ServiceGridWidget extends StatelessWidget {
  final String selectedCategory;
  final String? selectedService;
  final Function(String) onServiceSelected;

  const ServiceGridWidget({
    super.key,
    required this.selectedCategory,
    required this.selectedService,
    required this.onServiceSelected,
  });

  @override
  Widget build(BuildContext context) {
    final services = medicalServicesData['services'][selectedCategory] as List;

    return SizedBox(
      height: 160,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.5,
          mainAxisExtent: 140,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          final isSelected = service == selectedService;

          return GestureDetector(
            onTap: () => onServiceSelected(service),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF2E7D32).withOpacity(0.1)
                    : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF2E7D32)
                      : Colors.grey[200]!,
                  width: isSelected ? 2 : 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Center(
                          child: Icon(
                            _getServiceIcon(service),
                            color: isSelected
                                ? const Color(0xFF2E7D32)
                                : Colors.grey[700],
                            size: 50,
                          ),
                        ),
                        Flexible(
                          child: Center(
                            child: Text(
                              getLocalizedServiceName(service, AppLocalizations.of(context)!),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: isSelected
                                    ? const Color(0xFF2E7D32)
                                    : Colors.black87,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isSelected)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Color(0xFF2E7D32),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  IconData _getServiceIcon(String service) {
    if (service.contains('Surgery')) return Icons.medical_services;
    if (service.contains('Emergency')) return Icons.emergency;
    if (service.contains('Therapy')) return Icons.self_improvement;
    if (service.contains('Laboratory') || service.contains('Radiology')) {
      return Icons.biotech;
    }
    if (service.contains('Pharmacy')) return Icons.local_pharmacy;
    if (service.contains('Mental') || service.contains('Psychiatry')) {
      return Icons.psychology;
    }
    if (service.contains('Cardiology')) return Icons.favorite;
    if (service.contains('Pediatrics')) return Icons.child_care;
    return Icons.medical_services;
  }
}
