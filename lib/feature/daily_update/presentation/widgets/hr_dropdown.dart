import 'package:flutter/material.dart';

class HrDropdown extends StatefulWidget {
  const HrDropdown({super.key});

  @override
  State<HrDropdown> createState() => _HrDropdownState();
}

class _HrDropdownState extends State<HrDropdown> {
  String? selectedHr = "Priya Sharma";

  final List<String> hrList = [
    "Priya Sharma",
    "Anjali Patil",
    "Neha Kulkarni",
    "Pooja Joshi",
    "Riya Deshmukh",
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
              TextSpan(text: "HR"),
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
              value: selectedHr,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),

              items: hrList.map((hr) {
                return DropdownMenuItem<String>(
                  value: hr,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.badge_outlined,
                        color: Colors.teal,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          hr,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedHr = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}