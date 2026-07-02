import 'package:flutter/material.dart';

class HrSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;
  final VoidCallback? onFilter;

  const HrSearchBar({
    super.key,
    required this.controller,
    required this.onAdd,
    this.onFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Search Field
        Expanded(
          child: SizedBox(
            height: 48,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Search HRs...",
                hintStyle: const TextStyle(
                  color: Color(0xff9CA3AF),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff6B7280),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xffE5E7EB),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xff2563EB),
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 16),

        /// Filter Button
        SizedBox(
          height: 48,
          child: OutlinedButton.icon(
            onPressed: onFilter ?? () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              side: const BorderSide(
                color: Color(0xffD1D5DB),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 20,
              color: Color(0xff4F46E5),
            ),
            label: const Text(
              "Filter",
              style: TextStyle(
                color: Color(0xff4F46E5),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const SizedBox(width: 16),

        /// Add HR Button
        SizedBox(
          height: 48,
          child: ElevatedButton.icon(
            onPressed: onAdd,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff2563EB),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: const Icon(Icons.add, size: 20),
            label: const Text(
              "Add HR",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}