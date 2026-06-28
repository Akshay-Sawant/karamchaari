import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/schedule_item_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          /// Header
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                color: Colors.blue,
                size: 22,
              ),
              const SizedBox(width: 10),
              const Text(
                "Today's Schedule",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 36,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "View Full Schedule",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// Schedule List
          Expanded(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const ScheduleItemWidget(
                  time: "09:12 AM",
                  title: "Checked In",
                  subtitle: "Attendance marked",
                  status: "Done",
                  statusColor: Colors.green,
                  dotColor: Colors.green,
                ),

                Divider(color: Colors.grey.shade200, height: 20),

                const ScheduleItemWidget(
                  time: "10:00 AM",
                  title: "Project Update",
                  subtitle: "E-commerce Dashboard",
                  status: "In Progress",
                  statusColor: Colors.blue,
                  dotColor: Colors.blue,
                ),

                Divider(color: Colors.grey.shade200, height: 20),

                const ScheduleItemWidget(
                  time: "01:00 PM",
                  title: "Team Meeting",
                  subtitle: "Daily Standup",
                  status: "Upcoming",
                  statusColor: Colors.deepPurple,
                  dotColor: Colors.deepPurple,
                ),

                Divider(color: Colors.grey.shade200, height: 20),

                const ScheduleItemWidget(
                  time: "03:00 PM",
                  title: "Report Submission",
                  subtitle: "Daily Work Report",
                  status: "Pending",
                  statusColor: Colors.orange,
                  dotColor: Colors.orange,
                ),

                Divider(color: Colors.grey.shade200, height: 20),

                const ScheduleItemWidget(
                  time: "06:00 PM",
                  title: "Checked Out",
                  subtitle: "Yet to check out",
                  status: "Pending",
                  statusColor: Colors.grey,
                  dotColor: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}