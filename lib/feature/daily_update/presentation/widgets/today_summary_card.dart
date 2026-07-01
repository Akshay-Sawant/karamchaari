import 'package:flutter/material.dart';

class TodaySummaryCard extends StatelessWidget {
  const TodaySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.description_outlined,
                  color: Color(0xff7C4DFF)),
              SizedBox(width: 10),
              Text(
                "Today's Summary",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _buildRow("Selected Project", "Electro Coat India"),
          const Divider(),

          _buildRow("Work Date", "21 June 2026"),
          const Divider(),

          _buildRow("Last Updated", "--"),
        ],
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.grey),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}