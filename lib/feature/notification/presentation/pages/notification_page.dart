import 'package:flutter/material.dart';
import 'package:karamchaari/feature/notification/presentation/widget/notification_header.dart';
import 'package:karamchaari/feature/notification/presentation/widget/notification_section.dart';
import 'package:karamchaari/feature/notification/presentation/widget/notification_tabs.dart';
import 'package:karamchaari/feature/notification/presentation/widget/notification_tile.dart';
import 'package:karamchaari/feature/notification/presentation/widget/pagination_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F7FB),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Header
            NotificationHeader(),

            SizedBox(height: 25),

            /// Tabs
            NotificationTabs(),

            SizedBox(height: 30),

            /// Today's Section
            NotificationSection(
              title: "Today",
            ),

            NotificationTile(
              icon: Icons.person,
              iconColor: Colors.blue,
              title: "Attendance Approved",
              subtitle: "Your attendance has been approved successfully.",
              time: "10 min ago",
              unread: true,
            ),

            NotificationTile(
              icon: Icons.folder,
              iconColor: Colors.orange,
              title: "Project Assigned",
              subtitle: "You have been assigned a new project.",
              time: "1 hour ago",
            ),

            SizedBox(height: 20),

            /// Yesterday Section
            NotificationSection(
              title: "Yesterday",
            ),

            NotificationTile(
              icon: Icons.description,
              iconColor: Colors.green,
              title: "Report Submitted",
              subtitle: "Your daily report has been submitted.",
              time: "Yesterday • 5:30 PM",
            ),

            Spacer(),

            /// Pagination
            PaginationWidget(),
          ],
        ),
      ),
    );
  }
}