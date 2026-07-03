import 'package:flutter/material.dart';

import 'package:karamchaari/feature/attendance/presentation/pages/attendance_page.dart';
import 'package:karamchaari/feature/daily_update/presentation/pages/daily_update_page.dart';
import 'package:karamchaari/feature/email/presentation/pages/email_preview_page.dart';
import 'package:karamchaari/feature/setting/presentation/pages/setting_page.dart';

import 'quick_action_card.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              QuickActionCard(
                icon: Icons.fact_check,
                title: "Mark\nAttendance",
                iconColor: Colors.green,
                backgroundColor: Colors.green.withValues(alpha: 0.15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AttendancePage(),
                    ),
                  );
                },
              ),

              QuickActionCard(
                icon: Icons.edit_note,
                title: "Work\nUpdate",
                iconColor: Colors.deepPurple,
                backgroundColor: Colors.deepPurple.withValues(alpha: 0.15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DailyUpdatePage(),
                    ),
                  );
                },
              ),

              QuickActionCard(
                icon: Icons.email_outlined,
                title: "Preview\nEmail",
                iconColor: Colors.blue,
                backgroundColor: Colors.blue.withValues(alpha: 0.15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EmailPreviewPage(),
                    ),
                  );
                },
              ),

              QuickActionCard(
                icon: Icons.send,
                title: "Send\nReport",
                iconColor: Colors.orange,
                backgroundColor: Colors.orange.withValues(alpha: 0.15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EmailPreviewPage(), // change later if needed
                    ),
                  );
                },
              ),

              QuickActionCard(
                icon: Icons.settings,
                title: "Settings",
                iconColor: Colors.grey,
                backgroundColor: Colors.grey.withValues(alpha: 0.15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SettingPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}