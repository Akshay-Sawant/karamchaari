import 'package:flutter/material.dart';

class ReportingManagerTable extends StatelessWidget {
  final List<Map<String, dynamic>> managerList;
  final Function(int) onEdit;
  final Function(int) onDelete;

  const ReportingManagerTable({
    super.key,
    required this.managerList,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowHeight: 55,
          dataRowMinHeight: 60,
          dataRowMaxHeight: 60,
          columnSpacing: 35,
          headingRowColor:
          WidgetStateProperty.all(const Color(0xffF5F7FB)),
          border: TableBorder(
            horizontalInside:
            BorderSide(color: Colors.grey.shade200),
          ),

          columns: const [
            DataColumn(
              label: Text(
                "Manager Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Employee ID",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Department",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Employees",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                "Actions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],

          rows: List.generate(
            managerList.length,
                (index) {
              final manager = managerList[index];

              return DataRow(
                cells: [

                  /// Manager Name
                  DataCell(
                    Text(manager["name"]),
                  ),

                  /// Employee ID
                  DataCell(
                    Text(manager["employeeId"]),
                  ),

                  /// Email
                  DataCell(
                    Text(manager["email"]),
                  ),

                  /// Department
                  DataCell(
                    Text(manager["department"]),
                  ),

                  /// Employees
                  DataCell(
                    Text(manager["employees"].toString()),
                  ),

                  /// Status
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: manager["status"] == "Active"
                            ? Colors.green.shade100
                            : Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        manager["status"],
                        style: TextStyle(
                          color: manager["status"] == "Active"
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  /// Actions
                  DataCell(
                    Row(
                      children: [

                        IconButton(
                          tooltip: "Edit",
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                          onPressed: () => onEdit(index),
                        ),

                        IconButton(
                          tooltip: "Delete",
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () => onDelete(index),
                        ),

                        PopupMenuButton<String>(
                          itemBuilder: (context) => const [

                            PopupMenuItem(
                              value: "view",
                              child: Text("View"),
                            ),

                            PopupMenuItem(
                              value: "edit",
                              child: Text("Edit"),
                            ),

                            PopupMenuItem(
                              value: "delete",
                              child: Text("Delete"),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == "edit") {
                              onEdit(index);
                            } else if (value == "delete") {
                              onDelete(index);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}