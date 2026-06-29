import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/active_project_widgets.dart';
import 'package:karamchaari/feature/home/presentation/widgets/dashboard_summary_card.dart';
import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/keep_reports_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/quick_action_card.dart';
import 'package:karamchaari/feature/home/presentation/widgets/quick_actions_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/recent_activity_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/schedule_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Row(
          children: [
            SidebarWidget(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    HeaderWidget(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: DashboardSummaryCard(
                            icon: Icons.alarm,
                            title: "Attendance",
                            value: "Present",
                            subtitle: "Checked in at 09:12 AM",
                            iconColor: Colors.blue,
                            valueColor: Colors.green,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: DashboardSummaryCard(
                            icon: Icons.edit_note,
                            title: "Work Updates",
                            value: "1",
                            subtitle: "Submitted Today",
                            iconColor: Colors.purple,
                            valueColor: Colors.black,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: DashboardSummaryCard(
                            icon: Icons.folder_open_outlined,
                            title: "Projects",
                            value: "3",
                            subtitle: "Active Projects",
                            iconColor: Colors.orange,
                            valueColor: Colors.black,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: DashboardSummaryCard(
                            icon: Icons.send_outlined,
                            title: "Report Sent",
                            value: "0",
                            subtitle: "Today",
                            iconColor: Colors.teal,
                            valueColor: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DashboardSummaryCard(
                            icon: Icons.lock_clock,
                            title: "Working Hours",
                            value: "00h 48m",
                            subtitle: "Today",
                            iconColor: Colors.red,
                            valueColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(

                          child: SizedBox(
                            height: 360,
                            child: ScheduleWidget(),
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(

                          child: SizedBox(
                            height: 360,
                            child: ActiveProjectsWidget(),
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: SizedBox(
                            height: 360,
                            child: RecentActivityWidget(),
                          ),
                        ),
                      ],

                    ),

                    SizedBox(height: 20),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(

                            child: KeepReportsWidget(),
                        ),

                        SizedBox(width: 20),

                        Expanded(

                          child: QuickActionsWidget(),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
