import 'package:flutter/material.dart';
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
  DateTime selectedDate = DateTime.now();

  TimeOfDay? entryTime;
  TimeOfDay? exitTime;

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsetsGeometry.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mark Attendance",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Fill the attendance details below.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 30),

            DataPickerWidget(
              selectedDate: selectedDate,
              onTap: _selectDate,
            ),

            const SizedBox(height: 20),

            EntryTimePicker(
              time: entryTime,
              onTap: _selectEntryTime,
            ),

            const SizedBox(height: 20),

            ExitTimePicker(
              time: exitTime,
              onTap: _selectExitTime,
            ),

            const SizedBox(height: 35),

            Align(
              alignment: Alignment.centerRight,
              child: SaveButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Attendance Saved Successfully"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}