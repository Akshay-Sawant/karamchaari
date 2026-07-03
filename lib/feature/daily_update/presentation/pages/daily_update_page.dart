import 'package:flutter/material.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/daily_update_card.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/help_card.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/quick_actions_card.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/today_summary_card.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/update_tips_card.dart';
import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

class DailyUpdatePage extends StatelessWidget {
  const DailyUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F7FB),
      body: SafeArea(
        child: Row(
          children: [
            /// Sidebar
            SidebarWidget(
              selectedMenu: "Daily Work Update",
            ),

            /// Main Content
            Expanded(
              child: Column(
                children: [
                  /// Header
                  HeaderWidget(
                    title: "Daily Work Update",
                    subtitle:
                        "Share your daily progress and what you work on today",
                  ),

                  /// Body
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Main Layout
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Left Section
                              Expanded(
                                flex: 7,
                                child: DailyUpdateCard(),
                              ),

                              SizedBox(width: 24),

                              /// Right Section
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    TodaySummaryCard(),
                                    SizedBox(height: 20),
                                    UpdateTipsCard(),
                                    SizedBox(height: 20),
                                    QuickActionsCard(),
                                    SizedBox(height: 20),
                                    HelpCard(),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
