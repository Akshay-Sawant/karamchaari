import 'package:flutter/material.dart';

class DashboardSummaryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String subtitle;
  final Color iconColor;
  final Color valueColor;

  const DashboardSummaryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.iconColor,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,

      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade200)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 22,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: valueColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
