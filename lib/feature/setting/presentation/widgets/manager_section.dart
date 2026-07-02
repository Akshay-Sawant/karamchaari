import 'package:flutter/material.dart';

import 'common_setting_table.dart';

class ManagerSection extends StatefulWidget {
  const ManagerSection({super.key});

  @override
  State<ManagerSection> createState() => _ManagerSectionState();
}

class _ManagerSectionState extends State<ManagerSection> {
  final List<List<String>> managerData = [
    [
      "1",
      "Rahul Sharma",
      "Development",
      "rahul@company.com",
      "Active",
    ],
    [
      "2",
      "Priya Patel",
      "Testing",
      "priya@company.com",
      "Active",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return CommonSettingTable(
      title: "Reporting Managers",
      subtitle: "Manage reporting managers",
      addButtonText: "Add Manager",

      onAddPressed: () {
        // Next we'll create Add Manager Dialog
      },

      columns: const [
        "#",
        "Manager Name",
        "Department",
        "Email",
        "Status",
      ],

      rows: managerData,
    );
  }
}