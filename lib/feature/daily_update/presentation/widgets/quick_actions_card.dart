import 'package:flutter/material.dart';

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({super.key});

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
          const Text(
            "Quick Actions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _actionTile(
            Icons.history,
            Colors.teal,
            "View Past Updates",
            "Review your previous work updates",
          ),

          const SizedBox(height: 12),

          _actionTile(
            Icons.copy,
            Colors.green,
            "Copy Previous Update",
            "Use yesterday's update as a template",
          ),

          const SizedBox(height: 12),

          _actionTile(
            Icons.edit_document,
            Colors.blue,
            "Drafts",
            "Continue with your saved drafts",
          ),
        ],
      ),
    );
  }

  Widget _actionTile(
      IconData icon,
      Color color,
      String title,
      String subtitle,
      ) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(.15),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16)
        ],
      ),
    );
  }
}