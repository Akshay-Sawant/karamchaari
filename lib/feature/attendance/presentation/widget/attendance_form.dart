import 'package:flutter/material.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/attendance_success_dialog.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/data_picker_widget.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/entry_time_picker.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/exit_time_picker.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/save_button.dart';

class AttendanceForm extends StatefulWidget {
  const AttendanceForm({super.key});

  @override
  State<AttendanceForm> createState() => _AttendanceFormState();
}

class _AttendanceFormState extends State<AttendanceForm> {
  DateTime? selectedDate;
  TimeOfDay? entryTime;
  TimeOfDay? exitTime;

  /// Select Date
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  /// Select Entry Time
  Future<void> _selectEntryTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: entryTime ?? TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        entryTime = picked;
      });
    }
  }

  /// Select Exit Time
  Future<void> _selectExitTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: exitTime ?? TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        exitTime = picked;
      });
    }
  }

  /// Clear Form
  void _clearForm() {
    setState(() {
      selectedDate = null;
      entryTime = null;
      exitTime = null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Attendance form cleared."),
        backgroundColor: Colors.orange,
      ),
    );
  }

  /// Save Attendance
  void _saveAttendance() {
    if (selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select attendance date."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (entryTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select Entry Time."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (exitTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select Exit Time."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const AttendanceSuccessDialog(),
    );

    setState(() {
      selectedDate = null;
      entryTime = null;
      exitTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mark Attendance",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Fill the attendance details below.",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 25),


            DataPickerWidget(
              selectedDate: selectedDate,
              onTap: _selectDate,
              onClear: () {
                setState(() {
                  selectedDate = null;
                });
              },
            ),
            const SizedBox(height: 18),


            EntryTimePicker(
              time: entryTime,
              onTap: _selectEntryTime,
              onClear: () {
                setState(() {
                  entryTime = null;
                });
              },
            ),

            const SizedBox(height: 18),

            ExitTimePicker(
              time: exitTime,
              onTap: _selectExitTime,
              onClear: () {
                setState(() {
                  exitTime = null;
                });
              },
            ),

            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: _clearForm,
                  icon: const Icon(Icons.delete_outline),
                  label: const Text("Clear"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(130, 48),
                  ),
                ),

                const SizedBox(width: 16),

                SaveButton(
                  onPressed: _saveAttendance,
                ),
              ],
            ),
          ],
        ),

    );
  }
}