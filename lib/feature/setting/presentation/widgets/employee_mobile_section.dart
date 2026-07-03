import 'package:flutter/material.dart';

import 'add_button.dart';
import 'edit_button.dart';
import 'delete_button.dart';

class EmployeeMobileSection extends StatelessWidget {
  const EmployeeMobileSection({super.key});

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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Employee Information",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Manage employee mobile numbers",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              AddButton(
                text: "Add Employee",
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
                    hintText: "Search employee...",
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

          const SizedBox(height: 25),

          /// Employee Table
          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                headingRowColor:
                WidgetStateProperty.all(const Color(0xffF5F7FB)),
                columnSpacing: 30,
                columns: const [
                  DataColumn(label: Text("#")),
                  DataColumn(label: Text("Employee Name")),
                  DataColumn(label: Text("Employee ID")),
                  DataColumn(label: Text("Mobile Number")),
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
                        Text("Employee ${index + 1}"),
                      ),

                      DataCell(
                        Text("EMP00${index + 1}"),
                      ),

                      DataCell(
                        Text("98765432${10 + index}"),
                      ),

                      const DataCell(
                        Text("Development"),
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
                              fontWeight: FontWeight.w600,
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
                    child: const Text("3"),
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