import 'package:flutter/material.dart';

class UpdateTipsCard extends StatelessWidget {
  const UpdateTipsCard({super.key});

  final List<String> tips = const [
    "Be specific about what you worked on",
    "Mention key achievements",
    "Share any challenges you faced",
    "Keep it concise and professional",
  ];

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
              Icon(Icons.lightbulb_outline,
                  color: Colors.deepPurple),
              SizedBox(width: 10),
              Text(
                "Update Tips",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),

          const SizedBox(height: 20),

          ...tips.map(
                (tip) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.check,
                      color: Colors.indigo,
                      size: 18),
                  const SizedBox(width: 10),
                  Expanded(child: Text(tip)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}