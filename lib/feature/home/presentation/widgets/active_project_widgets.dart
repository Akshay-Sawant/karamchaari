import 'package:flutter/material.dart';
import 'active_project_card.dart';

class ActiveProjectsWidget extends StatelessWidget {
  const ActiveProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder_copy_outlined,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Active Projects",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("View All"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const ActiveProjectCard(
            projectName: "Electro Coat India",
            projectType: "Implementation Module",
            progress: 0.60,
            iconColor: Colors.blue,
          ),

          SizedBox(height: 15),

          const ActiveProjectCard(
            projectName: "Training Portal",
            projectType: "CRM Module",
            progress: 0.35,
            iconColor: Colors.deepPurple,
          ),

          SizedBox(height: 15),

          const ActiveProjectCard(
            projectName: "APS Website",
            projectType: "UI/UX Improvements",
            progress: 0.20,
            iconColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}