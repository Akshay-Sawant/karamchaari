import 'package:flutter/material.dart';

import 'add_button.dart';
import 'edit_button.dart';
import 'delete_button.dart';

class ReportingHrSection extends StatelessWidget {
  const ReportingHrSection({super.key});

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
                children: const [
                  Text(
                    "Reporting HR",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Manage reporting HR information",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const AddButton(
                text: "Add HR",
              ),
            ],
          ),

          const SizedBox(height: 30),

          /// Search & Filter
          Row(
            children: [
              SizedBox(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search HR...",
                    prefixIcon: Icon(Icons.search),
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
                  value: "All Status",
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

          const SizedBox(height: 25),

          /// Table
          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                headingRowColor:
                WidgetStateProperty.all(const Color(0xffF5F7FB)),
                columnSpacing: 35,
                columns: const [
                  DataColumn(label: Text("#")),
                  DataColumn(label: Text("HR Name")),
                  DataColumn(label: Text("Email")),
                  DataColumn(label: Text("Department")),
                  DataColumn(label: Text("Status")),
                  DataColumn(label: Text("Actions")),
                ],
                rows: List.generate(
                  8,
                      (index) => DataRow(
                    cells: [
                      DataCell(Text("${index + 1}")),

                      DataCell(
                        Text("HR ${index + 1}"),
                      ),

                      DataCell(
                        Text("hr${index + 1}@company.com"),
                      ),

                      const DataCell(
                        Text("Human Resources"),
                      ),

                      DataCell(
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Active",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),

                      DataCell(
                        Row(
                          children: [
                            EditButton(
                              onPressed: () {},
                            ),
                            DeleteButton(
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// Pagination
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Showing 1 to 8 of 24 entries",
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Icon(Icons.chevron_left),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("1"),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("2"),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}