import 'package:flutter/material.dart';

class NotificationTabs extends StatelessWidget {
  const NotificationTabs({super.key});

  Widget buildTab(String title, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildTab("All", true),
        const SizedBox(width: 10),
        buildTab("Unread", false),
        const SizedBox(width: 10),
        buildTab("Today", false),
        const SizedBox(width: 10),
        buildTab("This Week", false),
      ],
    );
  }
}