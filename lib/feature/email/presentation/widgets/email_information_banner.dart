import 'package:flutter/material.dart';

class EmailInformationBanner extends StatelessWidget {
  const EmailInformationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F9FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.blue.shade100,
        ),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.email_outlined,
            color: Colors.blue,
            size: 30,
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Preview",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  "Review your email carefully before sending. "
                      "This report will be delivered to your Reporting Manager and HR.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
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