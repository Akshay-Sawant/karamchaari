import 'package:flutter/material.dart';
import 'package:karamchaari/feature/email/presentation/widgets/send_email_button.dart';

class EmailActionButtons extends StatelessWidget {
  const EmailActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        /// Go Back Button
        OutlinedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text("Go Back"),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(120, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        const SizedBox(width: 16),

        /// Save Draft Button
        OutlinedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Draft saved successfully."),
              ),
            );
          },
          icon: const Icon(Icons.save_outlined),
          label: const Text("Save Draft"),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(140, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        const SizedBox(width: 16),

        /// Send Report Button
        SendEmailButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Email sent successfully."),
              ),
            );
          },
        ),
      ],
    );
  }
}