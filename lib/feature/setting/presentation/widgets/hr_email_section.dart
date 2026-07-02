import 'package:flutter/material.dart';
import 'package:karamchaari/feature/setting/presentation/widgets/add_hr_dialog.dart';
import 'common_setting_table.dart';

class HrEmailSection extends StatefulWidget {
  const HrEmailSection({super.key});

  @override
  State<HrEmailSection> createState() => _HrEmailSectionState();
}

class _HrEmailSectionState extends State<HrEmailSection> {

  final List<List<String>> hrData = [
    [
      "1",
      "John Doe",
      "john@company.com",
      "Human Resource",
      "Active",
    ],
    [
      "2",
      "Alice",
      "alice@company.com",
      "Human Resource",
      "Active",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return CommonSettingTable(
      title: "HR Email IDs",
      subtitle: "Manage HR email addresses",
      addButtonText: "Add HR",

      onAddPressed: () {
        showDialog(
          context: context,
          builder: (_) => AddHrDialog(
            onSave: (data) {
              setState(() {
                hrData.add([
                  (hrData.length + 1).toString(),
                  data[0],
                  data[1],
                  data[2],
                  data[3],
                ]);
              });
            },
          ),
        );
      },
      columns: const [
        "#",
        "HR Name",
        "Email",
        "Department",
        "Status",
      ],

      rows: hrData,
    );
  }

  void _showAddHrDialog() {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final departmentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add HR"),

          content: SizedBox(
            width: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "HR Name",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: departmentController,
                  decoration: const InputDecoration(
                    labelText: "Department",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),

          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            ElevatedButton(
              onPressed: () {

                setState(() {

                  hrData.add([
                    (hrData.length + 1).toString(),
                    nameController.text,
                    emailController.text,
                    departmentController.text,
                    "Active",
                  ]);

                });

                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }
}