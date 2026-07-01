import 'package:flutter/material.dart';

class SubjectField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onEdit;

  const SubjectField({
    super.key,
    this.controller,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Subject",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 10),

        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText:
                  "Daily Work Report - 21 June 2026 - Akshay Sawant",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            SizedBox(
              height: 50,
              child: OutlinedButton.icon(
                onPressed: onEdit,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue.shade200,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                ),
                icon: const Icon(
                  Icons.edit_outlined,
                  color: Colors.blue,
                  size: 18,
                ),
                label: const Text(
                  "Edit Subject",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}