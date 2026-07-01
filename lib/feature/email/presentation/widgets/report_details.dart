import 'package:flutter/material.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          const Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: Colors.blue,
                size: 24,
              ),
              SizedBox(width: 10),
              Text(
                "Report Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _detailRow(
            Icons.calendar_today_outlined,
            "Report Date",
            "21 June 2026",
          ),

          const Divider(),

          _detailRow(
            Icons.folder_outlined,
            "Project",
            "Electro Coat India",
          ),

          const Divider(),

          _detailRow(
            Icons.person_outline,
            "Reporting Manager",
            "John Smith",
          ),

          const Divider(),

          _detailRow(
            Icons.badge_outlined,
            "HR",
            "Priya Sharma",
          ),

          const Divider(),

          _detailRow(
            Icons.check_circle_outline,
            "Status",
            "Ready to Send",
          ),
        ],
      ),
    );
  }

  Widget _detailRow(
      IconData icon,
      String title,
      String value,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.blueGrey,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}