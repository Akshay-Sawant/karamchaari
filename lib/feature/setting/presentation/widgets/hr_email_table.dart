import 'package:flutter/material.dart';

class HrEmailTable extends StatelessWidget {
  final List<Map<String, dynamic>> hrList;
  final Function(int) onEdit;
  final Function(int) onDelete;

  const HrEmailTable({
    super.key,
    required this.hrList,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowHeight: 55,
          dataRowMinHeight: 60,
          dataRowMaxHeight: 60,
          columnSpacing: 40,
          headingRowColor:
          MaterialStateProperty.all(const Color(0xffF5F7FB)),
          columns: const [
            DataColumn(
              label: Text(
                "HR Name",
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
            hrList.length,
                (index) {
              final hr = hrList[index];

              return DataRow(
                cells: [
                  DataCell(Text(hr["name"])),

                  DataCell(Text(hr["email"])),

                  DataCell(Text(hr["department"])),

                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: hr["status"] == "Active"
                            ? Colors.green.shade100
                            : Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        hr["status"],
                        style: TextStyle(
                          color: hr["status"] == "Active"
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  DataCell(
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => onEdit(index),
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          onPressed: () => onDelete(index),
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
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