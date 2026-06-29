import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/search_bar_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final date = "${now.day} ${now.month} ${now.year}";
    final weekday = _getWeekDay(now.weekday);

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
          children: [  const Expanded(
            flex: 3,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good morning,Akshay!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 5,),
              Text(
                "Here's what's happening with your work today.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
                    ),
          ),
        const SizedBox(width: 20,),

        const SearchBarWidget(),

        const SizedBox(width: 20,),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 18),
                const SizedBox(width: 5),
                Text(date),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              weekday,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        )
      ]),
    );
  }

  String _getWeekDay(int day) {
    switch (day) {
      case 1:
        return "Monday";
      case 2:
        return "Tuesday";
      case 3:
        return "Wednesday";
      case 4:
        return "Thursday";
      case 5:
        return "Friday";
      case 6:
        return "Saturday";
      case 7:
        return "Sunday";
      default:
        return "";
    }
  }
}
