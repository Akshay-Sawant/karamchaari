import 'package:flutter/material.dart';
import 'attendance_history_widget.dart';

class AttendanceHistoryCard extends StatelessWidget {
  const AttendanceHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Attendance History",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("View All"),
              ),
            ],
          ),
          const SizedBox(height: 20),


          Expanded(
            child: ListView(children: const [
              AttendanceHistoryWidget(
                date: "20 June 2026",
                day: "Friday",
                status: "Present",
                hours: "8h 45m",
                statusColor: Colors.green,
              ),
              Divider(),
              AttendanceHistoryWidget(
                date: "19 June 2026",
                day: "Thursday",
                status: "Present",
                hours: "9h 10m",
                statusColor: Colors.green,
              ),
              Divider(),
              AttendanceHistoryWidget(
                date: "18 June 2026",
                day: "Wednesday",
                status: "Present",
                hours: "8h 30m",
                statusColor: Colors.green,
              ),
              Divider(),
              AttendanceHistoryWidget(
                date: "17 June 2026",
                day: "Tuesday",
                status: "Half Day",
                hours: "4h 15m",
                statusColor: Colors.orange,
              ),
              Divider(),
              AttendanceHistoryWidget(
                date: "16 June 2026",
                day: "Monday",
                status: "Present",
                hours: "8h 50m",
                statusColor: Colors.green,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
