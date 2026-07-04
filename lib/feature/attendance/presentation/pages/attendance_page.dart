import 'package:flutter/material.dart';

import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

import 'package:karamchaari/feature/attendance/presentation/widget/attendance_card.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/attendance_form.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/attendance_history_card.dart';
import 'package:karamchaari/feature/attendance/presentation/widget/monthly_summary_card.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

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
        child: SafeArea(
          child: Row(
            children: [
              const SidebarWidget(
                selectedMenu: "Attendance",
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderWidget(
                        title: "Attendance",
                        subtitle:
                        "Mark your daily attendance and working hours",
                      ),

                      const SizedBox(height: 16),

                      const AttendanceCard(),

                      const SizedBox(height: 16),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              flex: 7,
                              child: AttendanceForm(),
                            ),

                            const SizedBox(width: 20),

                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  const Expanded(
                                    flex: 6,
                                    child: AttendanceHistoryCard(),
                                  ),

                                  const SizedBox(height: 20),

                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      color: Colors.white,
                                      child: const Center(
                                        child: Text("Monthly Summary"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}