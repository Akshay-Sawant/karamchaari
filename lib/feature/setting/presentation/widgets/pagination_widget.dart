import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final ValueChanged<int> onPageChanged;

  const PaginationWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        /// Previous Button
        OutlinedButton(
          onPressed: currentPage > 1
              ? () => onPageChanged(currentPage - 1)
              : null,
          child: const Text("Previous"),
        ),

        const SizedBox(width: 10),

        /// Page Numbers
        for (int i = 1; i <= totalPages; i++) ...[
          SizedBox(
            width: 40,
            height: 40,
            child: ElevatedButton(
              onPressed: () => onPageChanged(i),
              style: ElevatedButton.styleFrom(
                backgroundColor: currentPage == i
                    ? const Color(0xFF2563EB)
                    : Colors.white,
                foregroundColor:
                currentPage == i ? Colors.white : Colors.black,
                elevation: currentPage == i ? 2 : 0,
                side: BorderSide(
                  color: currentPage == i
                      ? const Color(0xFF2563EB)
                      : Colors.grey.shade300,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("$i"),
            ),
          ),
          const SizedBox(width: 8),
        ],

        /// Next Button
        OutlinedButton(
          onPressed: currentPage < totalPages
              ? () => onPageChanged(currentPage + 1)
              : null,
          child: const Text("Next"),
        ),
      ],
    );
  }
}