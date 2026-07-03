import 'package:flutter/material.dart';

import 'package:karamchaari/feature/attendance/presentation/pages/attendance_page.dart';
import 'package:karamchaari/feature/daily_update/presentation/pages/daily_update_page.dart';
import 'package:karamchaari/feature/email/presentation/pages/email_preview_page.dart';
import 'package:karamchaari/feature/setting/presentation/pages/setting_page.dart';

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
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: _actionCard(
                  context,
                  icon: Icons.fact_check,
                  title: "Mark\nAttendance",
                  color: Colors.green,
                  page: const AttendancePage(),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: _actionCard(
                  context,
                  icon: Icons.edit_note,
                  title: "Add Work\nUpdate",
                  color: Colors.deepPurple,
                  page: const DailyUpdatePage(),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: _actionCard(
                  context,
                  icon: Icons.email_outlined,
                  title: "Preview\nEmail",
                  color: Colors.blue,
                  page: const EmailPreviewPage(),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: _actionCard(
                  context,
                  icon: Icons.send,
                  title: "Send\nReport",
                  color: Colors.orange,
                  page: const EmailPreviewPage(),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: _actionCard(
                  context,
                  icon: Icons.settings,
                  title: "Go To\nSetting",
                  color: Colors.grey,
                  page: const SettingPage(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _actionCard(
      BuildContext context, {
        required IconData icon,
        required String title,
        required Color color,
        required Widget page,
      }) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => page,
          ),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 140,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: color.withValues(alpha: .12),
              child: Icon(
                icon,
                color: color,
                size: 20,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}