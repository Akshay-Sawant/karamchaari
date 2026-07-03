import 'package:flutter/material.dart';

class ExitTimePicker extends StatelessWidget {
  final TimeOfDay? time;
  final VoidCallback onTap;
  final VoidCallback? onClear;

  const ExitTimePicker({
    super.key,
    required this.time,
    required this.onTap,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Exit Time",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 8),

        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
              ),
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
                    style: TextStyle(
                      fontSize: 15,
                      color: time == null
                          ? Colors.grey
                          : Colors.black,
                    ),
                  ),
                ),

                /// Clear Button
                if (time != null)
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 20,
                    ),
                    onPressed: onClear,
                  ),

                const Icon(
                  Icons.access_time,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}