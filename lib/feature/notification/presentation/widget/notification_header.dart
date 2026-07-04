import 'package:flutter/material.dart';

class NotificationHeader extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onMarkAllRead;

  const NotificationHeader({
    super.key,
    this.onBack,
    this.onMarkAllRead,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: onBack ?? () => Navigator.pop(context),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),

            const Spacer(),

            TextButton.icon(
              onPressed: onMarkAllRead ?? () {},
              icon: const Icon(
                Icons.check_circle_outline,
                color: Colors.blue,
              ),
              label: const Text(
                "Mark all as read",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 22),

        const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          "Stay updated with all your alerts and activities.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}