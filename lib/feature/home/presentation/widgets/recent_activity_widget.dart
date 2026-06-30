import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/recent_activity_card.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.history,
                color: Colors.blue,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  "Recent Activity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    minimumSize: const Size(0, 32),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    "View All",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RecentActivityCard(
                    icon: Icons.check_circle,
                    iconColor: Colors.green,
                    title: "Attendance Marked",
                    time: "Today . 09:12 AM",
                  ),
                  RecentActivityCard(
                    icon: Icons.description,
                    iconColor: Colors.blue,
                    title: "Daily Report Submitted",
                    time: "Today . 11:30 AM",
                  ),
                  RecentActivityCard(
                    icon: Icons.folder_open,
                    iconColor: Colors.deepPurple,
                    title: "Project Updated",
                    time: "Yesterday . 5:45 AM",
                  ),
                  RecentActivityCard(
                    icon: Icons.person,
                    iconColor: Colors.orange,
                    title: "Profile updated",
                    time: "2 Days Ago",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
