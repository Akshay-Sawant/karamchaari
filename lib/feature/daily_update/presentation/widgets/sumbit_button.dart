import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onSaveDraft;
  final VoidCallback? onSubmit;

  const SubmitButton({
    super.key,
    this.onSaveDraft,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        /// Save Draft Button
        OutlinedButton(
          onPressed: onSaveDraft,
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(130, 48),
            side: BorderSide(
              color: Colors.grey.shade400,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            "Save Draft",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(width: 16),

        /// Submit Button
        ElevatedButton.icon(
          onPressed: onSubmit,
          icon: const Icon(
            Icons.send,
            color: Colors.white,
            size: 18,
          ),
          label: const Text(
            "Submit Update",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(170, 48),
            backgroundColor: Colors.blue,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}