import 'package:flutter/material.dart';

class ManagerSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const ManagerSearchBar({
    super.key,
    required this.controller,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Search Field
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Search managers...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        /// Filter Button
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.filter_list),
          label: const Text("Filter"),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(110, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        const SizedBox(width: 12),

        /// Add Manager Button
        ElevatedButton.icon(
          onPressed: onAdd,
          icon: const Icon(Icons.add),
          label: const Text("Add Manager"),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 45),
            backgroundColor: const Color(0xFF2563EB),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}