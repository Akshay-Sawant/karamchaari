import 'package:flutter/material.dart';
import 'monthly_summary_widget.dart';

class MonthlySummaryCard extends StatelessWidget {
  const MonthlySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Summary (This Month)",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: MonthlySummaryWidget(
                    icon: Icons.calendar_month,
                    title: "Total Days",
                    value: "21",
                    color: Colors.blue,
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: MonthlySummaryWidget(
                    icon: Icons.check_circle,
                    title: "Present Days",
                    value: "19",
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: Row(
              children: [

                Expanded(
                  child: MonthlySummaryWidget(
                    icon: Icons.access_time,
                    title: "Half Days",
                    value: "1",
                    color: Colors.orange,
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: MonthlySummaryWidget(
                    icon: Icons.timer,
                    title: "Total Hours",
                    value: "172h 30m",
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}