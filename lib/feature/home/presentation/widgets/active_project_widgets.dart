import 'package:flutter/material.dart';
import 'active_project_card.dart';

class ActiveProjectsWidget extends StatelessWidget {
  const ActiveProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder_copy_outlined,
                color: Colors.blue,
              ),
              const SizedBox(width: 8),

              const Text(
                "Active Projects",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(width: 8,),

              OutlinedButton(
                onPressed: () {},
                child: const Text("View All"),
              ),
            ],
          ),

          const SizedBox(height: 25),

          const ActiveProjectCard(
            projectName: "Electro Coat India",
            projectType: "Implementation module",
            progress: 0.60,
            iconColor: Colors.blue,
          ),

          const ActiveProjectCard(
            projectName: "Training Portal",
            projectType: "CRM module",
            progress: 0.35,
            iconColor: Colors.deepPurple,
          ),

          const ActiveProjectCard(
            projectName: "APS Website",
            projectType: "UI/UX improvements",
            progress: 0.20,
            iconColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}