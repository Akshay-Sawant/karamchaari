import 'package:flutter/material.dart';

import '../widgets/hr_stats_card.dart';
import '../widgets/hr_search_bar.dart';
import '../widgets/reporting_hr_table.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/add_hr_dialog.dart';
import '../widgets/edit_hr_dialog.dart';
import '../widgets/delete_hr_dialog.dart';

class ReportingHrScreen extends StatefulWidget {
  const ReportingHrScreen({super.key});

  @override
  State<ReportingHrScreen> createState() => _ReportingHrScreenState();
}

class _ReportingHrScreenState extends State<ReportingHrScreen> {
  final TextEditingController searchController = TextEditingController();

  int currentPage = 1;

  List<Map<String, dynamic>> hrList = [];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void addHr(List<String> data) {
    setState(() {
      hrList.add({
        "name": data[0],
        "email": data[1],
        "department": data[2],
        "status": data[3],
      });
    });
  }

  void editHr(int index) {
    showDialog(
      context: context,
      builder: (_) => EditHrDialog(
        hr: hrList[index],
        onSave: (updatedData) {
          setState(() {
            hrList[index] = {
              "name": updatedData[0],
              "email": updatedData[1],
              "department": updatedData[2],
              "status": updatedData[3],
            };
          });
        },
      ),
    );
  }

  void deleteHr(int index) {
    showDialog(
      context: context,
      builder: (_) => DeleteHrDialog(
        onDelete: () {
          setState(() {
            hrList.removeAt(index);
          });
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

            const SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    child: HrStatsCard(
                      title: "Total Reporting HRs",
                      value: "6",
                      subtitle: "Active HRs",
                      icon: Icons.groups,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: HrStatsCard(
                      title: "Total Employees",
                      value: "156",
                      subtitle: "Reporting to HRs",
                      icon: Icons.people,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: HrStatsCard(
                      title: "Departments",
                      value: "5",
                      subtitle: "HR Departments",
                      icon: Icons.account_tree,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: HrStatsCard(
                      title: "Active HRs",
                      value: "5",
                      subtitle: "Currently Active",
                      icon: Icons.person,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    HrSearchBar(
                      controller: searchController,
                      onAdd: () {
                        showDialog(
                          context: context,
                          builder: (_) => AddHrDialog(
                            onSave: addHr,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ReportingHrTable(
                        hrList: hrList,
                        onEdit: editHr,
                        onDelete: deleteHr,
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
