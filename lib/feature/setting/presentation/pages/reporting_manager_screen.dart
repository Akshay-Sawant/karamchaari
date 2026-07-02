import 'package:flutter/material.dart';

import '../widgets/manager_stats_card.dart';
import '../widgets/manager_search_bar.dart';
import '../widgets/reporting_manager_table.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/add_manager_dialog.dart';
import '../widgets/edit_manager_dialog.dart';
import '../widgets/delete_manager_dialog.dart';

class ReportingManagerScreen extends StatefulWidget {
  const ReportingManagerScreen({super.key});

  @override
  State<ReportingManagerScreen> createState() =>
      _ReportingManagerScreenState();
}

class _ReportingManagerScreenState extends State<ReportingManagerScreen> {
  final TextEditingController searchController = TextEditingController();

  int currentPage = 1;

  List<Map<String, dynamic>> managerList = [
    {
      "name": "Rohit Mehta",
      "employeeId": "EMP002",
      "email": "rohit.mehta@aspire.com",
      "department": "Product Development",
      "employees": 28,
      "status": "Active",
    },
    {
      "name": "Priya Sharma",
      "employeeId": "EMP003",
      "email": "priya.sharma@aspire.com",
      "department": "Human Resources",
      "employees": 25,
      "status": "Active",
    },
    {
      "name": "Vikram Singh",
      "employeeId": "EMP004",
      "email": "vikram.singh@aspire.com",
      "department": "Technology",
      "employees": 32,
      "status": "Active",
    },
    {
      "name": "Neha Verma",
      "employeeId": "EMP005",
      "email": "neha.verma@aspire.com",
      "department": "Finance",
      "employees": 18,
      "status": "Inactive",
    },
    {
      "name": "Arjun Patel",
      "employeeId": "EMP006",
      "email": "arjun.patel@aspire.com",
      "department": "Marketing",
      "employees": 22,
      "status": "Active",
    },
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void addManager(List<String> data) {
    setState(() {
      managerList.add({
        "name": data[0],
        "employeeId": data[1],
        "email": data[2],
        "department": data[3],
        "employees": int.parse(data[4]),
        "status": data[5],
      });
    });
  }

  void editManager(int index) {
    showDialog(
      context: context,
      builder: (_) => EditManagerDialog(
        manager: managerList[index],
        onSave: (updatedManager) {
          setState(() {
            managerList[index] = updatedManager;
          });
        },
      ),
    );
  }

  void deleteManager(int index) {
    showDialog(
      context: context,
      builder: (_) => DeleteManagerDialog(
        managerName: managerList[index]["name"],
        onDelete: () {
          setState(() {
            managerList.removeAt(index);
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "${managerList[index]['name']} deleted successfully",
              ),
              backgroundColor: Colors.red,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Reporting Managers",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Manage reporting managers",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            /// Top Cards
            const Row(
              children: [

                Expanded(
                  child: ManagerStatsCard(
                    title: "Total Reporting Managers",
                    value: "12",
                    subtitle: "Active reporting managers",
                    icon: Icons.groups,
                    color: Colors.blue,
                  ),
                ),

                SizedBox(width: 16),

                Expanded(
                  child: ManagerStatsCard(
                    title: "Total Employees",
                    value: "156",
                    subtitle: "Reporting to managers",
                    icon: Icons.people,
                    color: Colors.green,
                  ),
                ),

                SizedBox(width: 16),

                Expanded(
                  child: ManagerStatsCard(
                    title: "Departments Covered",
                    value: "8",
                    subtitle: "Across organization",
                    icon: Icons.account_tree,
                    color: Colors.purple,
                  ),
                ),

                SizedBox(width: 16),

                Expanded(
                  child: ManagerStatsCard(
                    title: "Active Managers",
                    value: "11",
                    subtitle: "Currently Active",
                    icon: Icons.person,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  children: [

                    ManagerSearchBar(
                      controller: searchController,
                      onAdd: () {
                        showDialog(
                          context: context,
                          builder: (_) => AddManagerDialog(
                            onSave: addManager,
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    Expanded(
                      child: ReportingManagerTable(
                        managerList: managerList,
                        onEdit: editManager,
                        onDelete: deleteManager,
                      ),
                    ),

                    const SizedBox(height: 20),

                    PaginationWidget(
                      currentPage: currentPage,
                      totalPages: 3,
                      onPageChanged: (page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}