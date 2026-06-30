import 'package:flutter/material.dart';

class DataPickerWidget extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onTap;

  const DataPickerWidget({
    super.key,
    required this.selectedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.calendar_month_outlined,
              color: Colors.blue,
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Text(
                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),

            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}