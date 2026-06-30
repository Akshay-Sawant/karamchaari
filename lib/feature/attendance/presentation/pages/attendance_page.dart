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
        child: const Row(
          children: [
            SidebarWidget(
              selectedMenu: "Attendance",
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [

                    HeaderWidget(),

                    SizedBox(height: 20),

                    AttendanceCard(),

                    SizedBox(height: 20),


                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Expanded(
                            flex: 7,
                            child: AttendanceForm(),
                          ),

                          SizedBox(width: 20),

                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [


                                Expanded(
                                  flex: 6,
                                  child: AttendanceHistoryCard(),
                                ),

                                SizedBox(height: 20),

                                Expanded(
                                  flex: 4,
                                  child: MonthlySummaryCard(),
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
    );
  }
}