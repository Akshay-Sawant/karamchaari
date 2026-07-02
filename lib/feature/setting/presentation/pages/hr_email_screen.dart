import 'package:flutter/material.dart';

import '../widgets/search_filter_bar.dart';
import '../widgets/hr_email_table.dart';
import '../widgets/pagination_widget.dart';
import '../widgets/add_hr_dialog.dart';
import '../widgets/edit_hr_dialog.dart';
import '../widgets/delete_hr_dialog.dart';

class HrEmailScreen extends StatefulWidget {
  const HrEmailScreen({super.key});

  @override
  State<HrEmailScreen> createState() => _HrEmailScreenState();
}

class _HrEmailScreenState extends State<HrEmailScreen> {
  final TextEditingController searchController = TextEditingController();

  String selectedStatus = "All";
  int currentPage = 1;

  List<Map<String, dynamic>> hrList = [
    {
      "name": "John Doe",
      "email": "john@company.com",
      "department": "Human Resource",
      "status": "Active",
    },
    {
      "name": "Alice",
      "email": "alice@company.com",
      "department": "Human Resource",
      "status": "Inactive",
    },
    {
      "name": "Rahul Sharma",
      "email": "rahul@company.com",
      "department": "Recruitment",
      "status": "Active",
    },
  ];

  List<Map<String, dynamic>> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList = List.from(hrList);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterData(String value) {
    setState(() {
      filteredList = hrList.where((hr) {
        final matchesSearch =
            hr["name"].toLowerCase().contains(value.toLowerCase()) ||
                hr["email"].toLowerCase().contains(value.toLowerCase());

        final matchesStatus = selectedStatus == "All"
            ? true
            : hr["status"] == selectedStatus;

        return matchesSearch && matchesStatus;
      }).toList();
    });
  }

  void _filterStatus(String? status) {
    if (status == null) return;

    setState(() {
      selectedStatus = status;
    });

    _filterData(searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "HR Email IDs",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            "Manage HR email addresses",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          SearchFilterBar(
            searchController: searchController,
            selectedStatus: selectedStatus,
            onSearchChanged: _filterData,
            onStatusChanged: _filterStatus,
            addButtonText: "Add HR",
            onAddPressed: _showAddDialog,
          ),

          const SizedBox(height: 20),

          Expanded(
            child: HrEmailTable(
              hrList: filteredList,
              onEdit: _showEditDialog,
              onDelete: _showDeleteDialog,
            ),
          ),

          const SizedBox(height: 20),

          PaginationWidget(
            currentPage: currentPage,
            totalPages: 5,
            onPageChanged: (page) {
              setState(() {
                currentPage = page;
              });
            },
          ),
        ],
      ),
    );
  }

  // ===== These methods will be added in Part 2 =====

  //===================== ADD HR =====================

  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (_) => AddHrDialog(
        onSave: (data) {
          setState(() {
            hrList.add({
              "name": data[0],
              "email": data[1],
              "department": data[2],
              "status": data[3],
            });

            filteredList = List.from(hrList);
          });
        },
      ),
    );
  }

//===================== EDIT HR =====================

  void _showEditDialog(int index) {
    final hr = filteredList[index];

    showDialog(
      context: context,
      builder: (_) => EditHrDialog(
        hr: hr,
        onSave: (data) {
          setState(() {
            final originalIndex = hrList.indexOf(hr);

            hrList[originalIndex] = {
              "name": data[0],
              "email": data[1],
              "department": data[2],
              "status": data[3],
            };

            filteredList = List.from(hrList);
          });
        },
      ),
    );
  }

//===================== DELETE HR =====================

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (_) => DeleteHrDialog(
        onDelete: () {
          setState(() {
            final hr = filteredList[index];

            hrList.remove(hr);

            filteredList = List.from(hrList);
          });
        },
      ),
    );
  }
}