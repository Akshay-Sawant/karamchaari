import 'package:flutter/material.dart';
import 'package:karamchaari/feature/setting/presentation/widgets/common_setting_table.dart';

import 'add_button.dart';
import 'edit_button.dart';
import 'delete_button.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   CommonSettingTable(
      title: "Projects",
      subtitle: "Manage projects",
      addButtonText: "Add Project",
      onAddPressed: () {

      },

      columns: const [
        "#",
        "Project",
        "Code",
        "Members",
        "Status",
      ],

      rows: const [
        [
          "1",
          "HRMS",
          "HR001",
          "15",
          "Active",
        ],
      ],
    );
  }
}