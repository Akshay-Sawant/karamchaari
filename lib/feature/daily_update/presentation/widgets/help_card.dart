import 'package:flutter/material.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Left Side - Icon
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.support_agent,
              color: Colors.blue,
              size: 30,
            ),
          ),

          const SizedBox(width: 18),

          /// Right Side - Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Need Help?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "If you need any assistance , we're here to help",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  height: 42,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_outlined, size: 18),
                    label: const Text("Contact Support"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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