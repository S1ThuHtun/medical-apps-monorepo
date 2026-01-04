import 'package:flutter/material.dart';
import 'package:medinavi_mac/l10n/app_localizations.dart';
import '../../models/reminder.dart';
import '../../widgets/reminder_card.dart';
import '../../services/notification_service.dart';
import 'add_reminder_screen.dart';
import 'notification_screen.dart';

class MedicineReminderScreen
    extends StatefulWidget {
  const MedicineReminderScreen(
      {Key? key})
      : super(key: key);

  @override
  State<MedicineReminderScreen>
      createState() =>
          _MedicineReminderScreenState();
}

class _MedicineReminderScreenState
    extends State<
        MedicineReminderScreen> {
  List<Reminder> reminders = [];

  List<String> _buildDoseLabels(
      AppLocalizations l10n,
      int count) {
    switch (count) {
      case 2:
        return [
          l10n.reminderDoseMorning,
          l10n.reminderDoseEvening
        ];
      case 3:
        return [
          l10n.reminderDoseMorning,
          l10n.reminderDoseNoon,
          l10n.reminderDoseEvening,
        ];
      case 4:
        return [
          l10n.reminderDoseMorning,
          l10n.reminderDoseNoon,
          l10n.reminderDoseEvening,
          l10n.reminderDoseNight,
        ];
      default:
        return List<String>.filled(
            count, '');
    }
  }

  void _addReminder(
      Reminder reminder) async {
    setState(() {
      reminders.add(reminder);
    });

    final l10n =
        AppLocalizations.of(context)!;
    final doseLabels = _buildDoseLabels(
        l10n,
        reminder.doseTimes.length);
    final notificationBodies =
        List<String>.generate(
      reminder.doseTimes.length,
      (index) =>
          l10n.reminderNotificationBody(
              index + 1),
    );

    await NotificationService()
        .scheduleReminderDoses(
      reminderId: reminder.id,
      medicineName:
          reminder.medicineName,
      doseTimes: reminder.doseTimes,
      repeatType: reminder.repeatType,
      notificationChannelName: l10n
          .reminderNotificationChannelName,
      notificationChannelDescription: l10n
          .reminderNotificationChannelDescription,
      doseLabels: doseLabels,
      notificationBodies:
          notificationBodies,
    );

    if (mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(l10n
              .reminderAddedMessage),
          duration: const Duration(
              seconds: 2),
          backgroundColor:
              const Color(0xFF4CAF50),
        ),
      );
    }
  }

  void _updateReminder(
      Reminder updatedReminder) async {
    final index = reminders.indexWhere(
        (r) =>
            r.id == updatedReminder.id);
    if (index != -1) {
      final oldReminder =
          reminders[index];

      setState(() {
        reminders[index] =
            updatedReminder;
      });

      await NotificationService()
          .cancelReminderNotifications(
        oldReminder.id,
        oldReminder.dosesPerDay,
      );

      final l10n =
          AppLocalizations.of(context)!;
      final doseLabels =
          _buildDoseLabels(
              l10n,
              updatedReminder
                  .doseTimes.length);
      final notificationBodies =
          List<String>.generate(
        updatedReminder
            .doseTimes.length,
        (index) => l10n
            .reminderNotificationBody(
                index + 1),
      );

      await NotificationService()
          .scheduleReminderDoses(
        reminderId: updatedReminder.id,
        medicineName: updatedReminder
            .medicineName,
        doseTimes:
            updatedReminder.doseTimes,
        repeatType:
            updatedReminder.repeatType,
        notificationChannelName: l10n
            .reminderNotificationChannelName,
        notificationChannelDescription:
            l10n.reminderNotificationChannelDescription,
        doseLabels: doseLabels,
        notificationBodies:
            notificationBodies,
      );

      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(
          SnackBar(
            content: Text(l10n
                .reminderUpdatedMessage),
            duration:
                Duration(seconds: 2),
            backgroundColor:
                Color(0xFF4CAF50),
          ),
        );
      }
    }
  }

  void _deleteReminder(
      String id) async {
    final reminder = reminders
        .firstWhere((r) => r.id == id);

    setState(() {
      reminders.removeWhere(
          (reminder) =>
              reminder.id == id);
    });

    await NotificationService()
        .cancelReminderNotifications(
      id,
      reminder.dosesPerDay,
    );
  }

  void _toggleReminder(String id) {
    setState(() {
      final index = reminders
          .indexWhere((reminder) =>
              reminder.id == id);
      if (index != -1) {
        reminders[index].isEnabled =
            !reminders[index].isEnabled;
      }
    });
  }

  void _editReminder(
      Reminder reminder) async {
    final updatedReminder =
        await showModalBottomSheet<
            Reminder>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor:
          Colors.transparent,
      builder: (context) =>
          AddReminderScreen(
              existingReminder:
                  reminder),
    );
    if (updatedReminder != null) {
      _updateReminder(updatedReminder);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n =
        AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.medicineReminderTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor:
            const Color(0xFF2E7D32),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE8F5E9),
              Color(0xFFC8E6C9)
            ],
          ),
        ),
        child: reminders.isEmpty
            ? _buildEmptyState()
            : _buildReminderList(),
      ),
      floatingActionButton:
          FloatingActionButton(
        onPressed: () async {
          final newReminder =
              await showModalBottomSheet<
                  Reminder>(
            context: context,
            useRootNavigator: true,
            isScrollControlled: true,
            backgroundColor:
                Colors.transparent,
            builder: (context) =>
                const AddReminderScreen(),
          );
          if (newReminder != null) {
            _addReminder(newReminder);
          }
        },
        backgroundColor:
            const Color(0xFF2E7D32),
        child: const Icon(Icons.add,
            size: 32,
            color: Colors.white),
      ),
    );
  }

  Widget _buildEmptyState() {
    final l10n =
        AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.all(
                    24),
            decoration: BoxDecoration(
              gradient:
                  const LinearGradient(
                colors: [
                  Color(0xFFFF6B9D),
                  Color(0xFFFF9A56)
                ],
                begin:
                    Alignment.topLeft,
                end: Alignment
                    .bottomRight,
              ),
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),
            child: const Icon(
                Icons.medication,
                size: 60,
                color: Colors.white),
          ),
          const SizedBox(height: 24),
          Text(
            l10n.reminderEmptyTitle,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF66BB6A),
              fontWeight:
                  FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.reminderEmptySubtitle,
            style: TextStyle(
                fontSize: 14,
                color:
                    Color(0xFF81C784)),
          ),
        ],
      ),
    );
  }

  Widget _buildReminderList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: reminders.length,
      itemBuilder: (context, index) {
        return ReminderCard(
          reminder: reminders[index],
          onToggle: () =>
              _toggleReminder(
                  reminders[index].id),
          onDelete: () =>
              _deleteReminder(
                  reminders[index].id),
          onEdit: () => _editReminder(
              reminders[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NotificationScreen(
                  reminder:
                      reminders[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
