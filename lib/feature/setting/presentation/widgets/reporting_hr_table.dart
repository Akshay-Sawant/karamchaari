import 'package:flutter/material.dart';

class ReportingHrTable extends StatelessWidget {
  final List<Map<String, dynamic>> hrList;
  final Function(int) onEdit;
  final Function(int) onDelete;

  const ReportingHrTable({
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
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffE5E7EB)),
      ),
      child: Column(
        children: [
          /// Table Header
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Color(0xffF8FAFC),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "HR Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Employee ID",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Department",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Employees",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Status",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff475569),
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Actions",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff475569),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Table Data
          Expanded(
            child: hrList.isEmpty
                ? const Center(
              child: Text(
                "No Reporting HR Found",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
                : ListView.separated(
              itemCount: hrList.length,
              separatorBuilder: (_, __) =>
                  Divider(height: 1, color: Colors.grey.shade200),
              itemBuilder: (context, index) {
                final hr = hrList[index];

                final bool active = hr["status"] == "Active";

                return SizedBox(
                  height: 72,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        /// Name
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor:
                                Colors.blue.shade100,
                                child: Text(
                                  hr["name"]
                                      .toString()
                                      .substring(0, 1)
                                      .toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  hr["name"],
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 3,
                          child: Text(
                            hr["email"],
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        /// Department
                        Expanded(
                          flex: 3,
                          child: Text(
                            hr["department"],
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),


                        /// Status
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: active
                                    ? Colors.green.shade50
                                    : Colors.red.shade50,
                                borderRadius:
                                BorderRadius.circular(20),
                              ),
                              child: Text(
                                hr["status"],
                                style: TextStyle(
                                  color: active
                                      ? Colors.green
                                      : Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),

                        /// Actions
                        Expanded(
                          child: PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert),
                            onSelected: (value) {
                              if (value == "edit") {
                                onEdit(index);
                              } else if (value == "delete") {
                                onDelete(index);
                              }
                            },
                            itemBuilder: (context) => const [
                              PopupMenuItem(
                                value: "edit",
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_outlined),
                                    SizedBox(width: 10),
                                    Text("Edit"),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: "delete",
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}