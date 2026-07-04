import 'package:flutter/material.dart';
import 'package:karamchaari/feature/notification/presentation/pages/notification_page.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.notifications_none,
        size: 28,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const NotificationPage(),
          ),
        );
      },
    );
  }
}