import 'package:flutter/material.dart';

class TodaySchedulePage extends StatelessWidget {
  const TodaySchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Today's Schedule",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Overview of your today's activities",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            const Row(
              children: [

                Expanded(
                  child: _TopCard(
                    title: "Total Activities",
                    value: "5",
                    color: Colors.blue,
                    icon: Icons.calendar_today,
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: _TopCard(
                    title: "Completed",
                    value: "1",
                    color: Colors.green,
                    icon: Icons.check_circle,
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: _TopCard(
                    title: "In Progress",
                    value: "1",
                    color: Colors.blue,
                    icon: Icons.access_time,
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: _TopCard(
                    title: "Pending",
                    value: "3",
                    color: Colors.orange,
                    icon: Icons.schedule,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView(
                children: const [

                  ActivityTile(
                    time: "09:12 AM",
                    title: "Checked In",
                    subtitle: "Attendance marked",
                    status: "Done",
                    statusColor: Colors.green,
                    icon: Icons.check_circle,
                  ),

                  ActivityTile(
                    time: "10:00 AM",
                    title: "Project Update",
                    subtitle: "E-commerce Dashboard",
                    status: "In Progress",
                    statusColor: Colors.blue,
                    icon: Icons.description,
                  ),

                  ActivityTile(
                    time: "01:00 PM",
                    title: "Team Meeting",
                    subtitle: "Daily Standup",
                    status: "Upcoming",
                    statusColor: Colors.deepPurple,
                    icon: Icons.groups,
                  ),

                  ActivityTile(
                    time: "03:00 PM",
                    title: "Report Submission",
                    subtitle: "Daily Work Report",
                    status: "Pending",
                    statusColor: Colors.orange,
                    icon: Icons.assignment,
                  ),

                  ActivityTile(
                    time: "06:00 PM",
                    title: "Checked Out",
                    subtitle: "Yet to Check Out",
                    status: "Pending",
                    statusColor: Colors.grey,
                    icon: Icons.logout,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TopCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _TopCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 25,
            backgroundColor: color.withOpacity(.15),
            child: Icon(icon,color: color),
          ),

          const SizedBox(width: 15),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: const TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 5),

              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final String time;
  final String title;
  final String subtitle;
  final String status;
  final Color statusColor;
  final IconData icon;

  const ActivityTile({
    super.key,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.statusColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: statusColor.withOpacity(.15),
          child: Icon(icon,color: statusColor),
        ),
        title: Text(title),
        subtitle: Text("$time\n$subtitle"),
        isThreeLine: true,
        trailing: Chip(
          label: Text(
            status,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: statusColor,
        ),
      ),
    );
  }
}