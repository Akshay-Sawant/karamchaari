import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/search_bar_widget.dart';
import 'package:karamchaari/feature/notification/presentation/pages/notification_page.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  /// Optional breadcrumb.
  /// Example: ["Dashboard", "Settings"]
  final List<String>? breadcrumbs;

  const HeaderWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.breadcrumbs,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final date = "${now.day}/${now.month}/${now.year}";
    final weekday = _getWeekDay(now.weekday);

    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          /// Left Side
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1E293B),
                  ),
                ),

                const SizedBox(height: 6),

                /// Breadcrumb OR Subtitle
                if (breadcrumbs != null && breadcrumbs!.isNotEmpty)
                  Row(
                    children: _buildBreadcrumb(),
                  )
                else
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(width: 20),

          /// Search Bar
          const Expanded(
            flex: 2,
            child: SearchBarWidget(),
          ),

          const SizedBox(width: 20),

          /// Notification
          /// Notification
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
            ),
          ),

          const SizedBox(width: 20),

          /// Date
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    size: 18,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    date,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Text(
                  weekday,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBreadcrumb() {
    List<Widget> items = [];

    for (int i = 0; i < breadcrumbs!.length; i++) {
      items.add(
        Text(
          breadcrumbs![i],
          style: TextStyle(
            fontSize: 14,
            fontWeight: i == breadcrumbs!.length - 1
                ? FontWeight.w600
                : FontWeight.w500,
            color: i == breadcrumbs!.length - 1
                ? Colors.blue
                : Colors.grey,
          ),
        ),
      );

      if (i != breadcrumbs!.length - 1) {
        items.add(
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Icon(
              Icons.chevron_right,
              size: 16,
              color: Colors.grey,
            ),
          ),
        );
      }
    }

    return items;
  }

  String _getWeekDay(int day) {
    switch (day) {
      case DateTime.monday:
        return "Monday";
      case DateTime.tuesday:
        return "Tuesday";
      case DateTime.wednesday:
        return "Wednesday";
      case DateTime.thursday:
        return "Thursday";
      case DateTime.friday:
        return "Friday";
      case DateTime.saturday:
        return "Saturday";
      case DateTime.sunday:
        return "Sunday";
      default:
        return "";
    }
  }
}