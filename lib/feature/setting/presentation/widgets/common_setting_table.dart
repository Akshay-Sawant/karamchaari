import 'package:flutter/material.dart';

import 'add_button.dart';
import 'edit_button.dart';
import 'delete_button.dart';

class CommonSettingTable extends StatelessWidget {
  final String title;
  final String subtitle;
  final String addButtonText;
  final VoidCallback onAddPressed;

  final List<String> columns;
  final List<List<String>> rows;

  const CommonSettingTable({
    super.key,
    required this.title,
    required this.subtitle,
    required this.addButtonText,
    required this.onAddPressed,
    required this.columns,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              AddButton(
                text: addButtonText,
                onPressed: onAddPressed,
              ),
            ],
          ),

          const SizedBox(height: 25),

          /// Search & Filter
          Row(
            children: [
              SizedBox(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              const Spacer(),

              SizedBox(
                width: 170,
                child: DropdownButtonFormField<String>(
                  initialValue: "All Status",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "All Status",
                      child: Text("All Status"),
                    ),
                    DropdownMenuItem(
                      value: "Active",
                      child: Text("Active"),
                    ),
                    DropdownMenuItem(
                      value: "Inactive",
                      child: Text("Inactive"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// Table
          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(
                  const Color(0xffF3F6FB),
                ),

                columns: [
                  ...columns.map(
                        (column) => DataColumn(
                      label: Text(
                        column,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const DataColumn(
                    label: Text(
                      "Actions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],

                rows: rows.map((row) {
                  return DataRow(
                    cells: [
                      ...row.map(
                            (cell) => DataCell(Text(cell)),
                      ),

                      const DataCell(
                        Row(
                          children: [
                            EditButton(),
                            SizedBox(width: 8),
                            DeleteButton(),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}