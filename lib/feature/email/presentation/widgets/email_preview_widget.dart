import 'package:flutter/material.dart';

class EmailPreviewWidget extends StatelessWidget {
  const EmailPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            children: [
              const Icon(
                Icons.mail_outline,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Text(
                "Email Preview",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Chip(
                backgroundColor: Colors.green.shade50,
                label: const Text(
                  "Ready",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),

          const Divider(),

          const SizedBox(height: 20),

          /// From
          _emailRow(
            "From",
            "Akshay Sawant <akshay.sawant@aspire.com>",
          ),

          const SizedBox(height: 15),

          /// To
          _emailRow(
            "To",
            "Rohit Mehta, Priya Sharma",
          ),

          const SizedBox(height: 15),

          /// Subject
          _emailRow(
            "Subject",
            "Daily Work Report - 21 June 2026",
          ),

          const SizedBox(height: 25),

          const Divider(),

          const SizedBox(height: 25),

          const Text(
            "Dear Sir/Madam,",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Please find below my daily work update for today.",
            style: TextStyle(
              height: 1.7,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Work Summary",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          _bullet(
            "Completed Daily Update module UI.",
          ),

          _bullet(
            "Implemented Attendance Form.",
          ),

          _bullet(
            "Fixed responsive layout issues.",
          ),

          _bullet(
            "Integrated Email Preview screen.",
          ),

          const SizedBox(height: 25),

          const Text(
            "Tomorrow's Plan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Continue API integration and testing of Email Preview module.",
            style: TextStyle(
              height: 1.7,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Blockers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "No blockers today.",
            style: TextStyle(
              height: 1.7,
            ),
          ),

          const SizedBox(height: 35),

          const Divider(),

          const SizedBox(height: 20),

          const Text(
            "Thanks & Regards,",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text("Akshay Sawant"),

          const SizedBox(height: 4),

          Text(
            "Software Developer Intern",
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            "Aspire SoftServ Pvt. Ltd.",
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailRow(String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 70,
          child: Text(
            "$title :",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Text(value),
        ),
      ],
    );
  }

  Widget _bullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "•",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}