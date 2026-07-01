import 'package:flutter/material.dart';

class ManagerDropdown extends StatefulWidget {
  const ManagerDropdown({super.key});

  @override
  State<ManagerDropdown> createState() => _ManagerDropdownState();
}

class _ManagerDropdownState extends State<ManagerDropdown> {
  String? selectedManager = "John Smith";

  final List<String> managers = [
    "John Smith",
    "Amit Sharma",
    "Rahul Patil",
    "Sneha Kulkarni",
    "Priya Desai",
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
              TextSpan(text: "Manager"),
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
              value: selectedManager,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),

              items: managers.map((manager) {
                return DropdownMenuItem<String>(
                  value: manager,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        color: Colors.deepPurple,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        manager,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedManager = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}