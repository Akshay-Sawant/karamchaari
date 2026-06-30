import 'package:flutter/material.dart';

class ExitTimePicker extends StatelessWidget {
  final TimeOfDay? time;
  final VoidCallback onTap;

  const ExitTimePicker({
    super.key,
    required this.time,
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
              Icons.logout,
              color: Colors.red,
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Text(
                time == null
                    ? "Select Exit Time"
                    : time!.format(context),
              ),
            ),

            const Icon(Icons.access_time),
          ],
        ),
      ),
    );
  }
}