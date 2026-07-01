import 'package:flutter/material.dart';

class ProjectDropdown extends StatefulWidget {
  const ProjectDropdown({super.key});

  @override
  State<ProjectDropdown> createState() => _ProjectDropdownState();
}

class _ProjectDropdownState extends State<ProjectDropdown> {
  String? selectedProject = "Electro Coat India";

  final List<String> projects = [
    "Electro Coat India",
    "Training Portal",
    "APS Website",
    "HR Management",
    "CRM Module",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(text: "Project"),
              TextSpan(
                text: " *",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        Container(
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedProject,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),

              items: projects.map((project) {
                return DropdownMenuItem(
                  value: project,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.folder_copy_outlined,
                        color: Colors.indigo,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        project,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedProject = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}