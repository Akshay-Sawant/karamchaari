import 'package:flutter/material.dart';

class SearchFilterBar extends StatelessWidget {
  final TextEditingController searchController;
  final ValueChanged<String>? onSearchChanged;
  final String selectedStatus;
  final ValueChanged<String?>? onStatusChanged;
  final VoidCallback onAddPressed;
  final String addButtonText;

  const SearchFilterBar({
    super.key,
    required this.searchController,
    this.onSearchChanged,
    required this.selectedStatus,
    this.onStatusChanged,
    required this.onAddPressed,
    required this.addButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Search Field
        Expanded(
          flex: 3,
          child: SizedBox(
            height: 45,
            child: TextField(
              controller: searchController,
              onChanged: onSearchChanged,
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 15),

        /// Status Dropdown
        SizedBox(
          width: 180,
          height: 45,
          child: DropdownButtonFormField<String>(
            initialValue: selectedStatus,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: "All",
                child: Text("All"),
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
            onChanged: onStatusChanged,
          ),
        ),

        const SizedBox(width: 15),

        /// Add Button
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            onPressed: onAddPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2563EB),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            ),
            icon: const Icon(Icons.add, size: 18),
            label: Text(addButtonText),
          ),
        ),
      ],
    );
  }
}