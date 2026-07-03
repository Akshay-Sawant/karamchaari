import 'package:flutter/material.dart';
import 'active_project_card.dart';

class ActiveProjectsWidget extends StatelessWidget {
  const ActiveProjectsWidget({super.key});

  final List<Map<String, dynamic>> projects = const [
    {
      "name": "Electro Coat India",
      "type": "Implementation module",
      "progress": 0.60,
      "color": Colors.blue,
    },
    {
      "name": "Training Portal",
      "type": "CRM module",
      "progress": 0.35,
      "color": Colors.deepPurple,
    },
    {
      "name": "APS Website",
      "type": "UI/UX improvements",
      "progress": 0.20,
      "color": Colors.teal,
    },
  ];

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
        
                const Spacer(),
        
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("View All"),
                ),
              ],
            ),
        
            const SizedBox(height: 25),

            /*...projects.map((project) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ActiveProjectCard(
                  projectName: project["name"],
                  projectType: project["type"],
                  progress: project["progress"],
                  iconColor: project["color"],
                ),
              );
            }).toList(),*/
        
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